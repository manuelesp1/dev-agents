# Templates de Notificación — Orquestador

Estos templates se usan durante el ciclo de orquestación. El Orquestador los referencia por nombre y los completa con datos en tiempo real.

---

## 1. Vista previa del plan

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
VISTA PREVIA DEL PLAN
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Objetivo: [descripción en una oración]

Pasos propuestos:
  1. [Paso 1 del plan]
  2. [Paso 2 del plan]
  3. [Paso 3 del plan]
  ... (máximo 5 pasos, si hay más decir "[N] pasos en total")

Archivos afectados:
  - [ruta/archivo.ext] → [crear | modificar | eliminar]
  - [ruta/archivo2.ext] → [crear | modificar | eliminar]

Riesgo estimado : [BAJO | MEDIO | ALTO]
Skills aplicadas: [skills relevantes, o "ninguna"]

Ejecución paralela posible: [SÍ → backend/frontend separados | NO]

¿Apruebas este plan?
  → "si" para ejecutar
  → "editar" + comentario para ajustar
  → "replanificar" para que el Planner genere otra opción
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## 2. Error de pre-commit

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PRE-COMMIT HOOK — ERROR DETECTADO
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Herramienta: [npm run lint | npx tsc --noEmit | phpunit | ...]
Salida:
[primeras 10 líneas del error]

Archivos afectados:
[ruta/archivo.ext]

¿Cómo deseas proceder?
  A) Reintentar con corrección automática
  B) Revisar manualmente y corregir
  C) Omitir y continuar a auditoría
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## 3. Notificación de rechazo — opciones de resolución

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
AUDITORÍA RECHAZADA — Iteración [N] de [MAX]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
El auto-retry no pudo resolver las siguientes fallas:

[Para cada falla:]
   [Nombre del criterio]
     Severidad : [CRÍTICA | ALTA]
     Problema  : [descripción concreta]
     Archivo   : [ruta/archivo.ext]

Reporte completo: reports/[nombre-iter-N].md

[Si hay múltiples enfoques de resolución:]
Opciones para resolverlo:
  1) [Enfoque A — descripción con trade-off]
  2) [Enfoque B — descripción con trade-off]

¿Cuál preferís?

[Si el auto-retry simplemente se agotó sin enfoques alternativos:]
No se encontró una solución automática en [MAX] intentos.
¿Querés replanificar con el Planner o revisar manualmente?
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## 4. Límite de iteraciones alcanzado

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
LÍMITE DE ITERACIONES ALCANZADO
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Se agotaron las [N] iteraciones configuradas.
Las fallas no han sido resueltas en ninguna iteración.

Historial de rechazos:
  Iter 1: [falla principal]
  Iter N: [falla principal]

Opciones:
  A) Ampliar el límite a [N+2] iteraciones y continuar
  B) Revisar manualmente: reports/[nombre-iter-N].md
  C) Reformular el objetivo y reiniciar el ciclo

¿Cómo deseas proceder?
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## 5. Ciclo completado

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
CICLO COMPLETADO
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Objetivo    : [objetivo en una oración]
Iteraciones : [N]
Veredicto   : [APROBADO | APROBADO CON OBSERVACIONES]
Reporte     : reports/FINAL_[fecha]_[slug].md
Archivado   : ✅ PROJECT.md actualizado · Engram guardado

El reporte técnico está listo para tu revisión.
Contiene las decisiones tomadas, los archivos afectados y
los criterios de éxito verificados.

Para ver los diffs completos: reports/[nombre-iter-final].md
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## 6. Diagnóstico inconcluso — pedir más datos

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
DIAGNÓSTICO INCONCLUSO
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
El Debugger no pudo determinar la causa raíz con certeza.

Hipótesis:
  1. [Hipótesis A — probabilidad] — [evidencia]
  2. [Hipótesis B — probabilidad] — [evidencia]

Lo descartado:
  - [qué se verificó y no era]

¿Podés reproducir el bug y darme más datos?
(stack trace, valores de entrada, diferencia exacta esperado vs real)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```
