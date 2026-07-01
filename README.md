# dev-agents

Agentes de desarrollo de software para [opencode](https://opencode.ai). Sistema multi-agente de 13 agentes especializados que cubren planificación, ejecución, auditoría, debugging, testing y archivado. Incluye bootstrap (AGENTS.md) y template de design system (DESIGN.md).

## Instalación

```bash
rm -rf /tmp/da
git clone --depth 1 git@github.com:manuelesp1/dev-agents.git /tmp/da
mkdir -p .opencode
cp /tmp/da/{AGENTS.md,DESIGN.md} .opencode/ && cp -r /tmp/da/{agents,templates,persona.md} .opencode/
rm -rf /tmp/da
```

## Actualización

```bash
rm -rf /tmp/da
git clone --depth 1 git@github.com:manuelesp1/dev-agents.git /tmp/da
mkdir -p .opencode
cp /tmp/da/{AGENTS.md,DESIGN.md} .opencode/ && cp -r /tmp/da/{agents,templates,persona.md} .opencode/
rm -rf /tmp/da
```

## Qué incluye

| Agente | Rol |
|--------|-----|
| **Orchestrator** | Coordina el pipeline entre agentes. Clasifica tareas en 7 tipos. |
| **Planner** | Orquesta planificación: Explore → Propose → Spec → Design → Tasks |
| **Explore** | Escanea el codebase, infiere stack y convenciones |
| **Propose** | Propone enfoques de solución con trade-offs |
| **Spec** | Especificación técnica con requisitos y escenarios |
| **Design** | Diseño arquitectónico: componentes, flujo, decisiones |
| **Tasks** | Desglosa el diseño en tareas atómicas ejecutables |
| **Executor** | Ejecuta planes paso a paso. Modo MANUAL o AUTO. |
| **Auditor** | Cruza cambios contra buenas prácticas y skills del proyecto |
| **Debugger** | Diagnóstico de bugs: tracing, causa raíz, plan de fix |
| **Tester** | Pruebas E2E con Playwright |
| **Archive** | Consolida reportes, actualiza PROJECT.md, persiste en Engram |
| **QueryReviewer** | Revisa rendimiento de SPs y queries con EXPLAIN |

| Archivo | Rol |
|---------|-----|
| **AGENTS.md** | Bootstrap: le dice a cada agente que lea PROJECT.md y DESIGN.md si existen |
| **DESIGN.md** | Template de design system: colores, tipografía, reglas obligatorias |

## Qué NO incluye

- **Skills** (`amg-payments`, `amg-portfolio`, etc.) — específicos de cada proyecto.
- **PROJECT.md** y **DESIGN.md (concreto)** — se generan/llenan por proyecto. El template DESIGN.md está incluido.
- **`opencode.json`** — configuración de opencode, propia de cada proyecto.

## Requisitos

- [opencode](https://opencode.ai) instalado
- Llave SSH configurada en GitHub (`git@github.com`)
- Un proyecto de software existente (el script se ejecuta en la raíz)

## Flujo

```
Usuario → Orchestrator ──→ Planner ──→ Explore, Propose, Spec, Design, Tasks
                    │                                  ↓
                    ├──→ Debugger ──→ Executor ──→ Auditor ──→ Archive
                    │                                  ↑
                    └──→ Auto-retry (TRIVIAL/COMPLEJO)─┘
```
