Feature: Completar microacciones

Scenario: Marcar microacción como completada

Given que existe una microacción pendiente
When el usuario la completa
Then el sistema actualiza su estado

Scenario: Visualizar progreso actualizado

Given que una microacción fue completada
When el usuario consulta el progreso
Then el sistema refleja el nuevo avance
