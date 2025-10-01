# catalogo/data.py
# Catálogo con: nombre, precio, descripción, info_adicional e imagen.
# OJO con la carpeta: debe ser Static/IMG/ (mayúsculas), o cambia IMAGES_DIR.
IMAGES_DIR = "IMG"

def P(slug, nombre, filename, precio, descripcion, info_adicional=""):
    return {
        "slug": slug,
        "nombre": nombre,
        "precio": precio,
        "descripcion": descripcion,
        "info_adicional": info_adicional,
        "imagen": f"{IMAGES_DIR}/{filename}",
    }

CATEGORIAS = {
    # ============================ CHOCOLATES ================================
    "chocolates": {
        "nombre": "Chocolates",
        "imagen": f"{IMAGES_DIR}/Barras de Chocolate.png",
        "productos": [
            P(
                "higos-chocolate",
                "Higos Chocolate",
                "Higos Chocolate.png",
                "$4.500",
                "Higos seleccionados bañados en chocolate (100 g).",
                '<p><strong>Información adicional:</strong> Bolsa de 100 g, ideal para regalo o snack gourmet.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Higo deshidratado</li><li>Chocolate cobertura (cacao, azúcar, manteca de cacao)</li><li>Lecitina (emulsionante)</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Bañado y templado: 1 h · Empaque: mismo día.</p>',
            ),
            P(
                "limones-chocolate",
                "Limones Chocolate",
                "Limones Chcolates.png",
                "$4.500",
                "Cáscaras de limón confitadas con cobertura de chocolate (100 g).",
                '<p><strong>Información adicional:</strong> Confitado artesanal para un contraste cítrico-amargo perfecto.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Cáscara de limón confitada</li><li>Chocolate cobertura</li><li>Azúcar</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Confitado: 3–4 h · Bañado: 30 min · Empaque: mismo día.</p>',
            ),
            P(
                "naranjitas-chocolate",
                "Naranjitas Chocolate",
                "Narajitas Chocolates.png",
                "$4.500",
                "Cáscaras de naranja confitadas con cobertura de chocolate (100 g).",
                '<p><strong>Información adicional:</strong> Textura firme con aroma natural a naranja.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Cáscara de naranja confitada</li><li>Chocolate cobertura</li><li>Azúcar</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Confitado: 3–4 h · Bañado: 30 min · Empaque: mismo día.</p>',
            ),
            P(
                "papayitas-chocolate",
                "Papayitas Chocolate",
                "Papayitas Chocolate.png",
                "$4.500",
                "Trocitos de papaya bañados en chocolate (100 g).",
                '<p><strong>Información adicional:</strong> Hechas con papaya del norte chico, dulzor balanceado.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Papaya confitada</li><li>Chocolate cobertura</li><li>Vainilla (traza)</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Bañado y templado: 1 h · Empaque: mismo día.</p>',
            ),
            P(
                "almendras-chocolate",
                "Almendras Chocolate",
                "Almendras Chocolate.png",
                "$4.500",
                "Almendras tostadas cubiertas con chocolate (100 g).",
                '<p><strong>Información adicional:</strong> Tostado controlado para mantener crocancia y aroma.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Almendra</li><li>Chocolate cobertura</li><li>Sal marina (traza)</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Tostado: 30 min · Bañado: 30 min · Empaque: mismo día.</p>',
            ),
            P(
                "mani-chocolate",
                "Maní Chocolate",
                "Maní Chocolate.png",
                "$4.500",
                "Maní tostado cubierto con chocolate (100 g).",
                '<p><strong>Información adicional:</strong> Snack energético, perfecto para compartir.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Maní tostado</li><li>Chocolate cobertura</li><li>Azúcar (traza)</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Tostado: 30 min · Bañado: 30 min · Empaque: mismo día.</p>',
            ),
            P(
                "huevos-almendras",
                "Huevos Almendras",
                "Huevos Almendra.png.",
                "$4.500",
                "Almendras confitadas con cobertura de chocolate (100 g).",
                '<p><strong>Información adicional:</strong> Centro crocante con doble cobertura (confitado + chocolate).</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Almendra</li><li>Azúcar (confitado)</li><li>Chocolate cobertura</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Confitado: 2 h · Bañado: 30 min · Empaque: mismo día.</p>',
            ),
            P(
                "pasas-al-ron",
                "Pasas al Ron",
                "Pasas al Ron.png",
                "$4.500",
                "Pasas maceradas al ron bañadas en chocolate (100 g).",
                '<p><strong>Información adicional:</strong> Perfil aromático adulto, ideal para maridaje con café o té negro.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Pasas</li><li>Ron (aromatizante)</li><li>Chocolate cobertura</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Macerado: 12 h · Bañado: 30 min · Empaque: mismo día.</p>',
            ),
            P(
                "barras-chocolate",
                "Barras de Chocolate",
                "Barras de Chocolate.png",
                "$5.500",
                "Barras artesanales con sabores seleccionados.",
                '<p><strong>Información adicional:</strong> Sabores: Blanco Almendras, Leche con Almendras, Blanco Papaya, Bitter Maní.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Chocolate (blanco/leche/bitter)</li><li>Almendras o maní</li><li>Papaya confitada (según sabor)</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Templado y moldeado: 1 h · Empaque: mismo día.</p>',
            ),
            P(
                "torta-higos",
                "Torta de Higos",
                "Torta de Higos.jpg",
                "$3.500",
                "Torta artesanal de higos con nueces.",
                '<p><strong>Información adicional:</strong> Receta tradicional de la Región de Coquimbo, porción individual.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Higo deshidratado</li><li>Nuez</li><li>Harina de trigo</li><li>Huevo</li><li>Azúcar</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Horneado: 35–45 min · Enfriado: 1 h · Empaque: mismo día.</p>',
            ),
            P(
                "conito-higo",
                "Conito de Higo",
                "Conito de Higo.jpg",
                "$3.300",
                "Bocado de higo con manjar, galleta de cacao y miel, cubierto en chocolate semiamargo.",
                '<p><strong>Información adicional:</strong> Unidad de ~130 g, balance dulce y notas de cacao.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Higo</li><li>Manjar</li><li>Galleta de cacao</li><li>Miel</li><li>Chocolate cobertura</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Armado: 1 h · Bañado: 30 min · Empaque: mismo día.</p>',
            ),
        ],
    },

    # ============================= GALLETAS ================================
    "galletas": {
        "nombre": "Galletas",
        "imagen": f"{IMAGES_DIR}/galletas.jpg",
        "productos": [
            P(
                "galleton-papaya-sin-azucar",
                "Galletón de Papaya sin azúcar",
                "galletas.jpg",
                "$3.850",
                "Galletón artesanal con papaya. Libre de azúcar (4 unidades).",
                '<p><strong>Información adicional:</strong> Formulación con endulzante, pensado para colaciones equilibradas.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Harina integral</li><li>Endulzante</li><li>Papaya confitada</li><li>Aceite vegetal</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Horneado: 16 min · Enfriado: 20 min · Empaque: mismo día.</p>',
            ),
            P(
                "caja-galletas-trio",
                "Caja Galletas Trío",
                "Galletas Trio.jpg",
                "$4.300",
                "Surtido de galletas de canela, miel y chocolate.",
                '<p><strong>Información adicional:</strong> Caja familiar con tres perfiles de sabor clásicos.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Harina</li><li>Mantequilla</li><li>Azúcar</li><li>Canela/Miel/Cacao</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Horneado: 12–15 min · Enfriado: 20 min · Empaque: mismo día.</p>',
            ),
            P(
                "hojarascas",
                "Hojarascas",
                "Hojarascas.jpg",
                "$2.171",
                "Tapas de noble masa con doble relleno de manjar (4 unidades).",
                '<p><strong>Información adicional:</strong> Textura quebradiza y relleno generoso, formato retail.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Harina de trigo</li><li>Huevo</li><li>Mantequilla</li><li>Azúcar</li><li>Manjar</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Horneado: 20 min · Enfriado: 30 min · Empaque: mismo día.</p>',
            ),
            P(
                "maicenos",
                "Maicenos",
                "Maicenos.jpg",
                "$2.639",
                "Galletas de almidón de maíz con relleno de manjar (4 unidades).",
                '<p><strong>Información adicional:</strong> Suaves, con textura arenosa característica del maicena.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Almidón de maíz</li><li>Huevo</li><li>Azúcar flor</li><li>Mantequilla</li><li>Manjar</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Horneado: 15 min · Enfriado: 20 min · Empaque: mismo día.</p>',
            ),
            P(
                "lenguita-gato",
                "Lengüita de Gato",
                "Lengüita de Gato.jpg",
                "$1.599",
                "Galleta clásica, crujiente, ideal para el té (4 unidades).",
                '<p><strong>Información adicional:</strong> Formato retail, perfecta para acompañar café o té.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Harina</li><li>Mantequilla</li><li>Azúcar</li><li>Huevo</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Horneado: 12 min · Enfriado: 15 min · Empaque: mismo día.</p>',
            ),
            P(
                "galletas-avena-nuez",
                "Galleta de Avena y Nuez",
                "Galleta de Avena y Nuez.jpg",
                "$1.599",
                "Galletas artesanales de avena con nuez (4 unidades).",
                '<p><strong>Información adicional:</strong> Aporte de fibra y crocancia por la nuez tostada.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Avena</li><li>Nuez</li><li>Harina</li><li>Huevo</li><li>Azúcar</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Horneado: 14 min · Enfriado: 20 min · Empaque: mismo día.</p>',
            ),
            P(
                "cachitos-chocolate-nuez",
                "Cachitos Chocolate Nuez",
                "Cachitos Chocolate Nuez.jpg",
                "$2.639",
                "Crujiente galleta con relleno de manjar y baño de chocolate (4 unidades).",
                '<p><strong>Información adicional:</strong> Formato individual ideal para compartir en la once.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Harina</li><li>Mantequilla</li><li>Manjar</li><li>Chocolate cobertura</li><li>Nuez</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Horneado: 12 min · Bañado: 20 min · Empaque: mismo día.</p>',
            ),
            P(
                "bolsa-genero-galletas",
                "Bolsa de género con galletas",
                "Bolsa de genero con galletas.jpeg",
                "$4.500",
                "Saco de género con selección de dulces (personalizable con logo).",
                '<p><strong>Información adicional:</strong> Contenido personalizable según stock; opción de branding corporativo.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Selección de galletas</li><li>Alfajores</li><li>Bombones</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Armado por pedido: 1 día · Empaque: mismo día.</p>',
            ),
        ],
    },

    # ============================= ALFAJORES ===============================
    "alfajores": {
        "nombre": "Alfajores",
        "imagen": f"{IMAGES_DIR}/Alfajores 2un.jpg",
        "productos": [
            P(
                "alfajores-1un",
                "Alfajores 1un",
                "Alfajores 1un.jpg",
                "$2.200",
                "Alfajor artesanal individual.",
                '<p><strong>Información adicional:</strong> Sabores: Blanco/Negro Papaya; Chilenito Papaya.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Tapas de alfajor (harina, huevo, mantequilla)</li><li>Manjar</li><li>Cobertura blanca/negra</li><li>Papaya (según sabor)</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Horneado: 12 min · Enfriado: 20 min · Empaque: mismo día.</p>',
            ),
            P(
                "alfajores-2un",
                "Alfajores 2un",
                "Alfajores 2un.jpg",
                "$2.850",
                "Pack con 2 alfajores artesanales.",
                '<p><strong>Información adicional:</strong> Pack ideal para degustación o regalo pequeño.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Tapas de alfajor</li><li>Manjar</li><li>Cobertura según sabor</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Horneado: 12 min · Enfriado: 20 min · Empaque: mismo día.</p>',
            ),
            P(
                "alfajores-flow-pack",
                "Alfajores Lili’s Flow Pack",
                "Alfajores Lili’s Flow Pack.jpg",
                "$1.200",
                "Unidad Flow Pack con surtido (clásicos/veganos).",
                '<p><strong>Información adicional:</strong> Incluye opciones sin azúcar y veganas en rotación estacional.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Tapas tradicionales o veganas</li><li>Manjar o cremas saborizadas</li><li>Cobertura blanca/negra</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Armado y sellado: 1 día · Empaque: mismo día.</p>',
            ),
            P(
                "alfajores-regionales-2",
                "Alfajores Regionales Lugares Que Hablan 2un",
                "Alfajores Regionales Lugares Que Hablan 2un.png",
                "$3.500",
                "Pack de 2 alfajores inspirados en lugares de Chile.",
                '<p><strong>Información adicional:</strong> Sabores: Blanco de Papaya, Pisco Sour, Pisco Añejao, Higo, Leche de Cabra.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Tapas de alfajor</li><li>Rellenos saborizados</li><li>Cobertura (según variedad)</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Armado: 1 h · Empaque: mismo día.</p>',
            ),
            P(
                "alfajores-regionales-4",
                "Alfajores Regionales Lugares Que Hablan 4un",
                "Alfajores Regionales Lugares Que Hablan 4un.png",
                "$6.200",
                "Pack de 4 alfajores inspirados en Chile.",
                '<p><strong>Información adicional:</strong> Selección de sabores surtidos de la línea regional.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Tapas de alfajor</li><li>Rellenos variados</li><li>Coberturas mixtas</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Armado: 1 h · Empaque: mismo día.</p>',
            ),
            P(
                "caja-alfajores-12",
                "Caja de Alfajores 12un",
                "Caja de Alfajores 12un.png",
                "$11.200",
                "Caja presentación con 12 alfajores artesanales.",
                '<p><strong>Información adicional:</strong> Mix: Blanco, Negro Nuez, Negro Papaya, Chilenito.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Tapas de alfajor</li><li>Manjar</li><li>Cobertura blanca/negra</li><li>Nuez o papaya (según sabor)</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Armado: 1–2 h · Empaque: mismo día.</p>',
            ),
            P(
                "caja-alfajores-6",
                "Caja de Alfajores 6un",
                "Caja de Alfajores 6un.png",
                "$7.090",
                "Caja presentación con 6 alfajores.",
                '<p><strong>Información adicional:</strong> Sabores: Blanco, Negro Papaya/Negro Nuez, Leche de Cabra, Merengue Italiano.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Tapas de alfajor</li><li>Manjar/cremas</li><li>Cobertura</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Armado: 1 h · Empaque: mismo día.</p>',
            ),
            P(
                "caja-alfajores-3",
                "Caja de Alfajores 3un",
                "Caja de Alfajores 3un.jpg",
                "$3.500",
                "Caja presentación con 3 alfajores.",
                '<p><strong>Información adicional:</strong> Incluye sabores de línea en rotación.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Tapas de alfajor</li><li>Manjar</li><li>Cobertura</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Armado: 40 min · Empaque: mismo día.</p>',
            ),
            P(
                "caja-alfajores-tematicos",
                "Caja de Alfajores temáticos",
                "Caja de Alfajores temáticos.jpg",
                "$8.200",
                "Edición limitada con selección temática.",
                '<p><strong>Información adicional:</strong> Curaduría especial (mix clásico/nuez-almendra) para eventos y fechas.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Tapas de alfajor</li><li>Manjar</li><li>Cobertura</li><li>Frutos secos (según mix)</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Armado: 1–2 h · Empaque: mismo día.</p>',
            ),
        ],
    },

    # ============================= CONFITERÍA ==============================
    "confiteria": {
        "nombre": "Confitería",
        "imagen": f"{IMAGES_DIR}/Gomitas de Papaya.jpg",
        "productos": [
            P(
                "gomitas-papaya",
                "Gomitas de Papaya",
                "Gomitas de Papaya.jpg",
                "$4.500",
                "Gomitas de papaya artesanales (150 g).",
                '<p><strong>Información adicional:</strong> Presentación display para retail y caja familiar.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Papaya</li><li>Azúcar</li><li>Pectina</li><li>Ácido cítrico</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Gelificación: 2–3 h · Maduración: 1 h · Empaque: mismo día.</p>',
            ),
            P(
                "gomon-papaya",
                "Gomón de papaya",
                "golosinas.jpg",
                "$3.850",
                "Gomón de papaya 200 g.",
                '<p><strong>Información adicional:</strong> Textura elástica tipo malvavisco con sabor a papaya.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Puré de papaya</li><li>Azúcar</li><li>Gelificante</li><li>Saborizante natural</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Batido/gelificación: 2 h · Empaque: mismo día.</p>',
            ),
            P(
                "gomitas-fruta",
                "Gomitas de Fruta",
                "gomitas de fruta.png",
                "$4.500",
                "Gomitas surtidas de frutas (100 g).",
                '<p><strong>Información adicional:</strong> Mix sabores cítricos y dulces en equilibrio.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Pulpa o extractos de fruta</li><li>Azúcar</li><li>Gelificante</li><li>Ácido cítrico</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Gelificación: 2–3 h · Empaque: mismo día.</p>',
            ),
            P(
                "guaguitas",
                "Guagüitas",
                "guaguitas.jpg",
                "$3.850",
                "Espumas dulces y esponjosas (130 g).",
                '<p><strong>Información adicional:</strong> Clásico nostálgico, ideal para celebraciones infantiles.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Azúcar</li><li>Jarabe de glucosa</li><li>Gelatina</li><li>Saborizantes</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Batido/gelificación: 2 h · Empaque: mismo día.</p>',
            ),
            P(
                "cuchufli-chocolate-negro-8un",
                "Cuchuflí Chocolate Negro 8un",
                "Cuchuflí Chocolate Negro 8un.jpg",
                "$1.824",
                "Vainas de cuchuflí rellenas de manjar con baño negro.",
                '<p><strong>Información adicional:</strong> Pack de 8 unidades, crocancia asegurada.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Harina</li><li>Huevo</li><li>Azúcar</li><li>Manjar</li><li>Chocolate negro</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Horneado: 8 min · Bañado: 20 min · Empaque: mismo día.</p>',
            ),
            P(
                "cuchufli-chocolate-blanco-8un",
                "Cuchuflí Chocolate Blanco 8un",
                "Cuchuflí Chocolate Blanco 8un.jpg",
                "$1.919",
                "Vainas de cuchuflí con manjar y baño blanco.",
                '<p><strong>Información adicional:</strong> Pack de 8 unidades, dulzor balanceado.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Harina</li><li>Huevo</li><li>Azúcar</li><li>Manjar</li><li>Chocolate blanco</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Horneado: 8 min · Bañado: 20 min · Empaque: mismo día.</p>',
            ),
            P(
                "cuchufli-chocolate-4un",
                "Cuchuflí Chocolate 4un",
                "Cuchuflí Chocolate 4un.jpg",
                "$2.500",
                "Caja de 4 cuchuflíes bañados (blanco o negro).",
                '<p><strong>Información adicional:</strong> Presentación para regalo con selección blanco/negro.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Harina</li><li>Huevo</li><li>Azúcar</li><li>Manjar</li><li>Chocolate cobertura</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Armado: 30 min · Empaque: mismo día.</p>',
            ),
            P(
                "delicias-manjar",
                "Delicias Manjar",
                "Delicias Manjar.jpg",
                "$1.428",
                "Mix entre Mendocino y Alfajor Negro con baño de chocolate (2 un).",
                '<p><strong>Información adicional:</strong> Doble textura: crujiente por fuera, cremoso por dentro.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Tapas de galleta</li><li>Manjar</li><li>Chocolate cobertura</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Armado: 30–40 min · Empaque: mismo día.</p>',
            ),
        ],
    },

    # ============================ BOMBONERÍA ===============================
    "bomboneria": {
        "nombre": "Bombonería",
        "imagen": f"{IMAGES_DIR}/Bombones 6un.jpg",
        "productos": [
            P(
                "bombones-4un",
                "Bombones 4un",
                "Bombones 4un.jpg",
                "$3.500",
                "Caja regalo con 4 bombones artesanales.",
                '<p><strong>Información adicional:</strong> Presentación premium para obsequios y eventos.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Chocolate cobertura</li><li>Ganache de frutos secos</li><li>Praliné (según variedad)</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Templado y moldeado: 1 h · Empaque: mismo día.</p>',
            ),
            P(
                "bombones-6un",
                "Bombones 6un",
                "Bombones 6un.jpg",
                "$4.800",
                "Caja regalo con 6 bombones artesanales.",
                '<p><strong>Información adicional:</strong> Selección variada con rellenos cremosos y crocantes.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Chocolate cobertura</li><li>Ganache/cremas</li><li>Frutos secos</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Templado y moldeado: 1–1,5 h · Empaque: mismo día.</p>',
            ),
            P(
                "bombones-12un",
                "Bombones 12un",
                "Bombones 12un.jpg",
                "$9.600",
                "Caja regalo con 12 bombones artesanales.",
                '<p><strong>Información adicional:</strong> Surtido completo con coberturas y rellenos estacionales.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Chocolate cobertura</li><li>Rellenos cremosos</li><li>Praliné/avellanas/almendras</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Templado y moldeado: 2 h · Empaque: mismo día.</p>',
            ),
            P(
                "conito-higo",
                "Conito de Higo",
                "Conito de Higo.jpg",
                "$3.300",
                "Bocado de higo con manjar, galleta de cacao y miel, cubierto en chocolate semiamargo.",
                '<p><strong>Información adicional:</strong> Bocado gourmet que combina fruta, lácteos y cacao.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Higo</li><li>Manjar</li><li>Galleta de cacao</li><li>Miel</li><li>Chocolate cobertura</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Armado: 1 h · Bañado: 30 min · Empaque: mismo día.</p>',
            ),
            P(
                "torta-higos",
                "Torta de Higos",
                "Torta de Higos.jpg",
                "$3.500",
                "Torta artesanal de higos con nueces.",
                '<p><strong>Información adicional:</strong> Porción individual; excelente acompañamiento para café.</p>'
                '<h5 class="mt-3 fw-bold">Ingredientes principales</h5>'
                '<ul><li>Higo deshidratado</li><li>Nuez</li><li>Harina</li><li>Huevo</li><li>Azúcar</li></ul>'
                '<h5 class="mt-3 fw-bold">Tiempo de producción y empaque</h5>'
                '<p>Horneado: 35–45 min · Enfriado: 1 h · Empaque: mismo día.</p>',
            ),
        ],
    },
}

# ------------------------------ EMPRESA -----------------------------------
EMPRESA = {
    "historia": "Dulcería Lilis nace en 2017 como emprendimiento familiar con foco en innovación y calidad artesanal.",
    "mision": "Crear productos artesanales de alta calidad que destaquen sabores locales, con compromiso social.",
    "vision": "Proyectar la marca a nivel nacional e internacional, manteniendo la esencia artesanal.",
    "valores": ["Respeto", "Puntualidad", "Honestidad", "Honradez"],
    "contacto": {
        "direccion": "Avenida Amanecer 2030, Local FT-8, Centro Empresarial Coquimbo, Chile",
        "correo": "ventas@lilis.cl",
        "telefono": "+56 9 6226 1712",
        "redes": {
            "instagram": "@dulceria_lilis",
            "facebook": "lilisdulces",
            "web": "https://www.lilis.cl",
        },
    },
}
