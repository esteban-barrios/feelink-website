# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


#Empresa Feelink
Empresa.create(id: 1, nombre: "Feelink", direccion: "USM", oficina: "", comuna: "San Joaquin", region: 'Region Metropolitana')

#Cuenta admin;
User.create(email: 'admin@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'admin', apellido: 'feelink', admin: true, encargado: true, empresa_id: 1)
#Cuentas Feelink:
User.create(email: 'adrian@menares.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Adrian', apellido: 'Menares', admin: false, encargado: true, empresa_id: 1)
User.create(email: 'esteban@barrios.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Esteban', apellido: 'Barrios', admin: false, encargado: false, empresa_id: 1)
User.create(email: 'katherine@salgado.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Katherine', apellido: 'Salgado', admin: false, encargado: false, empresa_id: 1)
User.create(email: 'ignacio@figueroa.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Ignacio', apellido: 'Figueroa', admin: false, encargado: false, empresa_id: 1)
User.create(email: 'maria@riveros.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Maria', apellido: 'Riveros', admin: false, encargado: false, empresa_id: 1)
User.create(email: 'daniel@bornscheuer.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Daniel', apellido: 'Bornscheuer', admin: false, encargado: false, empresa_id: 1)

#Empresa Wonka
Empresa.create(id: 2, nombre: "Wonka", direccion: "Av. Vicuña Mackena", oficina: "123", comuna: "San Joaquin", region: 'Region Metropolitana')

#Encargado
User.create(email: 'Willy@Wonka.com', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Willy', apellido: 'Wonka', admin: 'false', encargado: 'true', empresa_id: 2)

#Oompa Loompas
User.create(email: 'Oompa@loompa1.com', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Oompa', apellido: 'Loompa 1', admin: 'false', encargado: 'false', empresa_id: 2)
User.create(email: 'Oompa@loompa2.com', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Oompa', apellido: 'Loompa 2', admin: 'false', encargado: 'false', empresa_id: 2)
User.create(email: 'Oompa@loompa3.com', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Oompa', apellido: 'Loompa 3', admin: 'false', encargado: 'false', empresa_id: 2)
User.create(email: 'Oompa@loompa4.com', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Oompa', apellido: 'Loompa 4', admin: 'false', encargado: 'false', empresa_id: 2)
User.create(email: 'Oompa@loompa5.com', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Oompa', apellido: 'Loompa 5', admin: 'false', encargado: 'false', empresa_id: 2)
User.create(email: 'Oompa@loompa6.com', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Oompa', apellido: 'Loompa 6', admin: 'false', encargado: 'false', empresa_id: 2)
User.create(email: 'Oompa@loompa7.com', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Oompa', apellido: 'Loompa 7', admin: 'false', encargado: 'false', empresa_id: 2)
User.create(email: 'Oompa@loompa8.com', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Oompa', apellido: 'Loompa 8', admin: 'false', encargado: 'false', empresa_id: 2)
User.create(email: 'Oompa@loompa9.com', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Oompa', apellido: 'Loompa 9', admin: 'false', encargado: 'false', empresa_id: 2)