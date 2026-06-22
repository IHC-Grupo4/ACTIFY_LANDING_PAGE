Feature: Seguimiento de progreso

Scenario: Consultar progreso diario

Given que el usuario ha completado actividades
When accede al panel de progreso
Then el sistema muestra estadísticas actualizadas

Scenario: Visualizar tareas completadas

Given que existen tareas finalizadas
When el usuario consulta el historial
Then el sistema muestra el listado de tareas completadas
