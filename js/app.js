var tarea = '';
var segundos = 60;
var intervalo = null;

// funciones cortas para no repetir tanto codigo
function escribir(id, texto) {
    document.getElementById(id).textContent = texto;
}

function obtenerValor(id) {
    return document.getElementById(id).value;
}

// aca se guarda la tarea principal para luego segun sae llene, mandar un mensaje diferente
document.getElementById('guardarTarea').onclick = function () {
    var nombre = obtenerValor('nombreTarea').trim();
    var prioridad = obtenerValor('prioridad');
    var energia = obtenerValor('energia');
    var tiempo = obtenerValor('tiempo');

    if (nombre === '') {
        escribir('mensajeTarea', 'Escribe el nombre de la tarea para guardarla.');
    } else {
        tarea = nombre;
        escribir('mensajeTarea', 'Tarea guardada: ' + tarea + '. Prioridad: ' + prioridad + '. Energía: ' + energia + '. Tiempo: ' + tiempo + ' minutos.');
        escribir('tareasGuardadas', '1');
        escribir('mensajeMotivacion', 'Buen inicio. Ahora puedes pedir una recomendación o generar microacciones.');
    }
};

document.getElementById('pedirAyuda').onclick = function () {
    var energia = obtenerValor('energia');
    var tiempo = obtenerValor('tiempo');
    var bloqueo = obtenerValor('bloqueo').trim();
    var texto = '';

    if (tarea === '') {
        escribir('respuestaAsistente', 'Primero guarda una tarea en la demo.');
        return;
    }

    if (energia === 'baja') {
        texto = 'Empieza con algo muy pequeño: abre el material de "' + tarea + '" y trabaja solo ' + tiempo + ' minutos.';
    } else if (energia === 'media') {
        texto = 'Divide "' + tarea + '" en tres pasos y completa el primero durante ' + tiempo + ' minutos.';
    } else {
        texto = 'Aprovecha tu energía alta y avanza la parte más importante de "' + tarea + '" durante ' + tiempo + ' minutos.';
    }
    if (bloqueo !== '') {
        texto = texto + ' Recuerda que tu bloqueo principal es: ' + bloqueo + '.';
    }
    escribir('respuestaAsistente', texto);
};

document.getElementById('otraRecomendacion').onclick = function () {
    if (tarea === '') {
        escribir('respuestaAsistente', 'Primero guarda una tarea.');
    } else {
        escribir('respuestaAsistente', 'Otra idea: prepara tu espacio, abre solo lo necesario y escribe la primera línea de "' + tarea + '".');
    }
};

// generar pasos pre guardados para q no se vea vacio
document.getElementById('generarPasos').onclick = function () {
    if (tarea === '') {
        escribir('mensajeProgreso', 'Primero guarda una tarea para generar microacciones.');
        return;
    }

    escribir('paso1', 'Abrir los materiales de ' + tarea);
    escribir('paso2', 'Trabajar cinco minutos en la primera parte');
    escribir('paso3', 'Guardar el avance y anotar qué sigue');

    document.getElementById('checkPaso1').checked = false;
    document.getElementById('checkPaso2').checked = false;
    document.getElementById('checkPaso3').checked = false;

    actualizarProgreso();
};

document.getElementById('checkPaso1').onclick = actualizarProgreso;
document.getElementById('checkPaso2').onclick = actualizarProgreso;
document.getElementById('checkPaso3').onclick = actualizarProgreso;

function actualizarProgreso() {
    var completados = 0;

    if (document.getElementById('checkPaso1').checked) {
        completados = completados + 1;
    }

    if (document.getElementById('checkPaso2').checked) {
        completados = completados + 1;
    }

    if (document.getElementById('checkPaso3').checked) {
        completados = completados + 1;
    }

    escribir('pasosHechos', completados);
    escribir('mensajeProgreso', completados + ' de 3 microacciones completadas.');

    if (completados > 0) {
        escribir('mensajeMotivacion', 'Ya avanzaste. Continúa con el siguiente paso pequeño.');
    }
}

// parte del reloj
document.getElementById('duracion').onchange = function () {
    reiniciarReloj();
};
document.getElementById('iniciarEnfoque').onclick = function () {
    if (intervalo !== null) {
        return;
    }
    if (segundos <= 0) {
        reiniciarReloj();
    }
    escribir('mensajeEnfoque', 'Sesión iniciada. Concéntrate en una sola tarea.');
    intervalo = setInterval(function () {
        segundos = segundos - 1;
        mostrarReloj();
        if (segundos <= 0) {
            clearInterval(intervalo);
            intervalo = null;
            segundos = 0;
            mostrarReloj();
            escribir('mensajeEnfoque', 'Sesión terminada. Buen trabajo.');
        }
    }, 1000);
};

document.getElementById('pararEnfoque').onclick = function () {
    if (intervalo !== null) {
        clearInterval(intervalo);
        intervalo = null;
        escribir('mensajeEnfoque', 'Sesión pausada puedes seguir cuando quieras.');
    } else {
        escribir('mensajeEnfoque', 'El reloj ya esta parado.');
    }
};

document.getElementById('reiniciarEnfoque').onclick = function () {
    reiniciarReloj();
    escribir('mensajeEnfoque', 'Sesión reiniciada.');
};

function reiniciarReloj() {
    clearInterval(intervalo);
    intervalo = null;
    segundos = Number(obtenerValor('duracion')) * 60;
    mostrarReloj();
}

function mostrarReloj() {
    var minutos = Math.floor(segundos / 60);
    var segundosMostrar = segundos % 60;

    if (minutos < 10) {
        minutos = '0' + minutos;
    }

    if (segundosMostrar < 10) {
        segundosMostrar = '0' + segundosMostrar;
    }

    escribir('reloj', minutos + ':' + segundosMostrar);
}

// mensaje del contacto segun se llenen los campos

document.getElementById('enviarContacto').onclick = function () {
    var nombre = obtenerValor('nombreContacto').trim();
    var correo = obtenerValor('correoContacto').trim();
    var mensaje = obtenerValor('mensajeContactoTexto').trim();

    if (nombre === '' || correo === '' || mensaje === '') {
        escribir('mensajeContacto', 'Completa todos los campos requeridos.');
    } else {
        escribir('mensajeContacto', 'Gracias, ' + nombre + ' tu mensaje fue registrado.');
    }
};

mostrarReloj();