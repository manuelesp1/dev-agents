# Reporte Técnico Final
## [Objetivo del trabajo]

> **Generado:** [fecha y hora]
> **Proyecto:** [nombre del proyecto]
> **Stack:** [stack principal]
> **Iteraciones realizadas:** [N]
> **Veredicto final:** APROBADO | APROBADO CON OBSERVACIONES

---

## Objetivo confirmado

[Reproducir el Mapa de Intención confirmado por el programador al inicio]

---

## Resumen del ciclo

| Iteración | Veredicto del Auditor | Fallas que motivaron reiteración |
|-----------|----------------------|----------------------------------|
| 1         | [veredicto]          | [fallas, o "—" si fue aprobado]  |
| 2         | [veredicto]          | [fallas, o "—"]                  |
| ...       | ...                  | ...                              |

---

## Decisiones técnicas tomadas

<!-- Una sección por cada decisión significativa que el Planner tomó.
     Solo decisiones que el programador necesita conocer para mantener el código. -->

### [Nombre de la decisión]

**Qué se decidió:**
[Descripción en 1-2 oraciones de la elección técnica]

**Por qué se tomó esta decisión:**
[Justificación basada en el stack, las convenciones del proyecto o las restricciones detectadas]

**Alternativas descartadas:**
[Qué otras opciones existían y por qué no se eligieron]

**Impacto en el código:**
[Qué módulos o archivos quedan afectados por esta decisión a largo plazo]

---

## Mapa de cambios

<!-- Lista de todos los archivos modificados, creados o eliminados.
     Agrupados por propósito, no por orden de modificación. -->

### Archivos nuevos

| Archivo | Propósito | Decisión clave asociada |
|---------|-----------|------------------------|
| `ruta/archivo.ext` | [qué hace este archivo] | [decisión técnica que lo explica] |

### Archivos modificados

| Archivo | Qué cambió | Por qué cambió |
|---------|-----------|---------------|
| `ruta/archivo.ext` | [descripción del cambio] | [razón técnica] |

### Archivos eliminados

| Archivo | Motivo de eliminación |
|---------|----------------------|
| `ruta/archivo.ext` | [razón] |

---

## Diffs resumidos

<!-- Cambios clave en formato diff compacto. Solo archivos con cambios significativos. -->

### `ruta/archivo.ext`

```diff
- línea original eliminada
+ línea nueva agregada
```

---

## Criterios de éxito verificados

| Criterio | Estado | Evidencia |
|----------|--------|-----------|
| [criterio del Mapa de Intención] | Cumplido | [cómo lo verificó el Auditor] |
| ...      | ...    | ...       |

---

## Deuda técnica identificada

<!-- Solo si el veredicto fue APROBADO CON OBSERVACIONES.
     Si fue APROBADO limpio, esta sección dice "Ninguna". -->

| # | Descripción | Severidad | Archivos afectados | Urgencia |
|---|-------------|-----------|-------------------|----------|
| 1 | [descripción] | MEDIA/BAJA | `archivo.ext` | [antes de X o "baja prioridad"] |

---

## Lo que el programador debe saber

<!-- Sección libre. Información que no encaja en las secciones anteriores
     pero que el programador necesita para trabajar con este código en el futuro. -->

- [Punto importante 1]
- [Convención nueva introducida que hay que mantener]

---

## Reportes de ejecución

<!-- Referencias a los reportes detallados generados durante el ciclo -->

| Iteración | Archivo de reporte |
|-----------|-------------------|
| 1         | `reports/[nombre-iter1].md` |
| N         | `reports/[nombre-iterN].md` |

Para ver los diffs completos de cada paso,
consultar los reportes de ejecución individuales listados arriba.
