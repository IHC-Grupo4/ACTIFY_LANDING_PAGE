Feature: Cancelación de sesión

Scenario: Cancelar una sesión

Given que existe una sesión activa
When el usuario selecciona cancelar
Then el sistema detiene la sesión

Scenario: Registrar motivo

Given que la sesión fue cancelada
When el usuario indica el motivo
Then el sistema guarda la información
