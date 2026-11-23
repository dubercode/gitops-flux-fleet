Archivo de documentacion principal Estrategia GitOps

# GitOps Fleet Platform Architecture

## Documentation

The detailed technical documentation is available here:

- [GitOps Platform Foundation](docs/platform-foundation.md)

## Source of Truth

GitHub is the source of truth for Kubernetes desired state.

## Responsibilities

- GitHub: source of truth for Kubernetes desired state.
- Flux source-controller: retrieves Git sources.
- Flux kustomize-controller: reconciles Kubernetes manifests.
- Flux helm-controller: manages Helm releases.
- GitHub Actions: validates manifests before deployment.
- Minikube: local Kubernetes environment.
- Kustomize: manages reusable application manifests.

## Reconciliation Flow

1. Developer creates a feature branch.
2. Developer opens a Pull Request.
3. GitHub Actions validates manifests.
4. Changes are reviewed and merged.
5. Flux detects the new Git revision.
6. source-controller retrieves the repository.
7. kustomize-controller applies the desired state.
8. Kubernetes controllers reconcile the workloads.

## Application Ownership

Flux owns application namespaces and workloads.

Terraform does not manage resources that are reconciled by Flux.


## Funciones Principales:
1. Bootstrap de un clúster desde cero.
2. Incorporación de una aplicación nueva sin modificar la infraestructura.
3. Promoción controlada de dev a staging y producción.
4. Reversión de una versión mediante git revert.
5. Bloqueo de una imagen que incumpla las políticas.
6. Separación de permisos entre equipos.
7. Recuperación después de eliminar un recurso gestionado por Flux.
8. Validación automática de manifiestos antes de aceptar un Pull Request.