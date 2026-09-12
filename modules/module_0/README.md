## Module 0
---

### ex0
Para resolver este ejercicio necesitas aprender 3 conceptos de Pascal. la estructura de un programa, las instrucciones y la salida de texto con `writeln`. No necesitas variables, tipos de datos ni operaciones matemáticas todavía.

#### Estructura de un programa Pascal
Todo programa básico tiene una cabecera y un cuerpo de instrucciones.
```bash
program NombreDelPrograma;

begin
  { Instrucciones }
end.
```

#### Conceptos importantes
* **program** 		    - Declara el nombre del programa.
* **NombreDelPrograma** - Identificador del programa.
* **;** 			    - Termina una declaración o instrucción.
* **begin** 			- Inicia un bloque de instrucciones.
* **end.** 			    - Finaliza el programa completo.
El punto de ``end.`` es importante: indica el final del programa. No es lo mismo que ``end;``, que se utiliza para cerrar un bloque que continúa con otras instrucciones.

### ex1
* Para leer un número que el usuario escribe, se usa `ReadLn` sobre una variable ya declarada.

```bash
var
  n: Integer;
begin
  Write('Introduce un número: ');
  ReadLn(n);
  WriteLn('Guardaste: ', n);
end.
```
* ``Write`` no salta de línea, ``WriteLn`` sí. Se usa ``Write`` para el mensaje de prompt y luego ReadLn en la misma "zona visual".