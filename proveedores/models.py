from django.db import models
from django.core.exceptions import ValidationError
import re

# VALIDADOR DE RUT
def validar_rut(value):
    if not re.match(r'^\d{1,2}\.\d{3}\.\d{3}-[\dkK]$', value):
        raise ValidationError("Formato de RUT inválido. Ejemplo: 12.345.678-9")


# MODELOS
class Rubro(models.Model):
    nombre = models.CharField(max_length=100, unique=True)
    descripcion = models.TextField(blank=True)

    class Meta:
        verbose_name = "Rubro"
        verbose_name_plural = "Rubros"
        ordering = ('nombre',)

    def __str__(self):
        return self.nombre

class Proveedor(models.Model):
    rut = models.CharField("RUT", max_length=15, unique=True, validators=[validar_rut])
    nombre = models.CharField("Razón Social", max_length=150)
    rubro = models.ForeignKey(Rubro, on_delete=models.PROTECT, related_name='proveedores')
    email = models.EmailField(blank=True)
    telefono = models.CharField(max_length=30, blank=True)
    direccion = models.CharField(max_length=200, blank=True)
    ciudad = models.CharField(max_length=100, blank=True)
    activo = models.BooleanField(default=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    fecha_modificacion = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name = "Proveedor"
        verbose_name_plural = "Proveedores"
        ordering = ('nombre',)

    def __str__(self):
        return f"{self.nombre} ({self.rut})"

class Contacto(models.Model):
    proveedor = models.ForeignKey(Proveedor, on_delete=models.CASCADE, related_name='contactos')
    nombre = models.CharField(max_length=100)
    cargo = models.CharField(max_length=80, blank=True)
    telefono = models.CharField(max_length=30, blank=True)
    email = models.EmailField(blank=True)

    class Meta:
        verbose_name = "Contacto"
        verbose_name_plural = "Contactos"

    def __str__(self):
        return f"{self.nombre} — {self.proveedor.nombre}"

class AuditoriaProveedor(models.Model):
    proveedor = models.ForeignKey(Proveedor, on_delete=models.CASCADE)
    accion = models.CharField(max_length=50)
    fecha = models.DateTimeField(auto_now_add=True)
    usuario = models.CharField(max_length=100, blank=True)

    class Meta:
        verbose_name = "Auditoría de Proveedor"
        verbose_name_plural = "Auditorías de Proveedores"

    def __str__(self):
        return f"{self.accion} - {self.proveedor.nombre} ({self.fecha:%d-%m-%Y %H:%M})"