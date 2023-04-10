Iniciar base de datos:
```
docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -v $PWD:/data -p 3306:3306 -d mysql
mysql -h localhost -u root -p -e"CREATE DATABASE words;"
mysql -h localhost -u root -p words -e"CREATE TABLE `words` ( `word` varchar(200) NOT NULL, KEY `word` (`word`))"
mysql -h localhost -u root -p words < es.txt 
```

Correr query:
```
mysql -h localhost -u root -p words < /data/query.sql
```

Ejemplo de output:

```
| sosal | abaca  | satas | acaba  | lasos |
| sosal | abaca  | sayas | acaba  | lasos |
| soros | abaca  | radar | acaba  | soros |
| soros | abaca  | rajar | acaba  | soros |
| soros | abaca  | rapar | acaba  | soros |
| soros | abaca  | rasar | acaba  | soros |
| soros | abaca  | rayar | acaba  | soros |
| soros | abaca  | razar | acaba  | soros |
| sorgo | abaca  | radar | acaba  | ogros |
| sorgo | abaca  | rajar | acaba  | ogros |
| sorgo | abaca  | rapar | acaba  | ogros |
| sorgo | abaca  | rasar | acaba  | ogros |
| sorgo | abaca  | rayar | acaba  | ogros |
| sorgo | abaca  | razar | acaba  | ogros |
| sonsa | abaca  | nadan | acaba  | asnos |
| sones | abaca  | nadan | acaba  | senos |
| sonas | abaca  | nadan | acaba  | sanos |
| sonar | abaca  | nadan | acaba  | ranos |
| sodio | abaca  | datad | acaba  | oidos |
| sises | abaca  | sacas | acaba  | sesis |
| sises | abaca  | sagas | acaba  | sesis |
| sises | abaca  | sajas | acaba  | sesis |
| sises | abaca  | salas | acaba  | sesis |
| sises | abaca  | samas | acaba  | sesis |
| sises | abaca  | sanas | acaba  | sesis |
| sises | abaca  | sapas | acaba  | sesis |
| sises | abaca  | satas | acaba  | sesis |
| sises | abaca  | sayas | acaba  | sesis |
| sisar | abaca  | sacas | acaba  | rasis |
| sisar | abaca  | sagas | acaba  | rasis |
| sisar | abaca  | sajas | acaba  | rasis |
| sisar | abaca  | salas | acaba  | rasis |
| sisar | abaca  | samas | acaba  | rasis |
| sisar | abaca  | sanas | acaba  | rasis |
| sisar | abaca  | sapas | acaba  | rasis |
| sisar | abaca  | satas | acaba  | rasis |
| sisar | abaca  | sayas | acaba  | rasis |
| siras | abaca  | radar | acaba  | saris |
| siras | abaca  | rajar | acaba  | saris |
| siras | abaca  | rapar | acaba  | saris |
| siras | abaca  | rasar | acaba  | saris |
| siras | abaca  | rayar | acaba  | saris |
| siras | abaca  | razar | acaba  | saris |
| sesis | abaca  | sacas | acaba  | sises |
| sesis | abaca  | sagas | acaba  | sises |
| sesis | abaca  | sajas | acaba  | sises |
| sesis | abaca  | salas | acaba  | sises |
| sesis | abaca  | samas | acaba  | sises |
| sesis | abaca  | sanas | acaba  | sises |
| sesis | abaca  | sapas | acaba  | sises |
| sesis | abaca  | satas | acaba  | sises |
| sesis | abaca  | sayas | acaba  | sises |
| sesil | abaca  | sacas | acaba  | lises |
| sesil | abaca  | sagas | acaba  | lises |
| sesil | abaca  | sajas | acaba  | lises |
| sesil | abaca  | salas | acaba  | lises |
| sesil | abaca  | samas | acaba  | lises |
| sesil | abaca  | sanas | acaba  | lises |
```
