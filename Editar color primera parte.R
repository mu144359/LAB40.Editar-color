####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Selene Muñoz Ortega (UAEH)
#V8
# LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
# Editando el color de los gráficos (PARTE 1)



#instalando paquete con los datos
#install.packages("gapminder")
#install.packages("ggplot2")



# cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)

# cargando datos a entorno
data("gapminder")

# filtrando por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]

# de donde sacar colores?
# http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf

# escala discreta
# haciendo grafica de puntos por continente
g1 <- ggplot(data = gapminder2007,
             mapping = aes(x = gdpPercap,
                           y = lifeExp,
                           color = continent)) +
  geom_point()

#ver g1
g1

# haciendo boxplot en continentes
g2 <- ggplot(data = gapminder2007,
             mapping = aes(x = continent, 
                           y = lifeExp,
                           fill = continent)) +
  geom_boxplot()

#ver g2
g2


# cambiando el color de los continentes

g1 + scale_color_manual (values = c('cadetblue',
                                    'chartreuse',
                                    'firebrick',
                                    'gold',
                                    'darkorchid'))

g2 + scale_fill_manual (values = c('cadetblue',
                                   'chartreuse',
                                   'firebrick',
                                   'gold',
                                   'darkorchid'))


# cambiando colores con paleta RColorBrewer
# instalar RColorBrewer
install.packages('RColorBrewer')
# para ver las paletas

library(RColorBrewer)
display.brewer.all()
# guardar como imagen width = 400, height = 800

# cambiando escala de color
g1 + scale_color_brewer(palette="BrBG")

g2 + scale_fill_brewer(palette="Paired")

# cambiando escala de grises

g1 + scale_color_grey()

g2 + scale_fill_grey()

