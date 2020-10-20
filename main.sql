-- Бытовуха


-- Карточки(номер, тип)
CREATE TABLE Cards(
  id SERIAL PRIMARY KEY, 
  type INT
);

-- Спортсмены(имя, пол, рост, вес, возраст, PK(идентификатор карточки), FK(id объекта))

CREATE TABLE Sportsman(
  name TEXT, 
  gender TEXT, 
  height INT, 
  age INT, 
  card_id SERIAL, 
  type INT DEFAULT 1 CHECK(type = 1), 
  FOREIGN KEY (card_id, type) REFERENCES Cards(id,type)
);

-- Руководитель(имя, PK(контактный телефон))
CREATE TABLE Leader(
  name TEXT, 
  phone TEXT PRIMARY KEY
);

-- Делегация(PK(страна), FK(контактный телефон руководителя), FK(id объекта))

-- Объекты(PK(id), FK(id адреса), предназначение, собственное имя)
CREATE TABLE Object(
  id SERIAL PRIMARY KEY, 
  address_id SERIAL REFERENCES Address(id), 
  ...
);

-- Адрес(PK(id), улица, номер дома)

-- Виды спорта(PK(название спорта))

-- Соревнования(PK(id), вид спорта, дата-время, FK(id объекта))

-- Участники(PK(FK(id спортсмена), FK(id соревнования)), занятое место)

-- Волонтёры(FK(идентификатор карточки), контактный телефон)

CREATE TABLE Volunteer(
  FOREIGN KEY card_id REFERENCES Cards(id), 
  phone TEXT UNIUQE
);

-- Задания(PK(id), FK(id карточнки волонётра), дата-время, описание)


-- Транспорт(PK(регистрационный номер), вместимость)

-- Задание_транспорт(PK(FK(регистрационный номер), FK(id задания))) ?? время 
