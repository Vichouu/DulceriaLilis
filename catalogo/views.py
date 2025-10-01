from django.shortcuts import render
from django.http import Http404
from .data import CATEGORIAS, EMPRESA

def home(request):
    categorias = [
        {"key": key, "nombre": data["nombre"], "imagen": data["imagen"]}
        for key, data in CATEGORIAS.items()
    ]
    return render(request, "catalogo/home.html", {"categorias": categorias})

def categoria_view(request, categoria):
    cat = CATEGORIAS.get(categoria)
    if not cat:
        raise Http404("Categoría no encontrada")
    ctx = {
        "categoria_key": categoria,
        "categoria_nombre": cat["nombre"],
        "productos": cat.get("productos", []),
    }
    return render(request, "catalogo/categoria.html", ctx)

def producto_view(request, categoria, slug):
    cat = CATEGORIAS.get(categoria)
    if not cat:
        raise Http404("Categoría no encontrada")
    prod = next((p for p in cat.get("productos", []) if p["slug"] == slug), None)
    if not prod:
        raise Http404("Producto no encontrado")
    ctx = {
        "producto": prod,
        "categoria_key": categoria,
        "categoria_nombre": cat["nombre"],
    }
    return render(request, "catalogo/producto.html", ctx)

def empresa_view(request):
    return render(request, "Sitio/empresa.html", {"empresa": EMPRESA})
