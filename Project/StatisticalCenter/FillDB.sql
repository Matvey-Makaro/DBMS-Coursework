-- Create AcademicDegrees
INSERT INTO statisticalcenter.academicdegrees (academic_degree_id, name) VALUES (1, 'Магистр');
INSERT INTO statisticalcenter.academicdegrees (academic_degree_id, name) VALUES (2, 'Кандидат наук');
INSERT INTO statisticalcenter.academicdegrees (academic_degree_id, name) VALUES (3, 'Доктор наук');
INSERT INTO statisticalcenter.academicdegrees (academic_degree_id, name) VALUES (4, 'Бакалавр');

-- Create ArrivalGoal
INSERT INTO statisticalcenter.arrivalgoal (arrival_goal_id, goal) VALUES (1, 'Учеба');
INSERT INTO statisticalcenter.arrivalgoal (arrival_goal_id, goal) VALUES (2, 'Работа');
INSERT INTO statisticalcenter.arrivalgoal (arrival_goal_id, goal) VALUES (3, 'Семейные обстоятельства');

-- CreateLeavingGoal
INSERT INTO statisticalcenter.leavinggoal (leaving_goal_id, goal) VALUES (1, 'Учеба');
INSERT INTO statisticalcenter.leavinggoal (leaving_goal_id, goal) VALUES (2, 'Работа');
INSERT INTO statisticalcenter.leavinggoal (leaving_goal_id, goal) VALUES (3, 'Семейные обстоятельства');


-- Create Charts
INSERT INTO statisticalcenter.charts (chart_id, name, description) VALUES (1, 'Линейный график', 'Линейный график представляет собой линию, соединяющую точки данных на плоскости. Используется для отображения изменения значений величины во времени или при изменении другого параметра.');
INSERT INTO statisticalcenter.charts (chart_id, name, description) VALUES (2, 'Столбчатая диаграмма', 'Столбчатая диаграмма использует прямоугольные столбцы для представления данных. Чаще всего используется для сравнения значений различных категорий или отслеживания изменений величин.');
INSERT INTO statisticalcenter.charts (chart_id, name, description) VALUES (3, 'Круговая диаграмма', 'Круговая диаграмма представляет собой круг, разделенный на секторы, пропорциональные относительным размерам частей целого. Подходит для отображения долей в общей сумме.');
INSERT INTO statisticalcenter.charts (chart_id, name, description) VALUES (4, 'Гистограмма', ' Гистограмма используется для представления распределения данных по интервалам или группам. Каждый столбец представляет собой частоту встречаемости значений в определенном диапазоне.');
INSERT INTO statisticalcenter.charts (chart_id, name, description) VALUES (5, 'Точечная диаграмма', 'Точечная диаграмма представляет собой набор точек, каждая из которых представляет сочетание значений двух переменных. Используется для выявления взаимосвязи или распределения данных.');

-- Create Citizenships
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (1, 'Соединенные Штаты Америки');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (2, 'России');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (3, 'Беларуси');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (4, 'Китая');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (5, 'Германии');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (6, 'Великобритании');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (7, 'Канады');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (8, 'Франции');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (9, 'Японии');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (10, 'Австралии');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (11, 'Индии');

-- Create Natinalities
INSERT INTO statisticalcenter.nationalities (nationality_id, name) VALUES (1, 'белорусы');
INSERT INTO statisticalcenter.nationalities (nationality_id, name) VALUES (2, 'русские');
INSERT INTO statisticalcenter.nationalities (nationality_id, name) VALUES (3, 'поляки');
INSERT INTO statisticalcenter.nationalities (nationality_id, name) VALUES (4, 'украинцы');
INSERT INTO statisticalcenter.nationalities (nationality_id, name) VALUES (5, 'евреи');
INSERT INTO statisticalcenter.nationalities (nationality_id, name) VALUES (6, 'другие национальности');


-- Create DataSources
INSERT INTO statisticalcenter.datasources (data_source_id, name, reliability) VALUES (1, 'Выборочное обследование домашних хозяйств в целях изучения проблем занятости населения', 1);
INSERT INTO statisticalcenter.datasources (data_source_id, name, reliability) VALUES (2, 'Тестовый источник данных', 1);

-- Create CouseOfDeath
INSERT INTO statisticalcenter.causesofdeath (cause_of_death_id, name, code_MKB10) VALUES (1, 'Злокачественные новообразования пищевода ', 'C15');
INSERT INTO statisticalcenter.causesofdeath (cause_of_death_id, name, code_MKB10) VALUES (2, 'Дифтерия ', 'A36');
INSERT INTO statisticalcenter.causesofdeath (cause_of_death_id, name, code_MKB10) VALUES (3, 'Другие формы столбняка', 'A35 ');
INSERT INTO statisticalcenter.causesofdeath (cause_of_death_id, name, code_MKB10) VALUES (4, 'Коклюш', 'A37');
INSERT INTO statisticalcenter.causesofdeath (cause_of_death_id, name, code_MKB10) VALUES (5, 'Скарлатина', 'A38');
INSERT INTO statisticalcenter.causesofdeath (cause_of_death_id, name, code_MKB10) VALUES (6, 'Менингококковая инфекция', 'A39');

-- Create Departments
INSERT INTO statisticalcenter.departments (department_id, name) VALUES (1, 'управление статистики занятости населения Главного управления статистики труда');
INSERT INTO statisticalcenter.departments (department_id, name) VALUES (2, 'Тестовый отдел');

-- Create EducationLevel
INSERT INTO statisticalcenter.educationlevels (education_level_id, name) VALUES (1, 'Дошкольное');
INSERT INTO statisticalcenter.educationlevels (education_level_id, name) VALUES (2, 'Общее базовое');
INSERT INTO statisticalcenter.educationlevels (education_level_id, name) VALUES (3, 'Общее среднее');
INSERT INTO statisticalcenter.educationlevels (education_level_id, name) VALUES (4, 'Профессионально-техническое');
INSERT INTO statisticalcenter.educationlevels (education_level_id, name) VALUES (5, 'Среднее специальное');
INSERT INTO statisticalcenter.educationlevels (education_level_id, name) VALUES (6, 'Высшее профессиональное');

-- Create SettlementsType
INSERT INTO statisticalcenter.settlementstype (settlement_type_id, name, short_name) VALUES (1, 'город', 'г.');
INSERT INTO statisticalcenter.settlementstype (settlement_type_id, name, short_name) VALUES (2, 'планета', null);
INSERT INTO statisticalcenter.settlementstype (settlement_type_id, name, short_name) VALUES (3, 'страна', null);
INSERT INTO statisticalcenter.settlementstype (settlement_type_id, name, short_name) VALUES (4, 'область', 'обл.');
INSERT INTO statisticalcenter.settlementstype (settlement_type_id, name, short_name) VALUES (5, 'район', 'р-н.');
INSERT INTO statisticalcenter.settlementstype (settlement_type_id, name, short_name) VALUES (6, 'агрогородок', 'аг.');
INSERT INTO statisticalcenter.settlementstype (settlement_type_id, name, short_name) VALUES (7, 'деревня', 'д.');

-- Create Settlements
INSERT INTO statisticalcenter.settlements (settlement_id, settlements_type_id, parent_id, name) VALUES (1, 2, null, 'Земля');
INSERT INTO statisticalcenter.settlements (settlement_id, settlements_type_id, parent_id, name) VALUES (2, 3, 1, 'Республика Беларусь');
INSERT INTO statisticalcenter.settlements (settlement_id, settlements_type_id, parent_id, name) VALUES (3, 1, 2, 'Минск');
INSERT INTO statisticalcenter.settlements (settlement_id, settlements_type_id, parent_id, name) VALUES (4, 4, 2, 'Гродненская');
INSERT INTO statisticalcenter.settlements (settlement_id, settlements_type_id, parent_id, name) VALUES (5, 4, 2, 'Брестская');
INSERT INTO statisticalcenter.settlements (settlement_id, settlements_type_id, parent_id, name) VALUES (6, 4, 2, 'Витебская');
INSERT INTO statisticalcenter.settlements (settlement_id, settlements_type_id, parent_id, name) VALUES (7, 4, 2, 'Гомельская');
INSERT INTO statisticalcenter.settlements (settlement_id, settlements_type_id, parent_id, name) VALUES (8, 4, 2, 'Минская');
INSERT INTO statisticalcenter.settlements (settlement_id, settlements_type_id, parent_id, name) VALUES (9, 4, 2, 'Могилевская');
INSERT INTO statisticalcenter.settlements (settlement_id, settlements_type_id, parent_id, name) VALUES (10, 5, 4, 'Щучинский');
INSERT INTO statisticalcenter.settlements (settlement_id, settlements_type_id, parent_id, name) VALUES (11, 1, 10, 'Щучин');
INSERT INTO statisticalcenter.settlements (settlement_id, settlements_type_id, parent_id, name) VALUES (12, 6, 10, 'Рожанка');
INSERT INTO statisticalcenter.settlements (settlement_id, settlements_type_id, parent_id, name) VALUES (13, 7, 10, 'Потока');

-- Create unitsOfMeasure
INSERT INTO statisticalcenter.unitsofmeasure (unit_of_measure_id, name, description) VALUES (1, 'проценты', '%');
INSERT INTO statisticalcenter.unitsofmeasure (unit_of_measure_id, name, description) VALUES (2, 'человек', null);
INSERT INTO statisticalcenter.unitsofmeasure (unit_of_measure_id, name, description) VALUES (3, 'единиц', null);

-- Create Addresses
INSERT INTO statisticalcenter.addresses (address_id, settlement_id, street, house_num) VALUES (1, 3, 'Якуба Коласа', '28');
INSERT INTO statisticalcenter.addresses (address_id, settlement_id, street, house_num) VALUES (2, 11, 'Строителей', '8');

-- Create Organizations
INSERT INTO statisticalcenter.organizations (organization_id, address_id, name, short_name, phone_num, city_telephone_num, email) VALUES (1, 1, 'Статистический центр', null, '+375295941978', null, 'stat@gmail.com');
INSERT INTO statisticalcenter.organizations (organization_id, address_id, name, short_name, phone_num, city_telephone_num, email) VALUES (2, 2, 'Щучинский статистический центр', null, '+375752517856', null, 'shstat@gmail.com');

-- Create TimeIntervals
INSERT INTO statisticalcenter.timeintervals (time_interval_id, name, interval_in_seconds) VALUES (1, 'месяц', 2592000);
INSERT INTO statisticalcenter.timeintervals (time_interval_id, name, interval_in_seconds) VALUES (2, 'квартал', 7862400);
INSERT INTO statisticalcenter.timeintervals (time_interval_id, name, interval_in_seconds) VALUES (3, 'год', 31536000);

-- Create Humans
INSERT INTO statisticalcenter.humans (human_id, birthday, sex, nationality_id, citizenship_id, education_level_id, academic_degree_id, is_married) VALUES (1, '2000-12-14', 'Male', 1, 1, 6, 4, true);
INSERT INTO statisticalcenter.humans (human_id, birthday, sex, nationality_id, citizenship_id, education_level_id, academic_degree_id, is_married) VALUES (2, '2021-06-02', 'Female', 1, 1, 6, 4, true);
INSERT INTO statisticalcenter.humans (human_id, birthday, sex, nationality_id, citizenship_id, education_level_id, academic_degree_id, is_married) VALUES (3, '1976-12-18', 'Male', 2, 2, 5, null, false);
INSERT INTO statisticalcenter.humans (human_id, birthday, sex, nationality_id, citizenship_id, education_level_id, academic_degree_id, is_married) VALUES (4, '1992-06-17', 'Female', 1, 1, 4, null, false);
INSERT INTO statisticalcenter.humans (human_id, birthday, sex, nationality_id, citizenship_id, education_level_id, academic_degree_id, is_married) VALUES (5, '1991-12-13', 'Male', 2, 2, 3, null, true);
INSERT INTO statisticalcenter.humans (human_id, birthday, sex, nationality_id, citizenship_id, education_level_id, academic_degree_id, is_married) VALUES (6, '1987-10-17', 'Female', 3, 3, 2, null, true);

-- Create ArrivalRate
INSERT INTO statisticalcenter.arrivalrate (arrival_rate_id, human_id, date, from_id, to_id, goal_id) VALUES (1, 6, '2022-12-02', 3, 11, 1);
INSERT INTO statisticalcenter.arrivalrate (arrival_rate_id, human_id, date, from_id, to_id, goal_id) VALUES (2, 5, '2022-12-03', 3, 11, 2);

-- Create Birthrate
INSERT INTO statisticalcenter.birthrate (birth_rate_id, date, parent1_id, parent2_id, settlement_id) VALUES (1, '2022-12-17 17:55:12', 1, 2, 11);
INSERT INTO statisticalcenter.birthrate (birth_rate_id, date, parent1_id, parent2_id, settlement_id) VALUES (2, '2022-12-16 17:56:18', 5, 6, 11);

-- Create divorces
INSERT INTO statisticalcenter.divorces (divorce_id, human1_id, human2_id, date, children_count, settlement_id) VALUES (1, 1, 2, '2023-12-16', 1, 11);
INSERT INTO statisticalcenter.divorces (divorce_id, human1_id, human2_id, date, children_count, settlement_id) VALUES (2, 5, 6, '2023-12-15', 1, 11);

-- Create mortalityRate
INSERT INTO statisticalcenter.mortalityrate (mortality_rate_id, human_id, cause_of_death_id, date, settlement_id) VALUES (1, 3, 1, '2022-07-22 18:02:03', 11);
INSERT INTO statisticalcenter.mortalityrate (mortality_rate_id, human_id, cause_of_death_id, date, settlement_id) VALUES (2, 4, 2, '2022-07-17 18:02:34', 11);

-- Create Positions
INSERT INTO statisticalcenter.positions (position_id, name) VALUES (1, 'Начальник отдела');
INSERT INTO statisticalcenter.positions (position_id, name) VALUES (2, 'Специалист');
INSERT INTO statisticalcenter.positions (position_id, name) VALUES (3, 'Консультант');

-- Create Users
INSERT INTO statisticalcenter.users (user_id, name, surname, patronymic, phone_num, city_telephone_num, email, position_id, department_id) VALUES (1, 'Александр', 'Александров', 'Александрович', '+375295752319', null, 'alex@gmail.com', 3, 1);
INSERT INTO statisticalcenter.users (user_id, name, surname, patronymic, phone_num, city_telephone_num, email, position_id, department_id) VALUES (2, 'Татьяна', 'Савченко', 'Ивановна', '+375173785839', null, 'savchenko@gmail.com', 2, 2);

-- Create StatisticalIndicators
INSERT INTO statisticalcenter.statisticalindicators (statistical_indicator_id, name, last_update, creation_date, comment, contact_person_id) VALUES (1, 'Число родившихся', '2023-12-17 18:08:58', '2023-12-17 18:08:58', 'Методики по формированию и расчету статистических показателей приведены на официальном Интернет-сайте', 1);
INSERT INTO statisticalcenter.statisticalindicators (statistical_indicator_id, name, last_update, creation_date, comment, contact_person_id) VALUES (2, 'Число умерших детей до 1 года', '2023-12-17 18:10:55', '2023-12-17 18:10:55', null, 1);
INSERT INTO statisticalcenter.statisticalindicators (statistical_indicator_id, name, last_update, creation_date, comment, contact_person_id) VALUES (3, 'Число умерших', '2023-12-17 18:10:55', '2023-12-17 18:10:55', null, 1);
INSERT INTO statisticalcenter.statisticalindicators (statistical_indicator_id, name, last_update, creation_date, comment, contact_person_id) VALUES (4, 'Число браков', '2023-12-17 18:10:55', '2023-12-17 18:10:55', null, 1);
INSERT INTO statisticalcenter.statisticalindicators (statistical_indicator_id, name, last_update, creation_date, comment, contact_person_id) VALUES (5, 'Число разводов', '2023-12-17 18:10:55', '2023-12-17 18:10:55', null, 2);
INSERT INTO statisticalcenter.statisticalindicators (statistical_indicator_id, name, last_update, creation_date, comment, contact_person_id) VALUES (6, 'Число прибывших лиц', '2023-12-17 18:10:55', '2023-12-17 18:10:55', null, 2);
INSERT INTO statisticalcenter.statisticalindicators (statistical_indicator_id, name, last_update, creation_date, comment, contact_person_id) VALUES (7, 'Число выбывших лиц', '2023-12-17 18:10:55', '2023-12-17 18:10:55', null, 2);

