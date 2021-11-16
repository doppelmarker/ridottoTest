create table client
(
    id serial
        constraint client_pk
            primary key
);

alter table client
    owner to postgres;


create table goods
(
    id    serial
        constraint goods_pkey
            primary key,
    name  varchar(32),
    price integer
);

alter table goods
    owner to postgres;

create table purchases
(
    id         serial
        constraint purchases_pkey
            primary key,
    client_id  integer
        constraint purchases_client_id_fk
            references client
            on update cascade on delete cascade,
    good_id    integer
        constraint purchases_goods_id_fk
            references goods
            on update cascade on delete cascade,
    created_at timestamp
);

alter table purchases
    owner to postgres;

