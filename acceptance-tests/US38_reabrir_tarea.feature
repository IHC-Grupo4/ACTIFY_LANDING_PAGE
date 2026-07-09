Feature: Reapertura de tareas

Scenario: Reabrir una tarea

Given que existe una tarea completada
When el usuario selecciona reabrir
Then el sistema cambia el estado a pendiente

Scenario: Visualizar tarea reabierta

Given que la tarea fue reabierta
When el usuario consulta la lista
Then el sistema muestra la tarea como pendiente
