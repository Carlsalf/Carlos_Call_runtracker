# Práctica 1 – RunTracker (iOS)

**Alumno:** Carlos Alfredo Callagua Llaque

## Descripción general
Aplicación iOS desarrollada con **SwiftUI + CoreData** para registrar y visualizar recorridos de carrera (runs).  
Permite almacenar actividades de forma persistente y calcular estadísticas básicas.

## Funcionalidades / clases principales
- **RunsListView:** listado de recorridos guardados ordenados por fecha.
- **AddRunView:** creación de un nuevo recorrido (fecha, distancia, notas) con persistencia en CoreData.
- **RunDetailView:** visualización detallada de un recorrido.
- **StatsView:** cálculo y visualización del total de distancia acumulada.
- **Persistence.swift:** configuración del stack de CoreData.

## Dificultades y solución
- Problemas iniciales con tipos de entidad (`RunEntity`) no reconocidos → solución: configuración correcta del modelo CoreData y `import CoreData`.
- Validaciones de entrada en el formulario de creación.
- Actualización automática de la vista mediante `@FetchRequest`.

## Propuesta de evaluación (sobre 10)
- Estructura del proyecto + navegación básica: 2/10
- Registro y listado funcionando: 3/10
- Detalle + validaciones: 2/10
- Persistencia correctamente implementada: 2/10
- Extras (UI/UX, mejoras adicionales): 1/10

> Nota: la autoevaluación podrá ajustarse según los criterios finales de corrección.
