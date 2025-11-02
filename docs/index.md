# Accueil - Guide d'implémentation Fr Core v2.1.0

* [**Table of Contents**](toc.md)
* **Accueil**

## Accueil

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/core/ImplementationGuide/hl7.fhir.fr.core | *Version*:2.1.0 |
| Active as of 2025-11-02 | *Computable Name*:FrCore |

 **Profils, extensions, jeux de valeurs, et guides de mise en œuvre normalisant l'échange de données administratives sur les patients, les professionnels de santé et les organisations, et les rencontres avec les patients (programmées ou effectives), ainsi que les signes vitaux en France.**
 Profiles, extensions, value sets, code systems and implementation guides standardizing the exchange of administrative data about patients, health professionals and organization, and patient encounters (scheduled or effective), and vital sign in France 

> **Attention !**
La version de l'Implementation Guide que vous êtes en train de consulter est en intégration continue et n'est pas à utiliser car soumise à des changements réguliers. La version à utiliser est accessible ici : http://hl7.fr/ig/fhir/core.

### Introduction

Ce guide de mise en œuvre est fourni pour **soutenir l’utilisation de FHIR® en France**. Il permet de définir les profils, les extensions et les jeux de valeurs normalisant **l’échange de données administratives sur les patients, les professionnels de santé et les organisations, et les rencontres avec les patients (programmées ou effectives), ainsi que les signes vitaux**.

On y retrouve :

* Orientations sur les ressources essentielles profilées pour la France
* Extensions nécessaires à l’utilisation locale en France.

### Champ d’application

Ce document présente les concepts d’utilisation français définis par :

* Profils - contraintes utiles des ressources et types de données FHIR essentiels pour l’utilisation en France.
* Extensions - extensions FHIR ajoutées pour un usage local, couvrant les concepts français nécessaires.
* Terminologies - systèmes de codes et ensembles de valeurs définis ou référencés pour la France.

Les activités de profilage donnent la priorité aux ressources ayant un niveau de maturité suffisant (>=3). Chaque sujet fonctionnel est traité par un groupe de travail dédié d’Interop’Santé, réunissant des éditeurs de logiciels, des professionnels des établissements de santé et des représentants d’agences gouvernementales. Le consensus sur les ressources de conformité FHIR est établi d’abord au niveau du groupe de travail, puis au niveau des membres.

### Choix de la version du standard FHIR

Le Guide d’implémentation FR Core est **basé sur la version Release 4 de HL7 FHIR** et définit l’ensemble minimum de contraintes sur les ressources FHIR pour créer les profils FR Core. Elles font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API REST FHIR, basées sur le protocole HTTP. Les syntaxes retenues sont la syntaxe XML et JSON.

En établissant la “base” des normes pour promouvoir l’interopérabilité et l’adoption par le biais d’une mise en œuvre commune, il permet une évolution ultérieure de l’élaboration des normes pour des cas d’utilisation spécifiques.

La stratégie sur le choix des versions FHIR a été définie au sein d’un groupe de travail organisé entre Interop’Santé et l’ANS en 2023/2024, validée via une [concertation](https://participez.esante.gouv.fr/project/fhir-r5-ou-r4/presentation/presentation) de l’ANS.

#### Nouveaux cas d’usages FHIR adressés par Interop’Santé et l’ANS : privilégier FHIR R4 et anticiper la transition vers R6

Pour garantir la cohérence au sein de l’écosystème français, éviter tout problème de compatibilité ainsi que les travaux divergents, il est nécessaire d’utiliser une même version du standard FHIR à l’échelle nationale. Le choix a été fait de conserver FHIR R4 car il y a un existant conséquent en France et cela permet d’éviter une double transition R4 vers R5 et R5 vers R6 qui aurait un coût non négligeable. Ce choix est conforté car la release 6 se veut être la version finale stable de FHIR, une transition vers R6 se voudra de toute manière nécessaire. Pour anticiper cette transition, il est jugé important d’être proactif sur les travaux internationaux de développement de R6 et d’anticiper les impacts pour l’écosystème français. Il est également à noter que le choix national de la version FHIR utilisée devra être en accord avec le règlement de l’EEDS qui se dessine progressivement et qui pour l’heure semble se diriger vers R4.

#### Ne pas créer de guide d’implémentation (IG) se basant sur R5 sans analyse des normes et standards et des impacts

La priorité actuelle est de faire monter l’écosystème en compétences et de gagner en maturité sur les spécifications existantes. Créer des IGs R5 engendreraient une fragmentation de l’écosystème et un ralentissement de la mise en qualité de l’existant qui finirait par freiner l’adoption de FHIR.

Généralement, rajouter quelques [extensions qui miment les attributs R5](https://hl7.org/fhir/R5/versions.html#extensions) s’avère suffisant pour éviter de créer tout un guide en R5. Dans certains cas, une autre version de FHIR peut être justifiée, par exemple si le cas d’usage concerne des échanges internationaux ou si le cas d’usage est significativement mieux couvert par une autre version. Le cas échéant, l’usage d’une autre version devra être validé par une étude des normes et standards publiée et validée par l’écosystème.

Dans certains cas non identifiés à ce jour, il pourrait également être nécessaire de maintenir des guides d’implémentation sous plusieurs versions. Après validation par l’écosystème de ce besoin, cela donnerait l’opportunité d’estimer des travaux de maintenance d’Implementation Guide (IG) sous plusieurs versions ainsi qu’un mapping associé pour gagner en expérience.

#### Priorité FHIR France en 2025+ - améliorer la qualité de l’existant

De nombreux travaux ont été menés en 2023 pour mettre en qualité les spécifications FHIR et encourager leur déploiement, tel que le passage au format IG et la mise à jour des tests et validateurs gazelle.

Les priorités des prochaines années sont de continuer dans cette direction :

* La montée en compétences et l’acculturation des développeurs et des chefs de projets aux bonnes pratiques d’usages de FHIR, notamment en organisant des évènements par l'ANS et InteropSanté : projectathon, webinaires, formations, ...
* S’assurer de la faisabilité d’implémentation des IGs existants (amélioration du contenu narratif pour expliquer comment utiliser les ressources, s’assurer de la facilité d’accès au contenu, s'assurer que les IGs soient bien connus …).
* Prise en main des outils de mapping tel que le FHIR Mapping Language afin d'assurer une transition maîtrisée vers une autre version de FHIR.
* Anticiper les prochaines évolutions internationales : passage au FHIR Document dans le cadre du règlement européen, anticiper la transition vers FHIR R6, ...

Il est également nécessaire de rester à l’écoute des tendances internationales en interopérabilité et de se garder la possibilité de réitérer l’analyse si le besoin ou le contexte international évolue, en particulier l’EEDS.

### Gouvernance

Le guide d’implémentation FR Core est géré par HL7 France et IHE France au sein du comité technique FHIR de HL7 France.

### Auteurs et contributeurs

| | | |
| :--- | :--- | :--- |
| **Auteur** | Nicolas Riss | Agence du Numérique en Santé |
| **Auteur** | Yohann Poiron | Agence du Numérique en Santé |
| Contributeur | Marie Brulliard | Kereval |
| Contributeur | Sylvain Demey | Agence du Numérique en Santé |
| Contributeur | Isabelle Gibaud | Agence du Numérique en Santé |

## Dépendances







## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.fr.core",
  "url" : "https://hl7.fr/ig/fhir/core/ImplementationGuide/hl7.fhir.fr.core",
  "version" : "2.1.0",
  "name" : "FrCore",
  "title" : "Guide d'implémentation Fr Core",
  "status" : "active",
  "date" : "2025-11-02T18:22:16+01:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "InteropSanté",
      "telecom" : [
        {
          "system" : "email",
          "value" : "fhir@interopsante.org",
          "use" : "work"
        }
      ]
    }
  ],
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "France"
        }
      ]
    }
  ],
  "packageId" : "hl7.fhir.fr.core",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "6.5.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "ans_fr_nos",
      "uri" : "https://interop.esante.gouv.fr/ig/nos/ImplementationGuide/ans.fr.nos",
      "packageId" : "ans.fr.nos",
      "version" : "1.3.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2023+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "trial-use"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://hl7.fr/ig/fhir/core/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2023+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "trial-use"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://hl7.fr/ig/fhir/core/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-address-insee-code"
        },
        "name" : "FR Core Address Insee Code Extension",
        "description" : "Extension d'ajout du code insee (5 chiffres) à l'adresse postale.\r\nThis extension adds the insee code (5 digits) to the address",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-address"
        },
        "name" : "FR Core Address Profile",
        "description" : "Profil du type de données Address pour la France, ce profil ajoute le code insee à l'adresse. Une cohérence entre code commune (COG), code postal et nom de commune doit être assurée.\r\nFrench profile of Address datatype",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-champ-activite"
        },
        "name" : "FR Core CodeSystem Champ Activite - Codes du champ d'activité",
        "description" : "Champ d'activité clinique de l'organisation type UF, tel que cité dans les fiches pratiques de comptabilité analytique hospitalière, de la DGOS.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-code-tarif-tnjp"
        },
        "name" : "FR Core CodeSystem Codes Tarifs - nomenclature TNJP",
        "description" : "La nomenclature des codes Tarif - Tarifs Nationaux Journaliers des Prestations",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-discipline-equipement"
        },
        "name" : "FR Core CodeSystem Discipline d'Equipement - nomenclature SAE",
        "description" : "La nomenclature de disciplines d'équipement est utilisée pour ventiler l'activité et le personnel entre les différentes disciplines de la section hôpital (MCO, PSY, HAD, SMR et SLD) et la discipline 'administration, services hôteliers et techniques'. La nomenclature des disciplines d’équipement s’applique aux unités fonctionnelles et aux sections issues du fichier de structure des établissements. Les disciplines sociales, médico-sociales et de formation n'apparaissent pas, car elles ne font pas partie du champ de la SAE.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-discipline-prestation"
        },
        "name" : "FR Core CodeSystem Discipline de prestation - nomenclature SAE",
        "description" : "La nomenclature des discipline de prestation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-location-type"
        },
        "name" : "FR Core CodeSystem Location Type",
        "description" : "Location type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-location-position-lit"
        },
        "name" : "FR Core CodeSystem Position du lit",
        "description" : "Position du lit dans la chambre",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-location-type-chambre"
        },
        "name" : "FR Core CodeSystem Type Chambre",
        "description" : "Type de chambre",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-type-activite"
        },
        "name" : "FR Core CodeSystem Type d'activité - nomenclature SAE",
        "description" : "La nomenclature des types d'activité.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-uf-indicateur"
        },
        "name" : "FR Core CodeSystem UF Indicator - indicateur d'une unité fonctionnelle",
        "description" : "Système de codage permettant de définir les indicateurs d'une unité fonctionnelle.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-core-cs-v2-3307"
        },
        "name" : "FR Core CodeSystem v2-3307",
        "description" : "HL7 v2 - Table 3307",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-contact-point-email-type"
        },
        "name" : "FR Core Contact Point Email Type Extension",
        "description" : "Extension permettant d'indiquer le type d'adresse email d'un ContactPoint.\n\r This extension allows to specify the type of mail used to contact the person.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-contact-point"
        },
        "name" : "FR Core Contact Point Profile",
        "description" : "Profil du type de données ContactPoint pour la France, ce profil ajoute le type d'e-mail tel que la bal mss.\r\nFrench profile of ContactPoint datatype",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-location-position-lit"
        },
        "name" : "FR Core Location Extension - Position du lit",
        "description" : "Position du lit dans la chambre",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-location-type-chambre"
        },
        "name" : "FR Core Location Extension - Type de chambre",
        "description" : "Type de chambre",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-location"
        },
        "name" : "FR Core Location Profile",
        "description" : "Ressource Location adaptée au contexte français. \nCette ressource est utilisée pour représenter un lieu physique, telle qu'une salle d'examen, \nun lit d'hôpital ou une chambre d'hôpital.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-description"
        },
        "name" : "FR Core Organization Description Extension",
        "description" : "Description textuelle d'une organisation",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-etablissement"
        },
        "name" : "FR Core Organization Etablissement Profile",
        "description" : "Profil de la ressource Organization permettant de représenter des établissements sanitaires et sociaux.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-sae-category"
        },
        "name" : "FR Core Organization Extension - Catetgorie SAE",
        "description" : "Categorie d'établissement de santé, suivant les valeurs de la SAE (Structure d'Activité d'Etablissement)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-champ-activite"
        },
        "name" : "FR Core Organization Extension - Champ d'activité",
        "description" : "Champ d'activité d'une UF",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-demandeuse-acte"
        },
        "name" : "FR Core Organization Extension - Demandeuse d'acte",
        "description" : "Indicateur permettant de définir si une UF peut demander des actes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-discipline-equipement"
        },
        "name" : "FR Core Organization Extension - Discipline d'équipement",
        "description" : "Discipline d'équipement",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-discipline-prestation"
        },
        "name" : "FR Core Organization Extension - Discipline Prestation",
        "description" : "Discipline de prestation d'une UAC",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-executante-acte"
        },
        "name" : "FR Core Organization Extension - Exécutante d'acte",
        "description" : "Indicateur permettant de définir si une UF peut exécuter des actes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-uf-indicateur"
        },
        "name" : "FR Core Organization Extension - Indicateur d'une unité fonctionnelle",
        "description" : "Indicateur permettant de définir si une UF est d'hébergement, médicale, administrative ou de magasin.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-member"
        },
        "name" : "FR Core Organization Extension - Membre d'organisation",
        "description" : "Extension permettant de définir des membres d'une organisation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-place-hebergement-theorique"
        },
        "name" : "FR Core Organization Extension - Nombre total de places d'hébergement théoriques",
        "description" : "Nombre total de places d'hébergement théoriques",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-tarif"
        },
        "name" : "FR Core Organization Extension - Tarif Soin",
        "description" : "Tarif de soin associé à l'unité d'activité (UAC, parfois appelé PAC). Le PAC ou l’UAC est le niveau élémentaire de recueil des activités en vue de la facturation. Il est lié à une discipline de prestation et à un tarif (lié à la discipline de prestation). Le PAC ne sert qu’à la facturation du séjour. Il permet d’associer des tarifs de soins différents pour la prise en charge d’un patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-type-activite"
        },
        "name" : "FR Core Organization Extension - Type d'activité",
        "description" : "Type d'activité d'une UF",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-uf-externe"
        },
        "name" : "FR Core Organization Extension - UF Externe",
        "description" : "Indicateur permettant de définir si une UF est externe à l'établissement",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization"
        },
        "name" : "FR Core Organization Profile",
        "description" : "Profil de la ressource Organization pour la France. Il s'agit du profil de base pour les organisations en France.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-raison-sociale"
        },
        "name" : "FR Core Organization Raison Sociale Extension",
        "description" : "Raison Sociale l'organisation",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-short-name"
        },
        "name" : "FR Core Organization Short Name Extension",
        "description" : "Libellé court de l'organisation",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-uac"
        },
        "name" : "FR Core Organization UAC Profile",
        "description" : "Ce profil permet de représenter les unités d'activité (UAC, parfois appelé PAC). Le PAC ou l’UAC est le niveau élémentaire de recueil des activités en vue de la facturation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-core-organization-uf"
        },
        "name" : "FR Core Organization UF Profile",
        "description" : "Profil de la ressource Organization permettant de représenter les unités fonctionnelles en établissement.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-categorie-sae-etablissement"
        },
        "name" : "FR Core ValueSet Categorie SAE Etablissement",
        "description" : "Catégrorie d'établissement de santé, suivant les valeurs de la SAE (Structure d'Activité d'Etablissement) 2024",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-oragnization-code-tarif-tnjp"
        },
        "name" : "FR Core ValueSet Codes Tarifs - nomenclature TNJP",
        "description" : "Valeurs permettant de coder les codes tarif.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-email-type"
        },
        "name" : "FR Core ValueSet Email type",
        "description" : "The type of email",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-insee-code"
        },
        "name" : "FR Core ValueSet INSEE code",
        "description" : "the French Address Insee Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-location-position-lit"
        },
        "name" : "FR Core ValueSet Location Position Lit",
        "description" : "Position du lit dans la chambre",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-location-type"
        },
        "name" : "FR Core ValueSet Location type",
        "description" : "Jeu de valeurs du rôle joué par un lieu.\n\rA role for a location",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-location-type-chambre"
        },
        "name" : "FR Core ValueSet Location Type Chambre",
        "description" : "Type de chambre",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-champ-activite"
        },
        "name" : "FR Core ValueSet Organization Champ Activite - Champ d'activité clinique de l'organisation type UF",
        "description" : "Champ d'activité d'une organisation type UF.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-discipline-equipement"
        },
        "name" : "FR Core ValueSet Organization Discipline d'Equipement - nomenclature SAE",
        "description" : "Valeurs permettant de coder les disciplines d'équipement.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-discipline-prestation"
        },
        "name" : "FR Core ValueSet Organization Discipline de prestation - nomenclature SAE",
        "description" : "Valeurs permettant de coder les disciplines de prestation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-etablissement-type"
        },
        "name" : "FR Core ValueSet Organization Etablisement type",
        "description" : "Types d'organisation représentant des établissements.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-identifier-type"
        },
        "name" : "FR Core ValueSet Organization identifier type",
        "description" : "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose (Organizations).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-type"
        },
        "name" : "FR Core ValueSet Organization type",
        "description" : "Types de structures",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-oragnization-type-activite"
        },
        "name" : "FR Core ValueSet Organization Type Activité - nomenclature SAE",
        "description" : "Valeurs permettant de coder les types d'activité.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-uac-type"
        },
        "name" : "FR Core ValueSet Organization UAC type",
        "description" : "Types de structure représentant des unités d'activité.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-uf-indicateur"
        },
        "name" : "FR Core ValueSet Organization UF type",
        "description" : "Indicateur d'une unité fonctionnelle.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-core-vs-organization-uf-type"
        },
        "name" : "FR Core ValueSet Organization UF type",
        "description" : "Type de structure représentant des unités fonctionnelles.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-dept-11003-endocrino"
        },
        "name" : "hopitaltest-dept-11003-endocrino",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-eg-4-members"
        },
        "name" : "hopitaltest-eg-4-members",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-etablissement"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-ej-350005179"
        },
        "name" : "hopitaltest-ej-350005179",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-etablissement"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/hopitaltest-endocrino-ch04"
        },
        "name" : "hopitaltest-endocrino-ch04",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/hopitaltest-endocrino-ch04-litF"
        },
        "name" : "hopitaltest-endocrino-ch04-litF",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-pole-1150-med-spe"
        },
        "name" : "hopitaltest-pole-1150-med-spe",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/hopitaltest-salle-examen-01"
        },
        "name" : "hopitaltest-salle-examen-01",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-service-11006-endocrino-diabo"
        },
        "name" : "hopitaltest-service-11006-endocrino-diabo",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-service-11007-dietetique"
        },
        "name" : "hopitaltest-service-11007-dietetique",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-uac-4420-uac-01"
        },
        "name" : "hopitaltest-uac-4420-uac-01",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uac"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-uac-4420-uac-02"
        },
        "name" : "hopitaltest-uac-4420-uac-02",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uac"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-uf-4420-dialyse"
        },
        "name" : "hopitaltest-uf-4420-dialyse",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-uf-4701-endocrino-diab"
        },
        "name" : "hopitaltest-uf-4701-endocrino-diab",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/hopitaltest-uf-4705-nutrition"
        },
        "name" : "hopitaltest-uf-4705-nutrition",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf"
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Accueil",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "profile_list.html"
            }
          ],
          "nameUrl" : "profile_list.html",
          "title" : "Liste des profils",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "bonnes_pratiques.html"
            }
          ],
          "nameUrl" : "bonnes_pratiques.html",
          "title" : "Bonnes pratiques",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "autres_ressources.html"
            }
          ],
          "nameUrl" : "autres_ressources.html",
          "title" : "Autres Ressources",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "downloads.html"
                }
              ],
              "nameUrl" : "downloads.html",
              "title" : "Téléchargements et usages",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "a_propos.html"
                }
              ],
              "nameUrl" : "a_propos.html",
              "title" : "A propos",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "structure_intro.html"
            }
          ],
          "nameUrl" : "structure_intro.html",
          "title" : "Introduction",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "structure_entites.html"
            }
          ],
          "nameUrl" : "structure_entites.html",
          "title" : "Entités",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "structure_relations.html"
            }
          ],
          "nameUrl" : "structure_relations.html",
          "title" : "Relations entre entités",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "structure_contraintes.html"
            }
          ],
          "nameUrl" : "structure_contraintes.html",
          "title" : "Contraintes sur les profils",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "structure_nomenclatures.html"
            }
          ],
          "nameUrl" : "structure_nomenclatures.html",
          "title" : "Nomenclatures",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "structure_ref_loi.html"
            }
          ],
          "nameUrl" : "structure_ref_loi.html",
          "title" : "Références",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
