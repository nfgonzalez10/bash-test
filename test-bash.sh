#!/bin/bash -eu

# **************************************************************
# ** Validar o crear directorios segun parametros             **
# ** Date :                                                   **
# ** Author:                                                  **
# **************************************************************

export LC_CTYPE=C

DIRECTORY_NAME=""
ACCION=""
NUMBER=1

main() {

    while getopts n:t: option; do
        case "${option}" in

        n) DIRECTORY_NAME=${OPTARG} ;;
        t) ACCION=${OPTARG} ;;
        esac
    done

    case ${ACCION} in

    VALIDATE)
        if [ $DIRECTORY_NAME = "EXAMPLE" ]; then
            echo "Good directory 🤩"
        else
            echo "Bad directory 😷"
        fi
        ;;
    CREATE)
        if [ ! -d $DIRECTORY_NAME ]; then
            mkdir $DIRECTORY_NAME
        else
            dirs= $(ls -d)
            echo "este es el array ${dirs[@]}"
        fi
        ;;
    *)
        echo "Hmm, seems i've never used it."
        ;;
    esac
}

main $@
