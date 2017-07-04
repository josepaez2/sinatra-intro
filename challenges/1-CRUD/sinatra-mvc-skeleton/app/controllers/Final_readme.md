#Ejercicios de Introduccion a Sinatra

Haz un fork de este repositorio, y luego clonalo a tu computador

después de clonarlo haz cd al el

```shell
$ cd sinatra-intro
```

cada vez que acabes un reto crea un commit y actualiza el repo con la solución.

Abrelo en tu editor de texto y empieza a trabajar en los retos en el siguiente orden:

- [CRUD](./challenges/1-CRUD)
- [Blog](./challenges/2-blog)
- [Flujo de login](./challenges/3-Authentication)

CRUD

1. CREATE / Un usuario puede crear una nota.
2. INDEX / Un usuario puede leer todas las notas que ha creado
3. DESTROY / Un usuario puede borrar una nota existente
4. UPDATE / Un usuario puede actualizar una nota existente
5. NEW Un usuario puede ver una pagina donde puede crear una nota
6. EDIT / Un usuario puede ver una pagina donde puede editar una nota
7. SHOW Un usuario puede ver una pagina que muestre solo una nota

http://guides.rubyonrails.org/routing.html). Modifica el esqueleto para lograr la siguiente funcionalidad:


Understand Representational State Transfer(REST)

bundle install
rake generate:model NAME=Note
rake generate:migration NAME=create_notes
Si todo falla empezar desde acá
rake db:drop
rake db:create
crear la migración
adicionar el 5.0 class CreateNotes < ActiveRecord::Migration[5.0]
rake db:migrate
crear las seeds
rake db:seed


La tabla de `notes` debe tener los campos `title` y `content`.


## Recursos

* [Sinatra Crud Tutorial](http://net.tutsplus.com/tutorials/ruby/singing-with-sinatra/)
* [Partials en Sinatra](http://www.sinatrarb.com/faq.html#partials)
* [RESTful routes](http://guides.rubyonrails.org/routing.html)

Modelos de active record van aca.

Los puedes crear con el siguiente comando:

`bundle exec rake generate:model NAME=User`


