Feature: Refuerzo positivo

Scenario: Mostrar mensaje motivacional

Given que el usuario completa una tarea
When el sistema actualiza el progreso
Then muestra un mensaje motivacional

Scenario: Reconocer logros

Given que el usuario alcanza un objetivo
When el sistema registra el logro
Then muestra una felicitación
