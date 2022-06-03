# Renta tu cabaña

Aplicación web que permite arrendar entre 3 cabañas, posee un formulario de contacto que envía un correo electrónico al servidor que se indique, loguearse a través de google y una vez logueado ver las reservas realizadas con el mismo email que fue realizada la reserva (es importante que dicho correo coincida o no quedaran asociadas las reservas al perfil)

El proyecto se encuentra desplegado en:
- [Heroku](https://hol-rent-cabin.herokuapp.com/)
Observación: en Heroku no esta configurado el servidor stmp.

Para testear el envío de correos de manera local se utilizó un servidor smtp gratuito de prueba `Mailtrap`

![alt text][proof]

[proof]: /inbox_mailtrap.png "Casilla mailtrap"


![alt text][logic]

[logic]: /diagrama_erd.png "Diagrama lógico"


## Tecnologías utilizadas:
- Ruby 2.7.5, 
- Rails 5.2.6
- PostgreSQL.

###### Gema Active-admin
Para acceder a ver el panel de Administrador sólo es necesario agregarle a la url '/admin' ya que no se requiere autenticación.
Actualmente muestra la cantidad de reservas total, se puede acceder a ver las reservas por cabaña y también el detalle de todas las reservas.

## Pasos para levantar el proyecto:
- Clonar el repo 
- Instalar versiones de Ruby y Ruby on Rails especificadas en `Gemfile`.
- Instalar bundler: `gem install bundler`
- Instalar gemas de `Gemfile`: `bundle install`
- Variables de entorno: Utilizar `.env.template` como plantilla.
- Crear base de datos: `rake db:create`
- Correr migraciones pendientes: `rake db:migrate`
- Cargar datos iniciales: `rake db:seed`
- Ejecutar `rails s`
