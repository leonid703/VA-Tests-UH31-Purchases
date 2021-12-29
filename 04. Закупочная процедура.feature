﻿#language: ru

@tree

Функционал: 04. ЗАКУПОЧНАЯ ПРОЦЕДУРА

Как бизнес-аналитик я хочу
проверить работоспособность 
чтобы исключить ошибки 

Контекст:
	И я подключаю TestClient "УХ31 НСИ" логин "Администратор" пароль ""  
	И Я закрыл все окна клиентского приложения

Сценарий: 04.00 Приказ о назначении закупочной комиссии
	
	* Создаем

		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Приказ о закупочной комиссии'
		Тогда открылось окно 'Приказ о закупочной комиссии'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Приказ о закупочной комиссии (создание)'
		
		И в таблице "ЗакупочнаяКомиссия" я нажимаю на кнопку с именем 'ЗакупочнаяКомиссияДобавить'
	
	* Заполняем табличную часть
	
		И в таблице "ЗакупочнаяКомиссия" я нажимаю кнопку выбора у реквизита "Организация"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Королевство Севера [223]' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Приказ о закупочной комиссии (создание) *'
		
		И в таблице "ЗакупочнаяКомиссия" из выпадающего списка "Организация" я выбираю точное значение 'Королевство Севера [223]'
		И я перехожу к следующему реквизиту
		
		И в таблице "ЗакупочнаяКомиссия" я нажимаю кнопку выбора у реквизита "Должность"
		Тогда открылось окно 'Должности'
		И в таблице "Список" я перехожу к строке:
				| 'Наименование' |
				| 'Магнат'       |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Приказ о закупочной комиссии (создание) *'
		И я перехожу к следующему реквизиту
		
		И в таблице "ЗакупочнаяКомиссия" из выпадающего списка "Роль" я выбираю точное значение 'Председатель комиссии'
		И я перехожу к следующему реквизиту
		И в таблице "ЗакупочнаяКомиссия" я нажимаю кнопку выбора у реквизита "Сотрудник"
		Тогда открылось окно 'Физические лица'
		И в таблице "Список" я перехожу к строке:
			| 'ИНН'          | 'ФИО'          |
			| '505100065090' | 'Болтон Рамси' |
		И в таблице "Список" я выбираю текущую строку
		
		Тогда открылось окно 'Приказ о закупочной комиссии (создание) *'
		И в таблице "ЗакупочнаяКомиссия" я завершаю редактирование строки

	* Записываем	
	
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'Приказ о закупочной комиссии (создание) *' в течение 20 секунд
		Тогда открылось окно 'Приказ о закупочной комиссии'
		И Я закрываю окно 'Приказ о закупочной комиссии'

Сценарий: 04.01 ЗП1 [лотовая]-[Товар1]-[По критериям]

	* Создание

		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Строки планов закупок'
		И в таблице "Список" я перехожу к строке:
			| 'Валюта документа' | 'Заказчик'                 | 'Организатор закупки'      | 'Период закупок' | 'Предмет договора'          | 'Состояние' | 'Способ закупки'     | 'Статус'    | 'Сумма документа' |
			| 'RUB'              | 'Королевство Севера [223]' | 'Королевство Севера [223]' | '2022 г.'        | 'ТЕСТ1 [ПО ПЛАНУ]-[Товар1]' | 'Утвержден' | 'Запрос предложений' | 'Утвержден' | '400 000,00'      |

		И я нажимаю на кнопку 'Открыть или создать закупочную процедуру'
		Тогда открылось окно 'Закупочная процедура №000000001'
	
	* Приказ
	
		И я нажимаю кнопку выбора у поля "Приказ о назначении закупочной комиссии"
		Тогда открылось окно 'Приказ о закупочной комиссии'
		И в таблице "Список" я перехожу к строке:
			| 'Номер приказа' |
			| '000000001'     |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Закупочная процедура №000000001 *'
		
	* ЭТП 
	
		И я нажимаю кнопку выбора у поля с именем "ЭТППубликации"
		Тогда открылось окно 'Классификатор электронных торговых площадок'
		И Я закрываю окно 'Классификатор электронных торговых площадок'
		Тогда открылось окно 'Закупочная процедура №000000001 *'
	
	* Оформление	
	
		И из выпадающего списка "Оформление" я выбираю точное значение 'Выбор поставщика в системе 1С'

	* Записываем
		
		Когда открылось окно 'Закупочная процедура №000000001 *'
		И в поле с именем 'ПорядокПредоставления' я ввожу текст 'Общий'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Закупочная процедура №000000001 *' в течение 20 секунд		

Сценарий: 04.02 Предложения участников

Сценарий: 04.03 Оценка предложений

Сценарий: 04.04 Договоры с поставщиком

Сценарий: 04.05 Заказы поставщикам

Сценарий: 04.06 ПТУ

Сценарий: 04.07 Возвраты поставщикам



