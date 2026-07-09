Feature: Edición de microacciones

Scenario: Editar una microacción

Given que existe una microacción registrada
When el usuario modifica su contenido
Then el sistema guarda los cambios

Scenario: Confirmar edición

Given que la microacción fue editada
When el usuario guarda la información
Then el sistema actualiza la microacción
