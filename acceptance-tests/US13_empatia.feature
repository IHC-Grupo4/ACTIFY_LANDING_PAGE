Feature: Respuestas empáticas

Scenario: Mostrar respuesta empática

Given que el usuario expresa frustración
When envía un mensaje
Then el sistema responde con empatía

Scenario: Brindar apoyo

Given que el usuario necesita motivación
When solicita asistencia
Then el sistema muestra un mensaje de apoyo
