F1="Curso de Innovación Pedagógica. Programación y Robótica.pdf"

1:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(F1)  \
					Cabecera.md        \
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
					Comprar.md

clean:
	rm $(F1)

push:
	git commit -m "update" $(F1);
	git push;
