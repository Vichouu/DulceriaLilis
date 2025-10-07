from django.db.models.signals import post_save, post_delete
from django.dispatch import receiver
from .models import Proveedor, AuditoriaProveedor

@receiver(post_save, sender=Proveedor)
def registrar_cambio(sender, instance, created, **kwargs):
    accion = "Creación" if created else "Modificación"
    AuditoriaProveedor.objects.create(proveedor=instance, accion=accion)

@receiver(post_delete, sender=Proveedor)
def registrar_eliminacion(sender, instance, **kwargs):
    AuditoriaProveedor.objects.create(proveedor=instance, accion="Eliminación")