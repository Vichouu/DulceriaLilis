from django.contrib import admin
from .models import Cliente, Pedido, PedidoItem

class PedidoItemInline(admin.TabularInline):
    model = PedidoItem
    extra = 1
    autocomplete_fields = ('producto',)
    fields = ('producto', 'cantidad', 'precio_unitario')

@admin.register(Pedido)
class PedidoAdmin(admin.ModelAdmin):
    list_display = ('id', 'cliente', 'vendedor', 'fecha', 'estado', 'total_mostrado')
    list_filter = ('estado', 'fecha', 'vendedor')
    search_fields = ('cliente__nombre', 'vendedor__username')
    date_hierarchy = 'fecha'
    inlines = [PedidoItemInline]

    def total_mostrado(self, obj):
        return f'$ {obj.total:,.0f}'
    total_mostrado.short_description = 'Total'

@admin.register(Cliente)
class ClienteAdmin(admin.ModelAdmin):
    list_display = ('nombre', 'rut', 'correo', 'telefono')
    search_fields = ('nombre', 'rut', 'correo')
