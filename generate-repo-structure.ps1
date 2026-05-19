# generate-repo-structure.ps1
# Script para generar la estructura de carpetas del repositorio llm-architecture-governance
# Ejecutar desde la raíz del repositorio: C:\code\llm-architecture-governance

Write-Host "=== LLM Architecture Governance - Repository Structure Generator ===" -ForegroundColor Cyan
Write-Host ""

# Verificar que estamos en el directorio correcto
if (-not (Test-Path "meta")) {
    Write-Host "ERROR: No se encuentra la carpeta 'meta'" -ForegroundColor Red
    Write-Host "Asegurate de ejecutar este script desde la raíz del repositorio" -ForegroundColor Yellow
    Write-Host "Ruta actual: $(Get-Location)" -ForegroundColor Gray
    exit 1
}

Write-Host "✅ Carpeta 'meta' encontrada. Continuando..." -ForegroundColor Green
Write-Host ""

# Definir estructura de carpetas
$folders = @(
    # Dominios base
    "domains/base",
    "domains/java",
    "domains/oracle",
    "domains/observability",
    
    # Esquemas y gramática
    "schemas/grammar",
    
    # Validadores y herramientas
    "validators",
    "assemblers",
    "parsers",
    
    # Ejemplos y documentación
    "examples",
    "adr",
    "docs"
)

# Crear carpetas
Write-Host "Creando estructura de carpetas..." -ForegroundColor Yellow
Write-Host ""

foreach ($folder in $folders) {
    $fullPath = Join-Path -Path (Get-Location) -ChildPath $folder
    if (-not (Test-Path $fullPath)) {
        New-Item -ItemType Directory -Path $fullPath -Force | Out-Null
        Write-Host "  📁 Creado: $folder" -ForegroundColor Green
    } else {
        Write-Host "  📁 Ya existe: $folder" -ForegroundColor Gray
    }
}

Write-Host ""
Write-Host "=== Estructura completada ===" -ForegroundColor Cyan
Write-Host ""

# Mostrar estructura final
Write-Host "Estructura final del repositorio:" -ForegroundColor Yellow
Write-Host ""
Write-Host "llm-architecture-governance/" -ForegroundColor Cyan
Write-Host "├── meta/" -ForegroundColor Green
Write-Host "│   ├── LLM_ARCHITECTURE_GOVERNANCE_META_SDD.md" -ForegroundColor Gray
Write-Host "│   └── LLM_ARCHITECTURE_GOVERNANCE_META_SDD.agdsl" -ForegroundColor Gray
Write-Host "├── domains/" -ForegroundColor Green
Write-Host "│   ├── base/" -ForegroundColor Gray
Write-Host "│   ├── java/" -ForegroundColor Gray
Write-Host "│   ├── oracle/" -ForegroundColor Gray
Write-Host "│   └── observability/" -ForegroundColor Gray
Write-Host "├── schemas/" -ForegroundColor Green
Write-Host "│   ├── agdsl.schema.json (pendiente)" -ForegroundColor Gray
Write-Host "│   └── grammar/" -ForegroundColor Gray
Write-Host "├── validators/ (pendiente)" -ForegroundColor Gray
Write-Host "├── assemblers/ (pendiente)" -ForegroundColor Gray
Write-Host "├── parsers/ (pendiente)" -ForegroundColor Gray
Write-Host "├── examples/ (pendiente)" -ForegroundColor Gray
Write-Host "├── adr/ (pendiente)" -ForegroundColor Gray
Write-Host "├── docs/ (pendiente)" -ForegroundColor Gray
Write-Host "├── README.md" -ForegroundColor Gray
Write-Host "└── LICENSE (pendiente)" -ForegroundColor Gray

Write-Host ""
Write-Host "✅ Script completado" -ForegroundColor Green
Write-Host ""
Write-Host "Próximos pasos recomendados:" -ForegroundColor Yellow
Write-Host "  1. Crear archivos base en domains/base/" -ForegroundColor White
Write-Host "  2. Definir agdsl.schema.json en schemas/" -ForegroundColor White
Write-Host "  3. Crear archivos ADR en adr/" -ForegroundColor White
Write-Host "  4. Agregar ejemplos de uso en examples/" -ForegroundColor White

# Opcional: Crear archivos placeholder
Write-Host ""
$createPlaceholders = Read-Host "¿Deseas crear archivos placeholder? (s/N)"
if ($createPlaceholders -eq "s" -or $createPlaceholders -eq "S") {
    Write-Host ""
    Write-Host "Creando archivos placeholder..." -ForegroundColor Yellow
    
    # Schema placeholder
    $schemaPath = "schemas/agdsl.schema.json"
    if (-not (Test-Path $schemaPath)) {
        @'
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "$id": "https://github.com/angoa/llm-architecture-governance/schemas/agdsl.schema.json",
  "title": "AGDSL Schema",
  "description": "Schema for AI Governance Domain Specific Language",
  "version": "1.0.0",
  "type": "object",
  "additionalProperties": true,
  "required": ["DSL_NAME", "DSL_VERSION", "DOMAIN"]
}
'@ | Out-File -FilePath $schemaPath -Encoding UTF8
        Write-Host "  📄 Creado: schemas/agdsl.schema.json" -ForegroundColor Green
    }
    
    # ADR template
    $adrPath = "adr/ADR-0001-template.md"
    if (-not (Test-Path $adrPath)) {
        @'
# ADR-0001: [Título de la decisión]

## Fecha
YYYY-MM-DD

## Status
[PROPUESTO | ACEPTADO | DEPRECADO | REEMPLAZADO]

## Contexto
[Descripción del problema o situación que motiva esta decisión]

## Decisión
[Descripción de la decisión tomada]

## Consecuencias
### Positivas
- [Lista de consecuencias positivas]

### Negativas
- [Lista de consecuencias negativas]

## Alternativas consideradas
1. [Alternativa 1] - [Razón de rechazo]
2. [Alternativa 2] - [Razón de rechazo]

## Referencias
- [Enlaces a documentos relacionados]
'@ | Out-File -FilePath $adrPath -Encoding UTF8
        Write-Host "  📄 Creado: adr/ADR-0001-template.md" -ForegroundColor Green
    }
    
    # Example placeholder
    $examplePath = "examples/example-domain.agdsl"
    if (-not (Test-Path $examplePath)) {
        @'
DSL_NAME=EXAMPLE_DOMAIN
DSL_VERSION=1.0.0.20260519
DSL_STATUS=EXPERIMENTAL
DOMAIN=example_domain

GOAL=
demonstrate_agdsl_structure|
showcase_semantic_compression

STACK=
provider_agnostic|
plain_text|
key_value

RULES=
explicit_constraints|
deterministic_output

FORBIDDEN=
opaque_hashes|
vendor_lock_in

INSTRUCTION=
This_is_an_example_AGDSL_file
'@ | Out-File -FilePath $examplePath -Encoding UTF8
        Write-Host "  📄 Creado: examples/example-domain.agdsl" -ForegroundColor Green
    }
    
    Write-Host ""
    Write-Host "✅ Archivos placeholder creados" -ForegroundColor Green
}

Write-Host ""
Write-Host "🎉 Listo! El repositorio está estructurado." -ForegroundColor Cyan