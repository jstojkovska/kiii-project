create table country (
                         id bigint generated by default as identity primary key,
                         name       varchar(250),
                         continent  varchar(250)
);

create table host (
                      id bigint generated by default as identity primary key,
                      name    varchar(250),
                      surname varchar(250),
                      country_id bigint references country(id) on delete cascade
);

create table accommodation (
                               id bigint generated by default as identity primary key,
                               name             varchar(100),
                               categoryType     int,
                               host_id          bigint references host(id) on delete cascade,
                               numRooms         int,
                               isRented         boolean
);

create table users (
                       username                varchar(250) primary key,
                       password                   varchar(50),
                       name                       varchar(250),
                       surname                    varchar(250),
                       is_account_non_expired     boolean default true,
                       is_account_non_locked      boolean default true,
                       is_credentials_non_expired boolean default true,
                       is_enabled                 boolean default true,
                       role                       varchar(50)
);

create table user_accommodation (
                                    username      varchar(250) references users (username) on delete cascade,
                                    id bigint references accommodation (id) on delete cascade,
                                    primary key (username, id)
);
