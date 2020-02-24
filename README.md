# BASH Scripting test

[![bash](https://img.shields.io/badge/bash-5C4EE5.svg)](https://yaml.org)

El objetivo del ejercicio es ajustar y complementar el script de creacion y validacion de directorios

## Criterios de acceptacion

1. Ajustar (Tiene Errores de syntaxis) script, cuando se ejecute muetres los valores ingresados por parametreo, la accion que se debe ejecutar si el argumento `-t` es vacio es `VALIDATE`

   - _Entradas:_ -n EXAMPLE
   - _Salida:_
     ```
     EXAMPLE
     Validate exist Directory
     ```

  ```
      sh test-bash.sh -n EXAMPLE
  ```

2. Implementar una funcion de validacion , la cual debe validar si existe un directorio utilizando el valor del argumento de entrada `-n`

   - _Entradas:_ -n EXAMPLE -t VALIDATE ,
     debe Tener creado el directorio `EXAMPLE`
   - _Salida:_

     ```
     EXAMPLE
     Good directory 🤩

     ```

   - _Entradas:_ -n EXAMPLE_2 -t VALIDATE
   - _Salida:_
     ```
     EXAMPLE_
     Bad directory 😷
     ```

3. Implemetar una funcion de creacion de directorio , el programa recibe una accion bajo el argumento `-t` , cuando este argumento tenga el valor de `CREATE` o `CREATION`, el programa debe crear un directorio , cuyoo nombre debe estar compuesto por el valor enviado en el argumento `n` , el prefijo `MY_TEST` y si el directorio ya existe debe sumarle un valor secuencial al final, ejemplo : `MY_TEST_ALGUN_NOMBRE` or `MY_TEST_ALGUN_NOMBRE_2`

   - _Entradas:_ -n ALGUN_NOMBRE -t CREATE
   - _Salida:_

     ```
     ALGUN_NOMBRE
      The Directory created was MY_TEST_ALGUN_NOMBRE 🤩
     ```

   - _Entradas:_ -n EXAMPLE_2 -t CREATION
   - _Salida:_
     ```
     ALGUN_NOMBRE
     The Directory created was MY_TEST_ALGUN_NOMBRE_1 🤩
     ```
