Feature: Completar tareas

Scenario: Marcar una tarea como completada

Given que existe una tarea pendiente
When el usuario la marca como completada
Then el sistema actualiza su estado

Scenario: Visualizar tareas completadas

Given que existen tareas completadas
When el usuario consulta el historial
Then el sistema muestra las tareas finalizadas
