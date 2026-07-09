Feature: Seguimiento de conversación

Scenario: Mantener contexto

Given que existe una conversación activa
When el usuario envía otro mensaje
Then el sistema conserva el contexto de la conversación

Scenario: Continuar conversación

Given que el usuario inició una conversación
When realiza una nueva consulta
Then el sistema responde considerando los mensajes anteriores
