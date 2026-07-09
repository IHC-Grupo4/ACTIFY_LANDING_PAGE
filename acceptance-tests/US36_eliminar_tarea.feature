Feature: Eliminación de tareas

Scenario: Eliminar una tarea

Given que existe una tarea registrada
When el usuario selecciona eliminar
Then el sistema elimina la tarea

Scenario: Confirmar eliminación

Given que el usuario desea eliminar una tarea
When confirma la acción
Then el sistema actualiza la lista de tareas
