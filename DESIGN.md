# Design System — Template

> Template de design system. Ajustar valores por proyecto.
> Framework UI: [definir, ej: shadcn/ui, Material UI, etc.]
> Componentes desde: [definir ruta, ej: @/components/ui/]

---

## Colores

| Token | Uso | Valor |
|-------|-----|-------|
| `--primary` | Acciones principales, links, elementos activos | `[definir]` |
| `--secondary` | Acciones secundarias | `[definir]` |
| `--destructive` | Eliminar, errores, peligro | `[definir]` |
| `--background` | Fondo general de página | `[definir]` |
| `--foreground` | Texto principal | `[definir]` |

---

## Tipografía

| Propiedad | Default |
|-----------|---------|
| Familia principal | `ui-sans-serif, system-ui, sans-serif` |
| Familia mono | `ui-monospace, SFMono-Regular, monospace` |

---

## Reglas obligatorias

1. **Siempre** usar componentes de la librería UI definida — nunca HTML nativo para inputs, botones, cards, tablas, diálogos, selects.
2. **Nunca** crear un componente desde cero si ya existe uno equivalente en la librería UI.
3. **Nunca** usar estilos inline ni clases CSS ad-hoc que repliquen funcionalidad de la librería.
4. **No modificar** la paleta de colores definida en este documento sin aprobación explícita.
