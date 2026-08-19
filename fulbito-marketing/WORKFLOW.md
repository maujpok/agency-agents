# Flujo de trabajo con agentes IA — FulbitoApp Marketing

## Visión general

Este repo usa un sistema de **3 agentes especializados en secuencia**. Cada agente recibe
el output del anterior como contexto (handoff), evitando que trabajen con información
contradictoria o incompleta.

```
Social Media Strategist
        │
        │  output: estrategia, voz, mensajes, calendario
        ▼
Ad Creative Strategist
        │
        │  output: creativos por plataforma, plan A/B
        ▼
Paid Social Strategist
        │
        │  output: arquitectura de pauta, presupuesto, métricas
        ▼
     CAMPAÑA ACTIVA
```

---

## Agentes disponibles

### 1. Social Media Strategist
- **Fuente:** [agency-agents/marketing/marketing-social-media-strategist.md](https://github.com/maujpok/agency-agents/blob/main/marketing/marketing-social-media-strategist.md)
- **Rol:** Define la estrategia global, voz de marca, audiencias por plataforma y calendario editorial
- **Cuándo activarlo:** Al inicio de cada nueva campaña o cuando cambia el posicionamiento
- **Output esperado:** `strategy/` + sección de brief en `campaigns/XX/brief.md`

### 2. Ad Creative Strategist
- **Fuente:** [agency-agents/paid-media/paid-media-creative-strategist.md](https://github.com/maujpok/agency-agents/blob/main/paid-media/paid-media-creative-strategist.md)
- **Rol:** Crea los creativos específicos por plataforma, copies, hooks y plan de testing A/B
- **Cuándo activarlo:** Después de tener la estrategia del Social Media Strategist aprobada
- **Output esperado:** Archivos en `campaigns/XX/creatives/`

### 3. Paid Social Strategist
- **Fuente:** [agency-agents/paid-media/paid-media-paid-social-strategist.md](https://github.com/maujpok/agency-agents/blob/main/paid-media/paid-media-paid-social-strategist.md)
- **Rol:** Diseña la arquitectura de campaña pagada, distribución de presupuesto y métricas
- **Cuándo activarlo:** Cuando los creativos están listos y se va a activar pauta
- **Output esperado:** Archivos en `campaigns/XX/paid-media/`

---

## Flujo detallado paso a paso

### ETAPA 0 — Preparación (antes de correr agentes)

```
1. Crear carpeta de la campaña:
   campaigns/XX-nombre-campaña/

2. Completar el brief inicial:
   campaigns/XX-nombre-campaña/brief.md
   (contexto de la campaña, objetivo, plataformas, presupuesto)

3. Hacer commit:
   git add .
   git commit -m "feat(campaign-XX): create campaign brief"
```

### ETAPA 1 — Social Media Strategist

```
1. Abrir: agents/prompt-social-media-strategist.md
2. Copiar el prompt completo
3. Pegarlo en Claude (u otro LLM)
4. Guardar el output en:
   - strategy/brand-voice.md           (si es nueva marca/tono)
   - strategy/audience-by-platform.md  (si es nueva audiencia)
   - campaigns/XX/editorial-calendar.md
5. Hacer commit:
   git commit -m "feat(campaign-XX): add social media strategy v1"
6. Revisar y refinar si es necesario → nuevo commit con v2, v3, etc.
```

**Criterio de aprobación antes de pasar a Etapa 2:**
- [ ] Tono y voz de marca definidos con ejemplos concretos
- [ ] Audiencias definidas por plataforma
- [ ] Mensajes clave del teaser redactados
- [ ] Calendario editorial con al menos 4 semanas definidas

### ETAPA 2 — Ad Creative Strategist

```
1. Abrir: agents/prompt-ad-creative-strategist.md
2. Reemplazar [OUTPUT_ETAPA_1] con el contenido de:
   - strategy/brand-voice.md
   - strategy/audience-by-platform.md
   - campaigns/XX/editorial-calendar.md
3. Correr el agente
4. Guardar outputs en campaigns/XX/creatives/:
   - tiktok.md
   - instagram.md
   - facebook.md
   - twitter.md
5. Hacer commit:
   git commit -m "feat(campaign-XX): add creative assets v1"
6. Refinar según feedback → nuevo commit
```

**Criterio de aprobación antes de pasar a Etapa 3:**
- [ ] Al menos 3 variaciones por plataforma principal (TikTok, Instagram)
- [ ] Cada creativo tiene hook + desarrollo + CTA
- [ ] Specs técnicas completas (dimensiones, duración, formato)
- [ ] Plan A/B definido con criterio de ganador

### ETAPA 3 — Paid Social Strategist

```
1. Abrir: agents/prompt-paid-social-strategist.md
2. Reemplazar:
   - [OUTPUT_ETAPA_1] con strategy/ + editorial-calendar.md
   - [OUTPUT_ETAPA_2] con campaigns/XX/creatives/
3. Correr el agente
4. Guardar outputs en campaigns/XX/paid-media/:
   - architecture.md       (estructura de campañas)
   - budget-breakdown.md   (distribución de presupuesto)
   - week-by-week.md       (cronograma de ejecución)
5. Hacer commit:
   git commit -m "feat(campaign-XX): add paid media architecture v1"
```

**Criterio de aprobación para activar la campaña:**
- [ ] Presupuesto distribuido por plataforma con justificación
- [ ] Segmentaciones de audiencia definidas
- [ ] KPIs y targets numéricos definidos
- [ ] Cronograma semana a semana con decisiones de escala/pausa

---

## Convención de commits

Seguir esta convención para mantener el historial legible:

```
feat(campaign-XX):     nuevo contenido o campaña
refine(campaign-XX):   iteración sobre contenido existente
fix(campaign-XX):      corrección de un error o inconsistencia
analytics(campaign-XX): reporte de resultados
docs:                  cambios en WORKFLOW.md u otros docs
```

Ejemplos:
```
feat(campaign-01): add teaser strategy v1 - social media strategist
refine(campaign-01): adjust tiktok hooks based on review
analytics(campaign-01): week 1 results - 450 new followers Meta
```

---

## Convención de archivos

### Iteraciones
Cuando un archivo tiene múltiples versiones, guardar la anterior antes de sobrescribir:

```
iterations/
└── 01-teaser-cordoba/
    ├── v1-brand-voice.md        ← versión anterior guardada
    ├── v2-brand-voice.md        ← versión anterior guardada
    └── (la versión actual vive en strategy/brand-voice.md)
```

### Naming de campañas
```
01-teaser-cordoba
02-launch-cordoba
03-expansion-argentina
XX-nombre-descriptivo
```

---

## Seguimiento de resultados

Cada semana de campaña activa, crear un reporte en:
```
analytics/weekly-reports/YYYY-MM-DD-campaign-XX-week-N.md
```

Incluir:
- Alcance y frecuencia por plataforma
- Nuevos seguidores por plataforma
- CPF (Costo Por Follow) real vs. estimado
- Creativos con mejor performance
- Decisiones tomadas (qué se pausó, qué se escaló)
- Ajustes para la semana siguiente

---

## Checklist de inicio de campaña nueva

```
[ ] Crear carpeta campaigns/XX-nombre/
[ ] Completar brief.md con contexto, objetivo y presupuesto
[ ] Correr Social Media Strategist → aprobar output
[ ] Correr Ad Creative Strategist con handoff de Etapa 1
[ ] Producir assets visuales basados en creative briefs
[ ] Correr Paid Social Strategist con handoffs de Etapas 1 y 2
[ ] Configurar cuentas publicitarias (Meta Ads Manager, TikTok Ads)
[ ] Subir creativos y configurar campañas según architecture.md
[ ] Activar y registrar fecha de inicio en brief.md
[ ] Crear primer reporte en analytics/weekly-reports/ al final de semana 1
```

---

## Recursos

- [agency-agents repo](https://github.com/maujpok/agency-agents) — Librería de agentes IA
- [Prompts de activación](./agents/) — Prompts listos con contexto de FulbitoApp
- [Handoff templates](https://github.com/maujpok/agency-agents/blob/main/strategy/coordination/handoff-templates.md) — Templates de traspaso entre agentes
