Feature: Registro de usuario

Scenario: Registro exitoso

Given que el usuario se encuentra en la pantalla de registro
When ingresa un correo electrónico válido
And ingresa una contraseña válida
And presiona el botón "Registrarse"
Then el sistema crea la cuenta correctamente
And muestra un mensaje de confirmación

Scenario: Registro con correo inválido

Given que el usuario se encuentra en la pantalla de registro
When ingresa un correo electrónico inválido
And presiona el botón "Registrarse"
Then el sistema muestra un mensaje de error
