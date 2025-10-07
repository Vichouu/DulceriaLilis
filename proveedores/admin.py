from django.contrib import admin
from .models import Proveedor, Rubro, Contacto, AuditoriaProveedor

class ContactoInline(admin.TabularInline):
    model = Contacto
    extra = 1
    fields = ('nombre', 'cargo', 'telefono', 'email')

@admin.register(Rubro)
class RubroAdmin(admin.ModelAdmin):
    list_display = ('nombre', 'descripcion')
    search_fields = ('nombre',)
    ordering = ('nombre',)

@admin.register(Proveedor)
class ProveedorAdmin(admin.ModelAdmin):
    list_display = ('rut', 'nombre', 'rubro', 'email', 'telefono', 'activo', 'fecha_creacion', 'fecha_modificacion')
    list_filter = ('activo', 'rubro')
    search_fields = ('rut', 'nombre', 'email', 'telefono')
    ordering = ('nombre',)
    readonly_fields = ('fecha_creacion', 'fecha_modificacion')
    inlines = [ContactoInline]
    list_per_page = 25

@admin.register(Contacto)
class ContactoAdmin(admin.ModelAdmin):
    list_display = ('nombre', 'proveedor', 'cargo', 'telefono', 'email')
    search_fields = ('nombre', 'proveedor__nombre', 'email', 'telefono')
    ordering = ('nombre',)

@admin.register(AuditoriaProveedor)
class AuditoriaProveedorAdmin(admin.ModelAdmin):
    list_display = ('proveedor', 'accion', 'fecha', 'usuario')
    search_fields = ('proveedor__nombre', 'accion', 'usuario')
    ordering = ('-fecha',)
    readonly_fields = ('proveedor', 'accion', 'fecha', 'usuario')