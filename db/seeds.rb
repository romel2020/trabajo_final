# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Document.destroy_all
Status.destroy_all
Location.destroy_all


Document.create(name: 'Sin información')
Document.create(name: '0-15')
Document.create(name: '16-30')
Document.create(name: '31-50')
Document.create(name: '51-100')

Status.create(name: 'Dueño')
Status.create(name: 'Contador')
Status.create(name: 'RR.HH')
=begin
Location.create(name: 'Arica')
Location.create(name: 'Arica',city: Location.find_by_name('Arica'))
Location.create(name: 'Camarones',city: Location.find_by_name('Arica'))
Location.create(name: 'Putre')
Location.create(name: 'Putre',city: Location.find_by_name('Putre'))
Location.create(name: 'General Lagos',city: Location.find_by_name('Putre'))
Location.create(name: 'Iquique')
Location.create(name: 'Alto Hospicio',city: Location.find_by_name('Iquique'))
Location.create(name: 'Iquique',city: Location.find_by_name('Iquique'))
Location.create(name: 'Pozo Almonte')
Location.create(name: 'Camiña',city: Location.find_by_name('Pozo Almonte'))
Location.create(name: 'Colchane',city: Location.find_by_name('Pozo Almonte'))
Location.create(name: 'Huara',city: Location.find_by_name('Pozo Almonte'))
Location.create(name: 'Pica',city: Location.find_by_name('Pozo Almonte'))
Location.create(name: 'Pozo Almonte',city: Location.find_by_name('Pozo Almonte'))
Location.create(name: 'Antofagasta')
Location.create(name: 'Antofagasta',city: Location.find_by_name('Antofagasta'))
Location.create(name: 'Mejillones',city: Location.find_by_name('Antofagasta'))
Location.create(name: 'Sierra Gorda',city: Location.find_by_name('Antofagasta'))
Location.create(name: 'Taltal',city: Location.find_by_name('Antofagasta'))
Location.create(name: 'Calama')
Location.create(name: 'Calama',city: Location.find_by_name('Calama'))
Location.create(name: 'Ollague',city: Location.find_by_name('Calama'))
Location.create(name: 'San Pedro de Atacama',city: Location.find_by_name('Calama'))
Location.create(name: 'Tocopilla')
Location.create(name: 'Tocopilla',city: Location.find_by_name('Tocopilla'))
Location.create(name: 'Maria Elena',city: Location.find_by_name('Calama'))
=end
