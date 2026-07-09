Feature: Configuración del tono

Scenario: Seleccionar tono de respuesta

Given que el usuario accede a configuración
When selecciona un tono de comunicación
Then el sistema guarda la preferencia

Scenario: Aplicar tono seleccionado

Given que existe un tono configurado
When la IA responde al usuario
Then utiliza el tono seleccionado
