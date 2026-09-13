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
Const 
  MAX_GRAVITY: Integer = 400;
var
  n: Integer;
begin
  Write('Introduce un número: ');
  ReadLn(n);
  WriteLn('Guardaste: ', n);
end.
```
* ``Write`` no salta de línea, ``WriteLn`` sí. Se usa ``Write`` para el mensaje de prompt y luego ReadLn en la misma "zona visual".

### ex2
### El tipo `Real`
Se utiliza para almacenar números que pueden tener parte decimal.
Ejemplos:
```pascal
12.5
1200.45
3.14
0.75
-8.25
```
A diferencia de `Integer`, que representa números enteros:
```pascal
10
250
400
```
```pascal
program RealExample;

var
  temperature: Real;

begin
  temperature := 36.5;
  writeln(temperature);
end.
```
* Los números decimaes se escriben con punto, no con coma: `power := 12.5;`.
* La coma se utiliza para separar elementos en instrucciones, por ejemplo: `writeln('Power: ', power);`.

`ReadLn` puede leer un número decimal y almacenarlo en un variable `Real`.
* `Formato :0:2` escribes un número real con `writeln`, puedes añadir un formato: `writeln(value:0:2);` -> `variable:width:decimals`.
Significa:
* ``0:`` no establece una anchura mínima relevante.
* ``2:`` muestra exactamente 2 cifras decimales.

```pascal
program ReadReal;

var
  weight: Real;

begin
  writeln('Enter weight:');
  readln(weight);
  writeln('Weight: ', weight:0:2);
end.
```
### ex3
Este ejercicio introduce 2 operadores fundamentales de Pascal:
* `div`: división entera.
* `mod`: resto de una división entera.

#### División normal `/`
* El operador `/` realiza una división que puede producir un resultado decimal. `result := 7/2;` => `3.5`.
* Este operador no es el adecuado para contar grupos completos de semillas, porque necesitamos saber cuántos grupos enteros pueden formarse.

#### División entera `div`
* El operador `div` calcula cuántas veces cabe un número entero dentro de otro, ignorando la parte decimal.
Ejemplos:
```pascal
7 div 2 = 3
10 div 3 = 3
50 div 6 = 8
24 div 6 = 4
5 div 6 = 0
```
La idea es:
```pascal
50 / 6 = 8.333...
50 div 6 = 8
```
Por tanto, 50 semillas se pueden formar 8 grupos completados de 6 semillas.

#### resto `mod`
* El operador `mod` calcula cuántas unidades sobran después de formar todos los grupos completados.
Ejemplos:
```pascal
7 mod 2 = 1
10 mod 3 = 1
50 mod 6 = 2
24 mod 6 = 0
5 mod 6 = 5
```
### ex4
* `Boolean` representa un valor lógico. Solo puede tener 2 estados.
* `True`, `False` se utiliza cuando algo puede ser: verdadero o falso; activado o desactivado; válidado o inválidado; detectado o no detectado.
Ejemplo:
```pascal
var
  isReady: Boolean;

{Una variable booleana puede recibir directamente uno de esos valores:}
isReady := True;
```
Pascal no distingue entre mayúsculas y minúsculas en estas palabras:
```pascal
True
TRUE
true
```
#### Operadores de comparación
* Los operadores de comparación producen un resultado booleano.
* Una expresión de comparación no produce un número. Produce un valor lógico.

| Operador | Significado | Ejemplo |
| :---: | :--- | :---: |
| `=` | igual que | `5 = 5` |
| `<>` | distinto de | `5 <> 3` |
| `>` | mayor que | `10 > 9` |
| `<` | menor que | `4 < 8` |
| `>=` | mayor o igual que | `10 >= 10` |
| `<=` | menor o igual que | `8 <= 12` |

### ex5
