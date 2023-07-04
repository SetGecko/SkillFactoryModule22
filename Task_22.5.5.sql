insert into clients2 (name, phone, email) values ('Иван Владиморович К', '87653434522', 'ivan@mail.ru');
savepoint first_savepoint;
insert into clients2 (name, phone, email) values ('Дима Вышкин', '87653411122', 'vish@mail.ru');
rollback to first_savepoint;
insert into clients2 (name, phone, email) values ('Куропаткин В В', '8768884522', 'kurop@mail.ru');
