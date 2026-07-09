Feature: Edición de tareas

Scenario: Modificar una tarea

Given que existe una tarea registrada
When el usuario edita la información
Then el sistema guarda los cambios

Scenario: Visualizar tarea actualizada

Given que la tarea fue modificada
When el usuario consulta la lista
Then el sistema muestra la información actualizada
