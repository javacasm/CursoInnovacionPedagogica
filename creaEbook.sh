#!/bin/bash

TEMP_DIR="ebook-temp"
TEMP_file=$TEMP_DIR"/ebook.md"

EBOOK_NAME=$TEMP_DIR"/Programacion_robotica"

rm -rf $TEMP_DIR
mkdir $TEMP_DIR

files=( Cabecera.md        \
intro.md \
moda_robotica.md \
makers.md \
Proyectos.md \
granadaMagica.md \
Metodo.md \
RedesSociales.md \
programacion.md \
herramientas.md \
Robots.md \
Equipos.md \
EjemploBitbloq.md \
3d.md \
Impresion3D.md \
Herramientas3D.md \
OpenSource.md \
Comprar.md )



for i in "${files[@]}"
do :
   grep -v  -E '@javacasm|CCby|Módulo de Programación|Curso Superior de Innovación|<!--' $i >>$TEMP_file
done


pandoc --verbose -o $EBOOK_NAME".pdf" $TEMP_file
mv $EBOOK_NAME* .


# rm -rf $TEMP_DIR # comentado para comprobar
