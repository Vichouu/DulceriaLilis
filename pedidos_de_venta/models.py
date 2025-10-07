from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone
from django.core.exceptions import ValidationError

def validar_rut(valor):
    rut = valor.upper().replace(".", "").replace("-", "")
    if len(rut) < 2 or not rut[:-1].isdigit():
        raise ValidationError("Formato de RUT inválido.")
    cuerpo, dv = rut[:-1], rut[-1]
    suma, mult = 0, 2
    for d in reversed(cuerpo):
        suma += int(d) * mult
        mult = 2 if mult == 7 else mult + 1
    resto = 11 - (suma % 11)
    dv_esp = "0" if resto == 11 else "K" if resto == 10 else str(resto)
    if dv_esp != dv:
        raise ValidationError("RUT inválido.")


class Cliente(models.Model):
    nombre = models.CharField(max_length=120)
    rut = models.CharField(max_length=12, blank=True, validators=[validar_rut])
    correo = models.EmailField(blank=True)
    telefono = models.CharField(max_length=20, blank=True)

    def __str__(self):
        return f"{self.nombre} ({self.rut})"

ESTADOS = (
    ('PEN', 'Pendiente'),
    ('PRE', 'En preparación'),
    ('COM', 'Completado'),
    ('CAN', 'Cancelado'),
)

class Pedido(models.Model):
    cliente = models.ForeignKey('pedidos_de_venta.Cliente', on_delete=models.PROTECT, related_name='pedidos')
    vendedor = models.ForeignKey(User, on_delete=models.PROTECT, related_name='pedidos_vendedor')
    fecha = models.DateTimeField(default=timezone.now)
    estado = models.CharField(max_length=3, choices=ESTADOS, default='PEN')
    observaciones = models.TextField(blank=True)

    class Meta:
        db_table = 'pedido'
        ordering = ['-fecha']

    def __str__(self):
        return f'Pedido #{self.id} - {self.cliente}'

    @property
    def total(self):
        return sum((it.subtotal for it in self.items.all()), 0)

class PedidoItem(models.Model):
    pedido = models.ForeignKey(Pedido, on_delete=models.CASCADE, related_name='items')
    producto = models.ForeignKey('inventario.Producto', on_delete=models.PROTECT, related_name='pedido_items')
    cantidad = models.PositiveIntegerField(default=1)
    precio_unitario = models.DecimalField(max_digits=12, decimal_places=2)

    class Meta:
        db_table = 'pedido_item'

    def __str__(self):
        return f'{self.producto} x {self.cantidad}'

    @property
    def subtotal(self):
        return self.cantidad * self.precio_unitario
