# Viral Loop — 100 Capitanes Fulbito
> Output: Growth Hacker Agent | Campaña 02

---

## El loop principal

```
Persona ve la convocatoria en redes
        ↓
Completa el formulario (< 3 min)
        ↓
Ve su número de postulante en tiempo real
        ↓
Comparte la tarjeta auto-generada en Stories
        ↓
Sus amigos ven la Story → algunos aplican también
        ↓
El loop se repite
```

---

## Mecánica 1 — El número de postulante (el más importante)

**Cómo funciona:**
Inmediatamente después de enviar el formulario, el postulante ve su número en tiempo real (ej: "Sos el postulante N°183"). La pantalla genera automáticamente una imagen para compartir en Instagram Stories con ese número.

**Por qué funciona:**
- El número hace que cada aplicación sea única y personal
- Crea FOMO en quienes ven la Story: "ya van 183, mejor me apuro"
- No requiere que el postulante haga nada extra — el botón de compartir está ahí
- Los números bajos (1-50) son trofeos: "yo fui de los primeros"
- Los números altos (150-200+) crean urgencia: "quedan pocos cupos"

**Implementación técnica mínima:**
- Contador en base de datos simple (puede ser Google Sheets + Zapier en MVP)
- Imagen generada dinámicamente con el número (puede ser Canva API o imagen estática con número superpuesto)

---

## Mecánica 2 — "Etiquetá al capitán de tu grupo"

**Uso en redes sociales:**
En cada post de la convocatoria, el CTA no es solo "aplicá" — es:
*"¿Conocés al capitán de tu grupo? Etiquetalo acá."*

**Por qué funciona:**
- Activa a personas que no son capitanes pero conocen uno
- Un tag en Instagram = notificación directa al capitán real
- Genera comentarios en el post que aumentan el alcance orgánico
- No pide que nadie haga nada difícil — solo etiquetar a alguien

---

## Mecánica 3 — Link de referido para capitanes seleccionados

**Cómo funciona:**
Una vez seleccionado, cada capitán recibe su link único de referido:
`fulbito.app/capitanes?ref=JOSE07`

**Incentivos por referidos:**
- 1 capitán traído y seleccionado → sube a "Capitán Fundador" (badge especial)
- 3 capitanes traídos → reconocimiento dentro del grupo como "Super Capitán"
- Los referidos del capitán quedan vinculados a su historial permanentemente

**Script sugerido para compartir:**
> *"Me seleccionaron como Capitán Fundador de FulbitoApp en Córdoba. Todavía quedan algunos cupos — si vos también sos el que arma el partido, anotate acá: [link]"*

---

## Mecánica 4 — El partido como unidad de difusión

**El capitán tiene un grupo de fútbol de 8-25 personas.** Esas personas ya confían en su criterio — él armó el partido de los jueves durante años.

**Flujo:**
1. Capitán seleccionado → usa FulbitoApp en el partido del jueves
2. Sus amigos ven algo diferente: "¿qué es eso que estás usando para dividir los equipos?"
3. Capitán explica → los amigos se interesan
4. Varios de esos amigos también organizan partidos en otros grupos → candidatos para la siguiente fase

**Multiplicador estimado:** 100 capitanes × 12 amigos promedio = 1.200 personas con contacto directo con FulbitoApp antes del lanzamiento oficial.

---

## Métricas del viral loop

| Métrica | Target | Mínimo aceptable |
|---------|--------|-----------------|
| % de postulantes que comparten la tarjeta de Stories | 35% | 20% |
| Aplicaciones provenientes de referidos directos (tags, links) | 40% del total | 25% |
| Aplicaciones provenientes de capitanes seleccionados (Canal 3) | 30 adicionales | 15 |
| Alcance orgánico estimado total | 15.000 personas únicas | 8.000 |
