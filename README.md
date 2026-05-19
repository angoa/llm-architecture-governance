---
AGDSL_VERSION=1.0.0
DOMAIN=repository_governance
SEMANTIC_ROLE=repository_canonical_guide
STATUS=EXPERIMENTAL
GOVERNANCE_ALIGNMENT=META_SDD_v1.0.0
---

# LLM Architecture Governance

![Status](https://img.shields.io/badge/STATUS-EXPERIMENTAL-orange)
![Version](https://img.shields.io/badge/version-1.0.0-blue)
![Classification](https://img.shields.io/badge/classification-AI_Native_Semantic_Governance_Framework-purple)
![Parser](https://img.shields.io/badge/parser-planned-lightgrey)
![Validator](https://img.shields.io/badge/validator-planned-lightgrey)
![CI](https://img.shields.io/badge/CI_enforcement-planned-lightgrey)
![Provider](https://img.shields.io/badge/provider-agnostic-brightgreen)
![License](https://img.shields.io/badge/license-TBD-lightgrey)
![Author](https://img.shields.io/badge/author-angoa-blue)

**AI-native semantic governance framework for deterministic LLM alignment, domain DSL generation, and provider-agnostic architectural governance.**

Este repositorio es la **fuente canónica** para la especificación `AGDSL` y su framework de gobierno asociado.

---

## Clasificación del Proyecto

```agdsl
CLASSIFICATION=
framework_type=AI_native_semantic_governance
architecture_layer=governance_orchestration
consumer=LLMs|Agents|Validators|Assemblers
governance_model=specification_driven
semantic_role=canonical_source_of_truth
```

---

## Estado Actual

```agdsl
STATUS=EXPERIMENTAL
MATURITY=governance_foundation
PARSER=planned
VALIDATOR=planned
CI_ENFORCEMENT=planned
SEMANTIC_VERSION=1.0.0
```

| Badge | Estado |
|-------|--------|
| ![Status](https://img.shields.io/badge/STATUS-EXPERIMENTAL-orange) | Framework en fase experimental, governance foundation estable |
| ![Parser](https://img.shields.io/badge/parser-planned-lightgrey) | Parser determinístico planificado para Fase 3 |
| ![Validator](https://img.shields.io/badge/validator-planned-lightgrey) | Validadores semánticos planificados |
| ![CI](https://img.shields.io/badge/CI_enforcement-planned-lightgrey) | CI enforcement planificado |

**Nota:** La especificación `META-SDD` y su proyección `.agdsl` son estables para revisión y diseño. Las herramientas de parser y validación están en fase de planificación para la Fase 3.

---

## Arquitectura Fundamental: Separación de Capas

El proyecto se rige por una estricta separación entre la gobernanza humana y la proyección operacional para máquinas.

| Capa | Formato | Rol | Audiencia |
| :--- | :--- | :--- | :--- |
| **Canonical Governance Source** | `.md` | Fuente de verdad semántica, racional arquitectónica, ADRs. | Humanos, Arquitectos, Revisores |
| **Operational Projection** | `.agdsl` | Proyección semántica determinística, lista para inyectar. | LLMs, Agentes, Validadores, RAG |
| **Domain DSL** | `.agdsl` | Concreción para un dominio específico (ej: Java, Oracle). | LLMs, Agentes, Pipelines de Gobernanza |

**Regla Fundamental:** Toda proyección `.agdsl` **DEBE** ser derivada semánticamente de su fuente `.md` canónica. La equivalencia semántica es un requisito no negociable.

---

## Estrategia de Compresión y Gobernanza

Este framework NO utiliza compresión opaca por hash. Empleamos **compresión semántica estructurada**:

*   **Alias Estables:** `OBS1st` (Observabilidad), `NOORM` (Prohibición de ORM), `SQL1st` (SQL-first).
*   **Almacenamiento:** Los aliases se registran y versionan en `semantic_aliases.agdsl`.
*   **Gobernanza:** El cambio de un alias es un breaking change que requiere ADR y aprobación.
*   **Prohibiciones Explícitas:** El framework **PROHÍBE** el uso de hashes opacos, tokens específicos de proveedores y la fuga de secretos de ejecución en la especificación.

---

## Estructura del Repositorio

```text
llm-architecture-governance/
├── README.md                           # Este archivo (guía canónica del repo)
├── LICENSE
│
├── meta/                               # Capa 1: Gobernanza Fundamental
│   ├── LLM_ARCHITECTURE_GOVERNANCE_META_SDD.md   # Canonical governance source
│   └── LLM_ARCHITECTURE_GOVERNANCE_META_SDD.agdsl # Operational projection
│
├── domains/                            # Capa 3: DSLs de Dominio Concretos
│   ├── base/                           # Primitivas base
│   ├── java/                           # Gobernanza para ecosistema Java
│   ├── oracle/                         # Gobernanza para PL/SQL y Oracle
│   └── observability/                  # Gobernanza para telemetría y logs
│
├── schemas/                            # Artefactos de Validación
│   ├── agdsl.schema.json               # Schema formal para AGDSL
│   └── grammar/                        # Gramática para parser
│
├── validators/                         # Validadores semánticos planificados
├── assemblers/                         # Ensambladores de contexto planificados
├── parsers/                            # Parsers determinísticos planificados
├── examples/                           # Ejemplos de uso del framework
├── adr/                                # Architecture Decision Records
└── docs/                               # Documentación extensiva
```

---

## Flujo de Trabajo Operacional

El pipeline conceptual que gobierna este framework es:

```text
[Canonical Source: LLM_ARCHITECTURE_GOVERNANCE_META_SDD.md]
                    │
                    ▼ (Semantic Extraction)
[Operational Projection: META_SDD.agdsl]
                    │
                    ▼ (Context Assembly)
[Domain DSL: sipres-legacy-refactor.agdsl, etc.]
                    │
                    ▼ (LLM Context Injection)
[Aligned, Governed, Deterministic AI Output]
```

---

## Modelo de Riesgos Gobernados

El framework modela y busca mitigar activamente los siguientes riesgos semánticos:

```agdsl
RISK_MODEL=
semantic_drift:critical|
ontology_drift:critical|
layer_confusion:critical|
governance_leak:critical|
alias_collision:high|
non_deterministic_output:high
```

| Riesgo | Nivel | Descripción |
|--------|-------|-------------|
| ![Risk](https://img.shields.io/badge/semantic_drift-critical-red) | CRITICAL | Pérdida de significado semántico entre versiones |
| ![Risk](https://img.shields.io/badge/ontology_drift-critical-red) | CRITICAL | Cambio en la ontología subyacente del dominio |
| ![Risk](https://img.shields.io/badge/layer_confusion-critical-red) | CRITICAL | Mezcla de capas canonical/operational/domain |
| ![Risk](https://img.shields.io/badge/governance_leak-critical-red) | CRITICAL | Fuga de reglas de gobierno a capas incorrectas |
| ![Risk](https://img.shields.io/badge/alias_collision-high-orange) | HIGH | Colisión entre aliases semánticos registrados |
| ![Risk](https://img.shields.io/badge/non_deterministic_output-high-orange) | HIGH | Salida no determinística para mismo input |

---

## Próximos Pasos (Roadmap)

-   **Fase 1 (Actual):** Fundación `META-SDD`, separación de capas, definición de gramática.
-   **Fase 2:** Registro central de aliases, mecanismos de importación/composición, primeros validadores semánticos.
-   **Fase 3:** Implementación del parser determinístico, validación por schema, integración en CI.
-   **Fase 4:** Gobernanza en tiempo de ejecución, grafo de gobierno multi-dominio, agentes con gobernanza nativa.

| Fase | Estado |
|------|--------|
| ![Phase1](https://img.shields.io/badge/Phase_1-Complete-brightgreen) | Fundación META-SDD |
| ![Phase2](https://img.shields.io/badge/Phase_2-In_Progress-yellow) | Registro de aliases y validadores |
| ![Phase3](https://img.shields.io/badge/Phase_3-Planned-lightgrey) | Parser y CI enforcement |
| ![Phase4](https://img.shields.io/badge/Phase_4-Planned-lightgrey) | Gobernanza en tiempo de ejecución |

---

## Directrices de Contribución

Cualquier cambio en la especificación **DEBE**:

1.  Preservar la **equivalencia semántica** entre el fuente `.md` y la proyección `.agdsl`.
2.  Mantener la **neutralidad de proveedor**.
3.  Incluir un **ADR** y un análisis de impacto semántico para cambios críticos (`ontology_drift`, `layer_confusion`).

![PRs](https://img.shields.io/badge/PRs-welcome-brightgreen)
![ADRs](https://img.shields.io/badge/ADRs-required-blue)
![Reviews](https://img.shields.io/badge/reviews-required-orange)

---

## Licencia

![License](https://img.shields.io/badge/license-TBD-lightgrey)

TBD

---

## Autor y Gobernanza

```agdsl
AUTHOR=angoa
ROLE=foundational_architecture_governance
CLASSIFICATION=AI_native_semantic_governance_framework
GOVERNANCE_MODEL=specification_driven
```

![Author](https://img.shields.io/badge/author-angoa-blue)
![Governance](https://img.shields.io/badge/governance-specification_driven-purple)

---

**Clasificación SOTA:** Este proyecto representa un `AI_NATIVE_SEMANTIC_GOVERNANCE_FRAMEWORK`, avanzando más allá de la ingeniería de prompts hacia una especificación formal de alineamiento arquitectónico para sistemas de IA.

![SOTA](https://img.shields.io/badge/SOTA-AI_Native_Semantic_Governance-brightgreen)
![Enterprise](https://img.shields.io/badge/enterprise-ready_in_foundation-orange)
