Feature: Selección de tarea

Scenario: Seleccionar tarea pendiente

Given que el usuario posee tareas registradas
When selecciona una tarea
Then el sistema la establece como tarea principal

Scenario: Visualizar información de la tarea

Given que una tarea fue seleccionada
When el usuario consulta sus detalles
Then el sistema muestra la información correspondiente
