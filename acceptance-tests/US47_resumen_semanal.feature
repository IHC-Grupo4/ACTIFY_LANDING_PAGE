Feature: Resumen semanal

Scenario: Consultar resumen

Given que existen actividades registradas
When el usuario accede al resumen semanal
Then el sistema muestra las estadísticas

Scenario: Visualizar progreso semanal

Given que existe información semanal
When el usuario consulta el reporte
Then el sistema muestra el progreso alcanzado
