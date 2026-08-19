# fulbito-marketing

Repositorio de estrategia de marketing y campañas de **FulbitoApp** — gestionado con agentes IA especializados.

## ¿Qué es este repo?

Este repositorio centraliza todo el contenido generado por los agentes de marketing IA para FulbitoApp:
estrategias, creativos, arquitecturas de pauta pagada, calendarios editoriales e iteraciones de campaña.

Cada archivo es el output de un agente específico. El historial de git es el registro completo de
todas las iteraciones y decisiones tomadas.

## Estructura

```
fulbito-marketing/
├── agents/                          # Prompts listos para activar cada agente
├── strategy/                        # Estrategia global de marca y redes
├── campaigns/
│   └── 01-teaser-cordoba/           # Campaña de pre-lanzamiento en Córdoba
│       ├── brief.md
│       ├── editorial-calendar.md
│       ├── creatives/               # Outputs del Ad Creative Strategist
│       └── paid-media/              # Outputs del Paid Social Strategist
├── iterations/                      # Versiones anteriores para comparar
└── analytics/
    └── weekly-reports/              # Reportes semanales de performance
```

## Flujo de trabajo

Ver [WORKFLOW.md](./WORKFLOW.md) para el flujo completo de trabajo con agentes.

## Campañas

| # | Nombre | Estado | Período |
|---|--------|--------|---------|
| 01 | Teaser Córdoba — pre-lanzamiento (genérico) | Reemplazada por campaña 02 | — |
| 02 | 100 Capitanes Fulbito — teaser + reclutamiento | En planificación | Ago-Sep 2026 |

> La campaña 02 integra y reemplaza a la 01. El teaser y el reclutamiento de capitanes son la misma campaña.

## Stack de agentes

### Campaña 02 — 100 Capitanes Fulbito

| Orden | Agente | Rol | Archivo de prompt |
|-------|--------|-----|------------------|
| 1 | Growth Hacker | Estrategia de reclutamiento, formulario, criterios de selección | [agents/prompt-growth-hacker-100-capitanes.md](./agents/prompt-growth-hacker-100-capitanes.md) |
| 2 | Social Media Strategist | Narrativa integrada teaser + capitanes, calendario editorial | [agents/prompt-social-media-strategist-100-capitanes.md](./agents/prompt-social-media-strategist-100-capitanes.md) |
| 3 | Ad Creative Strategist | Creativos por plataforma y semana del teaser | [agents/prompt-ad-creative-strategist-100-capitanes.md](./agents/prompt-ad-creative-strategist-100-capitanes.md) |
| 4 | Paid Social Strategist | Arquitectura de pauta, presupuesto USD 250/mes | [agents/prompt-paid-social-strategist.md](./agents/prompt-paid-social-strategist.md) |
