Feature: Interacción con IA

Scenario: Solicitar orientación para iniciar una tarea

Given que el usuario accede al chat con IA
When describe una tarea pendiente
Then la IA responde con orientación personalizada
And brinda recomendaciones útiles

Scenario: Solicitar motivación

Given que el usuario accede al chat con IA
When indica que no tiene motivación para comenzar una actividad
Then la IA proporciona mensajes motivacionales
