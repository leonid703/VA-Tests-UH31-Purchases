﻿#language: ru

@tree

Функционал: ПЛАН ПОТРЕБНОСТИ

Как бизнес-аналитик я хочу
проверить работоспособность плана
чтобы исключить ошибки при работе

Контекст:
	И я подключаю TestClient "УХ31 НСИ" логин "Администратор" пароль ""  
	И Я закрыл все окна клиентского приложения

Сценарий: 1. Регистрируем план потребности
	
	* Создание плана

		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Планы потребности'
		Тогда открылось окно 'Потребность ДЗО : Операционные планы'
		
		И в таблице "Список" я нажимаю на кнопку с именем 'Создать'
		Тогда открылось окно 'Потребность ДЗО: Планирование (создание) *'
	
	* Вид операции	
	
		И из выпадающего списка "Вид операции" я выбираю точное значение 'Планирование'
	
	* Период
	
		И я нажимаю кнопку выбора у поля "Период с"
		Тогда открылось окно 'Периоды'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'   |
			| 'Январь 2022 г.' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование (создание) *'

		И я нажимаю кнопку выбора у поля "по"
		Тогда открылось окно 'Периоды'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'    |
			| 'Декабрь 2022 г.' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование (создание) *'
		
	* Валюта	
	
		И из выпадающего списка "Валюта документа" я выбираю точное значение 'RUB'
	
	* Вариант настройки	
	
		И я нажимаю кнопку выбора у поля "Вариант настройки"
		Тогда открылось окно 'Варианты настроек операционного плана'
		И в таблице "Список" я перехожу к строке:
			| 'Вид бюджета'    | 'Наименование'       |
			| 'Бюджет закупок' | 'Основной вид плана' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование (создание) *'
	
	* Направление операции 	
	
		И из выпадающего списка "Направление операции" я выбираю точное значение 'Приход'
	
	* ЦФО	
	
		И я нажимаю кнопку выбора у поля "ЦФО"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование в программе'      | 'Тип организации' |
			| '00-000014' | 'ЦФО1 Королевство Севера [223]' | 'ЦФО'             |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование (создание) *'

	* Организация

		И я нажимаю кнопку выбора у поля "Организация"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование в программе' | 'Тип организации'       |
			| '00-000003' | 'Королевство Севера [223]' | 'Налоговый резидент РФ' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование (создание) *'
	
	* Статья	
	
		И я нажимаю кнопку выбора у поля "Статья бюджета"
		Тогда открылось окно 'Статьи бюджета закупок'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'                       |
			| 'Приобретение товаров, работ, услуг' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование (создание) *'
	
	* Аналитика1	
	
		И я нажимаю кнопку выбора у поля "Аналитика 1"
		Тогда открылось окно 'Номенклатурные группы'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'                   |
			| 'Основная номенклатурная группа' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование (создание) *'

	* Место поставки	
	
		И я нажимаю кнопку выбора у поля "Место поставки"
		Тогда открылось окно 'Места поставки товаров (оказания услуг)'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'   |
			| 'МестоПоставки1' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование (создание) *'

	* Приоритет	
	
		И я нажимаю кнопку выбора у поля "Приоритет"
		Тогда открылось окно 'Приоритеты потребностей'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| 'Обычный'      |
		И в таблице "Список" я выбираю текущую строку
	
	* Запись
		
		И я нажимаю на кнопку 'Записать'
		Тогда открылось окно 'Потребность ДЗО: Планирование * от *'

	* Переходим к закладке Данные планирования

		И я перехожу к закладке "Данные планирования"
		
	* Устанавливаем режим работы с номенклатурой
	
		И в таблице "КроссТаблица" я нажимаю на кнопку 'Тип номенклатуры: [любой]'
		Тогда открылось окно 'Выбор типа номенклатуры'
		И в таблице "" я перехожу к первой строке
		И в таблице "" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от *'
	
	* Строка 1 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'кг'      | 'Товар1'       |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'кг'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '500,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '200,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '200,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '200,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '200,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки

	* Строка 2 	

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'упак'    | 'Товар2'       |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'упак'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '400,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '50,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '50,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '30,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '30,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки
		
	* Строка 3 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'шт'      | 'Товар3'       |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'шт'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '1 200,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '20,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '20,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '20,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '20,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки
	
	* Строка 4 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'т'       | 'Материал1'    |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'т'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '8 100,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '10,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '12,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '8,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '22,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки

	* Строка 5 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'т'       | 'Материал2'    |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'т'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '4 600,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '11,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '11,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '18,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '12,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки
	
	* Строка 6 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'т'       | 'Материал3'    |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'т'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '1 400,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '101,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '101,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '108,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '102,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки	

	* Строка 7 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'л'       | 'Топливо1'     |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'л'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '54,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '1000,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '1000,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '1000,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '1000,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки	

	* Строка 8 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'шт'      | 'Работа1'      |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'шт'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '67 540,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '1,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '1,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '1,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '1,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки	

	* Строка 9 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'шт'      | 'Работа2'      |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'шт'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '167 520,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '6,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '6,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '6,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '6,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки	

	* Строка 10 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'шт'      | 'Работа3'      |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'шт'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '120 000,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '2,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '3,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '2,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '1,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки	

	* Строка 11 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'шт'      | 'Услуга1'      |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'шт'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '16 555,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '1,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '2,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '1,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '2,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки	

	* Строка 12 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'шт'      | 'Услуга2'      |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'шт'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '520,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '3,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '3,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '3,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '3,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки	

	* Строка 13 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'шт'      | 'Услуга3'      |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'шт'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '10 000,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '12,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '30,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '20,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '11,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки
		
	* Строка 14 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'шт'      | 'Товар4'       |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'шт'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '1 000,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '34,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '30,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '22,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '45,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки	

	* Строка 15 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'шт'      | 'Товар5'       |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'шт'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '14 000,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '3,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '3,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '3,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '3,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки	

	* Строка 16 

		И в таблице "КроссТаблица" я нажимаю на кнопку 'Добавить'
		И в таблице "КроссТаблица" я нажимаю кнопку выбора у реквизита "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'шт'      | 'Товар6'       |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Потребность ДЗО: Планирование * от * *'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" из выпадающего списка "Ед. изм." я выбираю точное значение 'шт'
		
		И в таблице "КроссТаблица" в поле 'Цена' я ввожу текст '15 000,00'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '13,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '13,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '13,000'
		И в таблице "КроссТаблица" я перехожу к следующей ячейке
		
		И в таблице "КроссТаблица" в текущее поле я ввожу текст '13,000'
		И в таблице "КроссТаблица" я завершаю редактирование строки	
		
	* Запись и проведение	
	
		И я нажимаю на кнопку 'Записать'
		Тогда открылось окно 'Потребность ДЗО: Планирование * от *'
		И из выпадающего списка "Статус" я выбираю точное значение 'Утвержден'
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'Потребность ДЗО: Планирование * от *' в течение 20 секунд



Сценарий: 2. Операционный план по организации 2

Сценарий: 3. Операционный план по организации 3


