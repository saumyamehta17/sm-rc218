Railscast sm-rc218
====================

Making custom generator
```

To see what options are available
```
rails g generator --help

create generator command
```
Note: it will create for specfic rails app
rails g generator layout[Any name]
It will create new generator under lib
```
now check what your generaot need
```
rails g layout --help
rails generate layout NAME [options] -- first look # you can change it, omit 'NAME' if want
# see layout_generator.rb
```
convert camelcase to snakecase
```
"Activerecored".underscore  -- active_record
"Activerecored".tableize  -- active_records
"active_record".camelcase - Activerecord
"active_record".camelize - Activerecord
```
To copy file, need to have file in lib/template folder
```
#see layout_generator.rb
```
generator dont know erb tags, so escape those, if want in templates
```
use double percent
for eg  -  <%%=  %>
```

Now if some files can be excluded.
```
use class_option
call options object
#see layout_generator.rb
now run rails g layout --help #it will show stylesheet description
```


