# Claude Code - Setup

## Skills

Para restaurar todos los skills desde el lock file, ejecutar:

```bash
npx skills experimental_install
```

Esto instala automáticamente los 17 skills registrados en `skills-lock.json`.

## Skills disponibles

| Skill | Fuente |
|---|---|
| `agent-browser` | vercel-labs/agent-browser |
| `karpathy-guidelines` | multica-ai/andrej-karpathy-skills |
| `skill-creator` | anthropics/skills |
| `brainstorming` + 13 más | obra/superpowers |

## Agregar un skill nuevo (y sincronizar con GitHub)

```cmd
skills-add.bat autor/nombre-skill
```
