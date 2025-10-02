from django.db import models
from django.utils import timezone
from .choices import UNIDADES

class Producto(models.Model):
    # ====== CAMPOS ======
    nombre = models.CharField(
        max_length=100,
        verbose_name='Nombre del producto'
    )
    
    unidad = models.CharField(
        max_length=2,
        choices=UNIDADES,
        default='UN',
        verbose_name='Unidad'
    )
    
    precio = models.DecimalField(
        max_digits=12,         
        decimal_places=2,
        default=0,
        verbose_name='Precio'
    )
    stock_minimo = models.PositiveIntegerField(
        default=10,
        verbose_name='Stock mínimo'
    )
    creado = models.DateTimeField(
        default=timezone.now,  
        verbose_name='Creado'
    )

    def __str__(self):
        return f"{self.nombre} ({self.unidad}) - ${self.precio}"

    # ====== METADATOS ======
    class Meta:
        db_table = 'producto'                
        verbose_name = 'Producto'             
        verbose_name_plural = 'Productos'   
        ordering = ['nombre']                


class Lote(models.Model):
    producto = models.ForeignKey(
        Producto,
        on_delete=models.CASCADE,             
        related_name='lotes',                 
        verbose_name='Producto'
    )
    codigo = models.CharField(
        max_length=30,
        verbose_name='Código de lote'
    )
    cantidad = models.PositiveIntegerField(
        default=0,
        verbose_name='Cantidad'
    )
    fecha_vencimiento = models.DateField(
        null=True,
        blank=True,
        db_index=True,
        verbose_name='Fecha de vencimiento'
    )
    ubicacion = models.CharField(
        max_length=100,
        blank=True,
        verbose_name='Ubicación'
    )
    creado = models.DateTimeField(
        default=timezone.now,
        verbose_name='Creado'
    )

    def __str__(self):
        return f"Lote {self.codigo} - {self.producto.nombre}"

    class Meta:
        db_table = 'lote'
        verbose_name = 'Lote'
        verbose_name_plural = 'Lotes'
        ordering = ['fecha_vencimiento', 'codigo']
        constraints = [
            models.UniqueConstraint(fields=['producto', 'codigo'], name='uq_lote_producto_codigo')
        ]
