# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Cuenta admin;
User.create(email: 'admin@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'admin', apellido: 'feelink', admin: true, encargado: true)

#Cuenta Feelink:
Empresa.create(nombre: "Feelink", direccion: 'USM', comuna: "San Joaquin", region: 'Region Metropolitana')
User.create(email: 'adrian@menares.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Adrian', apellido: 'Menares', admin: false, encargado: true)
User.create(email: 'esteban@barrios.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Esteban', apellido: 'Barrios', admin: false, encargado: false)
User.create(email: 'katherine@salgado.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Katherine', apellido: 'Salgado', admin: false, encargado: false)
User.create(email: 'ignacio@figueroa.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Ignacio', apellido: 'Figueroa', admin: false, encargado: false)
User.create(email: 'maria@riveros.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Maria', apellido: 'Riveros', admin: false, encargado: false)
User.create(email: 'daniel@bornscheuer.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Daniel', apellido: 'Bornscheuer', admin: false, encargado: false)
