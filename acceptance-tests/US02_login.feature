Feature: Inicio de sesión

Scenario: Inicio de sesión exitoso

Given que el usuario posee una cuenta registrada
When ingresa credenciales válidas
And presiona el botón "Iniciar sesión"
Then el sistema permite el acceso a la aplicación

Scenario: Credenciales incorrectas

Given que el usuario posee una cuenta registrada
When ingresa una contraseña incorrecta
Then el sistema muestra un mensaje de error
