Feature: Notificaciones inteligentes

Scenario: Envío de recordatorio

Given que el usuario tiene una tarea pendiente
When se acerca la fecha programada
Then el sistema envía una notificación oportuna

Scenario: Notificación de procrastinación

Given que el usuario permanece inactivo durante un tiempo prolongado
When el sistema detecta posible procrastinación
Then muestra un recordatorio para retomar la tarea
