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
User.create(email: 'encargado@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'John', apellido: 'Doe', admin: false, encargado: true, empresa_id: 1)
#Cuentas Empleado:
User.create(email: 'empleado@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Mark', apellido: 'Kyzer', admin: false, encargado: false, empresa_id: 1)
User.create(email: 'empleado2@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Marco', apellido: 'Kyzer', admin: false, encargado: false, empresa_id: 1)
User.create(email: 'empleado3@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Marky', apellido: 'Kyzer', admin: false, encargado: false, empresa_id: 1)
User.create(email: 'empleado4@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Marto', apellido: 'Kyzer', admin: false, encargado: false, empresa_id: 1)
User.create(email: 'empleado5@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Marto', apellido: 'Kyzer', admin: false, encargado: false, empresa_id: 1)


#Encuestas Iniciales
EncuestaInicial.create(user_id: 4, pregunta1: true, pregunta2: true, pregunta3: true, pregunta4: true, pregunta5: true, pregunta6: true)
EncuestaInicial.create(user_id: 5, pregunta1: false, pregunta2: true, pregunta3: true, pregunta4: true, pregunta5: true, pregunta6: true)
EncuestaInicial.create(user_id: 6, pregunta1: false, pregunta2: false, pregunta3: true, pregunta4: false, pregunta5: true, pregunta6: true)
EncuestaInicial.create(user_id: 7, pregunta1: false, pregunta2: false, pregunta3: false, pregunta4: false, pregunta5: true, pregunta6: true)

#Encuestas Finales
EncuestaInicial.create(user_id: 4, pregunta1: true, pregunta2: true, pregunta3: true)
EncuestaInicial.create(user_id: 5, pregunta1: false, pregunta2: true, pregunta3: true)
EncuestaInicial.create(user_id: 6, pregunta1: false, pregunta2: false, pregunta3: true)
EncuestaInicial.create(user_id: 7, pregunta1: false, pregunta2: false, pregunta3: false)

