# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


#Empresa Feelink
Empresa.create(id: 1, nombre: "Feelink", direccion: "USM", oficina: "", comuna: "San Joaquin", region: 'Region Metropolitana')

#Cuenta Admin;
User.create(email: 'admin@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Admin', apellido: 'Feelink', admin: true, encargado: true, empresa_id: 1)
#Cuenta Encargado:
User.create(email: 'encargado@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Encargado', apellido: 'Feelink', admin: false, encargado: true, empresa_id: 1)
#Cuenta Empleado:
User.create(email: 'empleado@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Empleado', apellido: 'Feelink', admin: false, encargado: false, empresa_id: 1)
