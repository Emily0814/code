create table member (
    id bigint not null auto_increment,
    name varchar(50),
    age integer,
    primary key(id)
);

insert into member (name, age) values ('ȫ�浿', 20);
insert into member (name, age) values ('������', 3);
insert into member (name, age) values ('�����', 2);

select * from member;

commit;