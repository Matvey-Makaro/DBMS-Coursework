Идеи:
1. Полный адрес до определенного объекта
2. Добавить статистику
3. Получить количество за определенный период(возможно с дополнительным параметром)
-- TODO: Добавить информацию о месте рождения

Триггеры
1. Удалить пробельные символы в начале и конце строковых данных
2. Проверить что ребенка родили мальчик и девочка
3. Триггеры на изменение даты обновления

DELIMITER //
CREATE FUNCTION insert_human(IN h_birthday DATE, IN h_sex VARCHAR(10), IN nationality VARCHAR(100),
                             IN citizenship VARCHAR(100), IN education_level VARCHAR(100),
                             IN academic_degree VARCHAR(100), IN h_is_married BIT(1)) RETURNS INT
BEGIN
    -- Объявление переменных
    DECLARE h_id INT;

    INSERT INTO

    SELECT human_id
    INTO h_id
    FROM HumansInfo
    WHERE h_birthday = birthday
      AND h_sex = sex
      AND humansinfo.nationality = nationality
      AND humansinfo.citizenship = citizenship
      AND humansinfo.education_level = education_level
      AND humansinfo.academic_degree = academic_degree
      AND is_married = h_is_married;

    IF h_id IS NULL THEN
        BEGIN
        END;
    END IF;
END;
end if;

DELIMITER //
CREATE FUNCTION get_human_id(IN h_birthday DATE, IN h_sex VARCHAR(10), IN nationality VARCHAR(100),
                             IN citizenship VARCHAR(100), IN education_level VARCHAR(100),
                             IN academic_degree VARCHAR(100), IN h_is_married BIT(1)) RETURNS INT
BEGIN
    -- Объявление переменных
    DECLARE h_id INT;

    SELECT human_id
    INTO h_id
    FROM HumansInfo
    WHERE h_birthday = birthday
      AND h_sex = sex
      AND humansinfo.nationality = nationality
      AND humansinfo.citizenship = citizenship
      AND humansinfo.education_level = education_level
      AND humansinfo.academic_degree = academic_degree
      AND is_married = h_is_married;

    IF h_id IS NULL THEN
        BEGIN
        END;
    END IF;
END;
end if;

    -- Присваивание значений переменным
SET variable1 = 10;
SET variable2 = 20;

-- Использование переменных внутри функции
DECLARE result INT;
SET result = variable1 + variable2;

-- Возвращение результата
RETURN result;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE add_birth(IN date DATETIME,
                           IN human1_birthday DATE, IN human1_sex VARCHAR(10), IN human1_nationality VARCHAR(100),
                           IN human1_citizenship VARCHAR(100), IN human1_education_level VARCHAR(100),
                           IN human1_academic_degree VARCHAR(100), IN human1_is_married BIT(1),
                           IN human2_birthday DATE, IN human2_sex VARCHAR(10), IN human2_nationality VARCHAR(100),
                           IN human2_citizenship VARCHAR(100), IN human2_education_level VARCHAR(100),
                           IN human2_academic_degree VARCHAR(100), IN human2_is_married BIT(1))
BEGIN
    DECLARE human1_nationality_id INT;
    DECLARE human1_citizenship_id INT;
    DECLARE human1_education_level_id INT;
    DECLARE human1_academic_degree_id INT;
    DECLARE human2_nationality_id INT;
    DECLARE human2_citizenship_id INT;
    DECLARE human2_education_level_id INT;
    DECLARE human2_academic_degree_id INT;
    SELECT card_id
    INTO c_id
    FROM Cards
    WHERE reader_id = @CUR_ID
      AND book_id = b_id
      AND status = 'BOOKED'
      AND period > NOW();
    IF c_id IS NOT NULL THEN
        BEGIN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Such book is already booked.';
        END;
    END IF;
DELIMITER ;

DELIMITER //
CREATE PROCEDURE book_book(IN b_id INT)
BEGIN
    DECLARE c_id INT;
    SELECT card_id
    INTO c_id
    FROM Cards
    WHERE reader_id = @CUR_ID
      AND book_id = b_id
      AND status = 'BOOKED'
      AND period > NOW();
    IF c_id IS NOT NULL THEN
        BEGIN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Such book is already booked.';
        END;
    END IF;
DELIMITER ;


INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (7, '  Канады  ');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (8, '  Франции');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (9, 'Японии   ');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (10, '    Австралии   ');
INSERT INTO statisticalcenter.citizenships (citizenship_id, name) VALUES (11, ' Индии ');

INSERT INTO statisticalcenter.nationalities (nationality_id, name) VALUES (4, ' украинцы');
INSERT INTO statisticalcenter.nationalities (nationality_id, name) VALUES (5, 'евреи ');
INSERT INTO statisticalcenter.nationalities (nationality_id, name) VALUES (6, '  другие национальности  ');