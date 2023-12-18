DROP DATABASE StatisticalCenter;

CREATE DATABASE StatisticalCenter;
use StatisticalCenter;

-- Должность User
CREATE TABLE Positions
(
    position_id INTEGER      NOT NULL AUTO_INCREMENT,
    name        VARCHAR(100) NOT NULL,
    PRIMARY KEY (position_id)
);

-- Отдел, в котором работает user
CREATE TABLE Departments
(
    department_id INTEGER      NOT NULL AUTO_INCREMENT,
    name          VARCHAR(200) NOT NULL,
    PRIMARY KEY (department_id)
);

-- TODO: Доделать constraints
CREATE TABLE IF NOT EXISTS Users
(
    user_id            INTEGER     NOT NULL AUTO_INCREMENT,
    name               VARCHAR(45) NOT NULL,
    surname            VARCHAR(45) NOT NULL,
    patronymic         VARCHAR(45),
    phone_num          VARCHAR(13),
    city_telephone_num VARCHAR(7),
    email              VARCHAR(45),
    position_id        INTEGER,
    department_id      INTEGER,
    PRIMARY KEY (user_id),
    FOREIGN KEY (position_id) REFERENCES Positions (position_id),
    FOREIGN KEY (department_id) REFERENCES Departments (department_id)
);

CREATE TABLE IF NOT EXISTS UnitsOfMeasure
(
    unit_of_measure_id INTEGER     NOT NULL AUTO_INCREMENT,
    name               VARCHAR(45) NOT NULL,
    description        VARCHAR(100),
    PRIMARY KEY (unit_of_measure_id)
);

CREATE TABLE IF NOT EXISTS TimeIntervals
(
    time_interval_id    INTEGER     NOT NULL AUTO_INCREMENT,
    name                VARCHAR(45) NOT NULL,
    interval_in_seconds INTEGER,
    PRIMARY KEY (time_interval_id)
);

-- Графики
CREATE TABLE IF NOT EXISTS Charts
(
    chart_id    INTEGER     NOT NULL AUTO_INCREMENT,
    name        VARCHAR(45) NOT NULL,
    description VARCHAR(300),
    PRIMARY KEY (chart_id)
);

-- Тип населенного пункта(а.г., город, район, область и т.д.)
CREATE TABLE IF NOT EXISTS SettlementsType
(
    settlement_type_id INTEGER     NOT NULL AUTO_INCREMENT,
    name               VARCHAR(50) NOT NULL,
    short_name         VARCHAR(10),
    PRIMARY KEY (settlement_type_id)
);

-- Населенные пунты
CREATE TABLE IF NOT EXISTS Settlements
(
    settlement_id       INTEGER      NOT NULL AUTO_INCREMENT,
    settlements_type_id INTEGER      NOT NULL,
    parent_id           INTEGER DEFAULT NULL,
    name                VARCHAR(100) NOT NULL,
    PRIMARY KEY (settlement_id),
    FOREIGN KEY (settlements_type_id) REFERENCES SettlementsType (settlement_type_id),
    FOREIGN KEY (parent_id) REFERENCES Settlements (settlement_id)
);


CREATE TABLE IF NOT EXISTS Addresses
(
    address_id    INTEGER NOT NULL AUTO_INCREMENT,
    settlement_id INTEGER NOT NULL,
    street        VARCHAR(100),
    house_num     VARCHAR(10),
    PRIMARY KEY (address_id),
    FOREIGN KEY (settlement_id) REFERENCES Settlements (settlement_id)
);

CREATE TABLE IF NOT EXISTS Organizations
(
    organization_id    INTEGER      NOT NULL AUTO_INCREMENT,
    address_id         INTEGER      NOT NULL,
    name               VARCHAR(100) NOT NULL,
    short_name         VARCHAR(20),
    phone_num          VARCHAR(13),
    city_telephone_num VARCHAR(7),
    email              VARCHAR(45),
    PRIMARY KEY (organization_id),
    FOREIGN KEY (address_id) REFERENCES Addresses (address_id)
);

-- Национальности
CREATE TABLE IF NOT EXISTS Nationalities
(
    nationality_id INTEGER NOT NULL AUTO_INCREMENT,
    name           VARCHAR(100) NOT NULL,
    PRIMARY KEY (nationality_id)
);

-- Гражданства
CREATE TABLE IF NOT EXISTS Citizenships
(
    citizenship_id INTEGER NOT NULL AUTO_INCREMENT,
    name           VARCHAR(100) NOT NULL,
    PRIMARY KEY (citizenship_id)
);

CREATE TABLE IF NOT EXISTS EducationLevels
(
    education_level_id INTEGER NOT NULL AUTO_INCREMENT,
    name               VARCHAR(100) NOT NULL,
    PRIMARY KEY (education_level_id)
);

CREATE TABLE IF NOT EXISTS AcademicDegrees
(
    academic_degree_id INTEGER NOT NULL AUTO_INCREMENT,
    name               VARCHAR(100) NOT NULL,
    PRIMARY KEY (academic_degree_id)
);

-- TODO: EducationLevel and academicDegrees можно сделать связь многие ко многим

-- TODO: Если будет нехватать сущностей, то можно добавить таблицу Gender
CREATE TABLE IF NOT EXISTS Humans
(
    human_id           INTEGER                 NOT NULL AUTO_INCREMENT,
    birthday           DATE    DEFAULT NULL,
    sex                ENUM ('Male', 'Female') NOT NULL,
    nationality_id     INTEGER DEFAULT NULL,
    citizenship_id     INTEGER DEFAULT NULL,
    education_level_id INTEGER DEFAULT NULL,
    academic_degree_id INTEGER DEFAULT NULL,
    is_married         BIT(1)  DEFAULT 0,

    PRIMARY KEY (human_id),
    FOREIGN KEY (nationality_id) REFERENCES Nationalities (nationality_id),
    FOREIGN KEY (citizenship_id) REFERENCES Citizenships (citizenship_id),
    FOREIGN KEY (education_level_id) REFERENCES EducationLevels (education_level_id),
    FOREIGN KEY (academic_degree_id) REFERENCES AcademicDegrees (academic_degree_id)
);

CREATE TABLE IF NOT EXISTS BirthRate
(
    birth_rate_id INTEGER  NOT NULL AUTO_INCREMENT,
    date          DATETIME NOT NULL,
    settlement_id INTEGER  NOT NULL,
    parent1_id    INTEGER,
    parent2_id    INTEGER,
    PRIMARY KEY (birth_rate_id),
    FOREIGN KEY (settlement_id) REFERENCES Settlements (settlement_id),
    FOREIGN KEY (parent1_id) REFERENCES Humans (human_id),
    FOREIGN KEY (parent2_id) REFERENCES Humans (human_id)
);

CREATE TABLE IF NOT EXISTS CausesOfDeath
(
    cause_of_death_id INTEGER NOT NULL AUTO_INCREMENT,
    name              VARCHAR(100),
    code_MKB10        VARCHAR(30),
    PRIMARY KEY (cause_of_death_id)
);

CREATE TABLE IF NOT EXISTS MortalityRate
(
    mortality_rate_id INTEGER  NOT NULL AUTO_INCREMENT,
    human_id          INTEGER  NOT NULL,
    cause_of_death_id INTEGER  NOT NULL,
    settlement_id     INTEGER  NOT NULL,
    date              DATETIME NOT NULL,
    PRIMARY KEY (mortality_rate_id),
    FOREIGN KEY (human_id) REFERENCES Humans (human_id),
    FOREIGN KEY (cause_of_death_id) REFERENCES CausesOfDeath (cause_of_death_id),
    FOREIGN KEY (settlement_id) REFERENCES Settlements (settlement_id)
);

-- Браки
CREATE TABLE IF NOT EXISTS Marriages
(
    marriage_id   INTEGER NOT NULL AUTO_INCREMENT,
    human1_id     INTEGER NOT NULL,
    human2_id     INTEGER NOT NULL,
    settlement_id INTEGER NOT NULL,
    date          DATE    NOT NULL,
    PRIMARY KEY (marriage_id),
    FOREIGN KEY (human1_id) REFERENCES Humans (human_id),
    FOREIGN KEY (human2_id) REFERENCES Humans (human_id),
    FOREIGN KEY (settlement_id) REFERENCES Settlements (settlement_id)
);

-- Разводы
CREATE TABLE IF NOT EXISTS Divorces
(
    divorce_id     INTEGER NOT NULL AUTO_INCREMENT,
    human1_id      INTEGER NOT NULL,
    human2_id      INTEGER NOT NULL,
    settlement_id  INTEGER NOT NULL,
    date           DATE    NOT NULL,
    children_count INTEGER DEFAULT 0, -- TODO: Maybe delete
    PRIMARY KEY (divorce_id),
    FOREIGN KEY (human1_id) REFERENCES Humans (human_id),
    FOREIGN KEY (human2_id) REFERENCES Humans (human_id),
    FOREIGN KEY (settlement_id) REFERENCES Settlements (settlement_id)
);

CREATE TABLE IF NOT EXISTS ArrivalGoal
(
    arrival_goal_id INTEGER NOT NULL AUTO_INCREMENT,
    goal            VARCHAR(100) NOT NULL,
    PRIMARY KEY (arrival_goal_id)
);

-- TODO: Доделать
CREATE TABLE IF NOT EXISTS ArrivalRate
(
    arrival_rate_id INTEGER NOT NULL AUTO_INCREMENT,
    human_id        INTEGER NOT NULL,
    date            DATE    NOT NULL,
    from_id         INTEGER NOT NULL,
    to_id           INTEGER NOT NULL,
    goal_id         INTEGER NOT NULL,

    PRIMARY KEY (arrival_rate_id),
    FOREIGN KEY (human_id) REFERENCES Humans (human_id),
    FOREIGN KEY (from_id) REFERENCES Settlements (settlement_id),
    FOREIGN KEY (to_id) REFERENCES Settlements (settlement_id),
    FOREIGN KEY (goal_id) REFERENCES ArrivalGoal (arrival_goal_id)
);

CREATE TABLE IF NOT EXISTS LeavingGoal
(
    leaving_goal_id INTEGER NOT NULL AUTO_INCREMENT,
    goal            VARCHAR(100) NOT NULL,
    PRIMARY KEY (leaving_goal_id)
);

CREATE TABLE IF NOT EXISTS LeavingRate
(
    leaving_rate_id INTEGER NOT NULL AUTO_INCREMENT,
    human_id        INTEGER NOT NULL,
    date            DATE    NOT NULL,
    from_id         INTEGER NOT NULL,
    to_id           INTEGER NOT NULL,
    goal_id         INTEGER NOT NULL,
    PRIMARY KEY (leaving_rate_id),
    FOREIGN KEY (human_id) REFERENCES Humans (human_id),
    FOREIGN KEY (from_id) REFERENCES Settlements (settlement_id),
    FOREIGN KEY (to_id) REFERENCES Settlements (settlement_id),
    FOREIGN KEY (goal_id) REFERENCES LeavingGoal (leaving_goal_id)
);

CREATE TABLE IF NOT EXISTS СonceptsAndDefinitions
(
    concept_and_definition_id INTEGER NOT NULL AUTO_INCREMENT,
    concept                   VARCHAR(100) NOT NULL,
    definition                VARCHAR(1000) NOT NULL,
    PRIMARY KEY (concept_and_definition_id)
);

CREATE TABLE IF NOT EXISTS DataSources
(
    data_source_id INTEGER NOT NULL AUTO_INCREMENT,
    name           VARCHAR(300) NOT NULL,
    reliability    DOUBLE  NOT NULL DEFAULT 1,
    PRIMARY KEY (data_source_id),
    CONSTRAINT DataSources_reliability_chk CHECK (reliability BETWEEN 0 AND 1)
);

CREATE TABLE IF NOT EXISTS StatisticalIndicators
(
    statistical_indicator_id INTEGER  NOT NULL AUTO_INCREMENT,
    name                     VARCHAR(100) NOT NULL,
    -- TODO: Тут можно ввести тригеры на обновление last_update
    last_update              DATETIME NOT NULL DEFAULT NOW(),
    creation_date            DATETIME NOT NULL DEFAULT NOW(),
    comment                  VARCHAR(1000),
    contact_person_id        INTEGER  NOT NULL,
    PRIMARY KEY (statistical_indicator_id),
    FOREIGN KEY (contact_person_id) REFERENCES Users (user_id)
);

CREATE TABLE IF NOT EXISTS TimeIntervals_StatisticalIndicators
(
    time_interval_id         INTEGER NOT NULL,
    statistical_indicator_id INTEGER NOT NULL,
    PRIMARY KEY (time_interval_id, statistical_indicator_id),
    FOREIGN KEY (time_interval_id) REFERENCES TimeIntervals (time_interval_id),
    FOREIGN KEY (statistical_indicator_id) REFERENCES StatisticalIndicators (statistical_indicator_id)
);

CREATE TABLE IF NOT EXISTS UnitsOfMeasure_StatisticalIndicators
(
    unit_of_measure_id       INTEGER NOT NULL,
    statistical_indicator_id INTEGER NOT NULL,
    PRIMARY KEY (unit_of_measure_id, statistical_indicator_id),
    FOREIGN KEY (unit_of_measure_id) REFERENCES UnitsOfMeasure (unit_of_measure_id),
    FOREIGN KEY (statistical_indicator_id) REFERENCES StatisticalIndicators (statistical_indicator_id)
);

CREATE TABLE IF NOT EXISTS СonceptsAndDefinitions_StatisticalIndicators
(
    concept_and_definition_id INTEGER NOT NULL,
    statistical_indicator_id  INTEGER NOT NULL,
    PRIMARY KEY (concept_and_definition_id, statistical_indicator_id),
    FOREIGN KEY (concept_and_definition_id) REFERENCES СonceptsAndDefinitions (concept_and_definition_id),
    FOREIGN KEY (statistical_indicator_id) REFERENCES StatisticalIndicators (statistical_indicator_id)
);

CREATE TABLE IF NOT EXISTS DataSources_StatisticalIndicators
(
    data_source_id           INTEGER NOT NULL,
    statistical_indicator_id INTEGER NOT NULL,
    PRIMARY KEY (data_source_id, statistical_indicator_id),
    FOREIGN KEY (data_source_id) REFERENCES DataSources (data_source_id),
    FOREIGN KEY (statistical_indicator_id) REFERENCES StatisticalIndicators (statistical_indicator_id)
);

CREATE VIEW HumansInfo AS
SELECT H.human_id,
       H.birthday,
       H.sex,
       N.name  AS nationality,
       C.name  AS citizenship,
       EL.name AS education_level,
       AD.name AS academic_degree,
       H.is_married
FROM Humans H
         LEFT JOIN Nationalities N on N.nationality_id = H.nationality_id
         LEFT JOIN Citizenships C on H.citizenship_id = C.citizenship_id
         LEFT JOIN EducationLevels EL on H.education_level_id = EL.education_level_id
         LEFT JOIN AcademicDegrees AD on H.academic_degree_id = AD.academic_degree_id;

# DROP VIEW HumansInfo;


-- Хочу получить:
--     Число родившихся
#     Число родившихся на 1000 человек населения
#     Число умерших
#     Число умерших на 1000 человек населения
#     Число умерших детей до 1 года
#     Число умерших детей до 1 года на 1000 родившихся
#     Число браков
#     Число разводов
#     Число прибывших лиц
#     Число выбывших лиц

-- Результат статичтических расчетов(дата, местность, показатели)

-- Область к которой относится информация(экономика, демография и т.д.)

-- Виды преступлений
-- Виды экономической деятельности
-- И т.д.

-- Показатели(Число населенных пунктов на начало периода, число сельских Советов на начало периода, Уровень занятости населения)
-- Источник данных
-- Комментарии

-- Различные веры и образования

show tables;