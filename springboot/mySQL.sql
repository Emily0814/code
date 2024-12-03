create table member (
    id bigint not null auto_increment,
    name varchar(50),
    age integer,
    primary key(id)
);

insert into member (name, age) values ('홍길동', 20);
insert into member (name, age) values ('강아지', 3);
insert into member (name, age) values ('고양이', 2);

select * from member;

commit;