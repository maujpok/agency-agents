# Prompt — Ad Creative Strategist
# Campaña: Teaser Córdoba (pre-lanzamiento FulbitoApp)
# Etapa: 2 de 3
# Agente fuente: agency-agents/paid-media/paid-media-creative-strategist.md

---

## INSTRUCCIONES DE USO

1. Reemplazar [OUTPUT_ETAPA_1] con el contenido de:
   - strategy/brand-voice.md
   - strategy/audience-by-platform.md
   - campaigns/01-teaser-cordoba/editorial-calendar.md
2. Copiar el prompt completo y pegarlo en Claude
3. Guardar outputs en campaigns/01-teaser-cordoba/creatives/:
   - tiktok.md
   - instagram.md
   - facebook.md
   - twitter.md
4. Commit: `feat(campaign-01): add creative assets v1`
5. Una vez aprobado, pasar a agents/prompt-paid-social-strategist.md

---

## PROMPT

Eres el Ad Creative Strategist del sistema NEXUS.

CONTEXTO ESTRATÉGICO:
[OUTPUT_ETAPA_1]

Proyecto: FulbitoApp — app de gestión de partidos de fútbol amateur
con IA, estadísticas y media sharing.
Mercado: Córdoba, Argentina.

OBJETIVO DE ESTA CAMPAÑA: Pre-lanzamiento tipo teaser.
Tono central: "Prepárate que se viene algo nuevo que te va a volar la cabeza."
NO se revela qué es la app. Se vende curiosidad e intención.
Objetivo secundario: sumar seguidores (cada creativo debe tener CTA de follow).

FASES DEL TEASER (según estrategia de Etapa 1):
- Semana 1: misterio total
- Semana 2: primeras pistas
- Semana 3: más revelación + interacción
- Semana 4: pre-reveal, hype máximo

Crea los creativos para pauta pagada Y contenido orgánico.

Entregables:

1. CREATIVOS PARA TIKTOK
   Semana 1 — Misterio (1 video):
   - Hook primeros 3 seg (texto exacto en pantalla + descripción visual)
   - Desarrollo (15-30 seg): estructura narrativa de intriga
   - CTA: seguir la cuenta para enterarse primero
   - Audio/sonido sugerido

   Semana 3 — Pista (1 video):
   - Mostrar algo de la app sin mostrarla (ej: una stat graciosa de
     un partido real, una situación de armar el equipo con IA)
   - Misma estructura

   Semana 4 — Pre-reveal (1 video):
   - El hype es máximo, se acerca el momento

2. CREATIVOS PARA INSTAGRAM
   Stories teaser (3 variaciones para distintas semanas):
   - Concepto visual minimalista que genera intriga
   - Copy + sticker de countdown o pregunta interactiva
   - CTA: seguir para ser el primero en saber

   Reels (2 variaciones):
   - Concepto de video corto (15 seg)
   - Caption que invite a seguir y comentar

3. CREATIVOS PARA FACEBOOK
   - 2 piezas para feed (imagen o carrusel)
   - Orientadas a grupos de fútbol amateur / adultos 25-40
   - Tono: menos Gen Z, más "ey, esto te va a interesar"
   - Headline + primary text + CTA del botón (Más información / Me gusta la página)

4. CREATIVOS PARA X / TWITTER
   - 4 tweets teaser (uno por semana)
   - Semana 1: pregunta misteriosa al fútbolero cordobés
   - Semana 2: pista en formato de stat o situación
   - Semana 3: interacción (pregunta, poll)
   - Semana 4: countdown al reveal
   - Cada uno con imagen/concepto visual adjunto

5. IDENTIDAD VISUAL DE LA CAMPAÑA
   - Paleta de colores y estética del teaser (dark? Minimalista? Energética?)
   - Elementos visuales que den continuidad entre plataformas
   - Tipografía y recursos gráficos recomendados

6. PLAN DE TESTING A/B
   - Qué testear en Meta durante las primeras 2 semanas
   - Criterio para rotar creativos
   - Qué métrica indica que el teaser está generando curiosidad real
     (guardados, comentarios "¿qué es esto?", follows)

7. DOCUMENTO DE HANDOFF para Paid Social Strategist:
   - Lista de assets con specs técnicas por plataforma
   - Cuáles piezas priorizar en pauta pagada y en qué semana
   - Notas sobre qué creativos tienen más potencial orgánico

Criterio de calidad: alguien que ve cualquier pieza sin contexto
debe quedarse con ganas de saber qué es FulbitoApp.
Si alguien puede ignorarla, está mal.
