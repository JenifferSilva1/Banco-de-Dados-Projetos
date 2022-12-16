use oficina_mecanica;

create table usuario(
idusuario int not null unique auto_increment,
nomeusuario varchar (50) not null,
senhausuario varchar (30) not null,
emailusuario varchar (50) not null unique,
primary key (idusuario)
);

insert into usuario(
nomeusuario,
senhausuario,
emailusuario
)values ("Carlos", "Carlos123" ,"Carlos.sousa@gmail.com");

insert into usuario (nomeusuario,senhausuario,emailusuario)
values ("Humberto", "Humberto123","Humberto.sousa@gmail.com"),
("Amanda", "Amanda123", "Amanda.sousa@gmail.com"),
("Carla", "Carla123", "Carla.sousa@gmail.com"),
("Joana", "Joana123", "Joana.sousa@gmail.com"),
("Bruna", "Bruna123", "Bruna.sousa@gmail.com"),
("Anderson", "Anderson123", "Anderson.sousa@gmail.com"),
("Ursula", "Ursula123", "Ursula.sousa@gmail.com"),
("João", "João123", "João.sousa@gmail.com"),
("Marta", "Marta123", "Marta.sousa@gmail.com"),
("Marcela", "Marcela", "Marcela.sousa@gmail.com");

/* selecionar tudo da tabela usuario e mostrar onde o idusuario for maior que 5 */
select * from usuario where idusuario > 5;

/* selecionar tudo da tabela usuario e mostrar onde o nomeusuario for igual a "Ursula" */
select * from usuario where nomeusuario = "Ursula";

/* selecionar tudo da tabela usuario e mostrar onde o idusuario for maior que 2 e menor que 5 */
select * from usuario where idusuario >2 and idusuario <5;

/* */
select * from usuario where nomeusuario like "%a";

/* */
select * from usuario where nomeusuario like "%o%";

/* selecionar tudo da tabela usuario e mostrar onde o nomeusuario for igual a "Anderson" ou o idusuario for maior que 8*/
select * from usuario where nomeusuario = "Anderson" or idusuario >8;

/* atualizar a tabela usuario com a definiçao de nomeusuario para "Paola" no idusuario 9 */
update usuario set nomeusuario = "Paola" where idusuario = 9 ;

/* atualizar a tabela usuario com a definiçao de senhausuario para "12345" e emailusuario para "testeaula@gmail.com" no idusuario 6 */
update usuario set senhausuario = "12345", emailusuario = "testeaula@gmail.com" where idusuario = 6;

/* exclui o idusuario 6 da tabela usuario */
delete from usuario where idusuario = 6;



select * from usuario
