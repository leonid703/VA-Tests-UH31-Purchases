﻿#language: ru

@tree

Функционал: 05. ДОГОВОРЫ

Как бизнес-аналитик я хочу
проверить работоспособность 
чтобы исключить ошибки 

Контекст:
	И я подключаю TestClient "УХ - Закупки" логин "Администратор" пароль ""  
	И Я закрыл все окна клиентского приложения

Сценарий: 05.1. Договор [L1]

* Запоминаем в переменную текущую дату

		И Я запоминаю значение выражения 'СокрЛП(ТекущаяДата())' в переменную "ТекущаяДата"

* Находим нужный протокол
 			
		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Протоколы закупочных процедур'
		Тогда открылось окно 'Протоколы закупочных процедур'
		И в таблице "Список" я перехожу к строке:
			| 'Закупочная процедура' |
			| 'ЗП1'                  |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Протокол выбора победителей * от *'

* Переходим к управлению договорами		

		И я нажимаю на кнопку 'Управление договорами закупки'
		Тогда открылось окно 'Формирование договоров с победителями торгов'
		И в таблице "ПобедившиеПредложенияПоставщиков" я перехожу к строке:
			| 'Поставщик'  |
			| 'Поставщик1' |
		И в таблице "ПобедившиеПредложенияПоставщиков" я нажимаю на кнопку 'Создать договор'

* Создаем договор		

		Тогда открылось окно 'С поставщиком (создание)'
		И в поле 'Номер' я ввожу текст 'L1'
		И я нажимаю кнопку выбора у поля "от"
		И в поле 'от' я ввожу значение переменной "ТекущаяДата"
		И я перехожу к закладке "Условия"
		И из выпадающего списка "Ведение расчетов" я выбираю точное значение 'По заказам'
		И я перехожу к закладке "График поставок"
		И я устанавливаю флаг 'Контролировать цену в заказах'
		
* Закрываем договор

		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'С поставщиком (создание) *' в течение 20 секунд
		Тогда открылось окно 'Формирование договоров с победителями торгов'
		
		И Я закрыл все окна клиентского приложения

Сценарий: 05.2. Договор [L2]

* Запоминаем в переменную текущую дату

		И Я запоминаю значение выражения 'СокрЛП(ТекущаяДата())' в переменную "ТекущаяДата"

* Находим нужный протокол
 			
		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Протоколы закупочных процедур'
		Тогда открылось окно 'Протоколы закупочных процедур'
		И в таблице "Список" я перехожу к строке:
			| 'Закупочная процедура' |
			| 'ЗП2'                  |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Протокол выбора победителей * от *'

* Переходим к управлению договорами		

		И я нажимаю на кнопку 'Управление договорами закупки'
		Тогда открылось окно 'Формирование договоров с победителями торгов'
		И в таблице "ПобедившиеПредложенияПоставщиков" я перехожу к строке:
			| 'Поставщик'  |
			| 'Поставщик2' |
		И в таблице "ПобедившиеПредложенияПоставщиков" я нажимаю на кнопку 'Создать договор'

* Создаем договор		

		Тогда открылось окно 'С поставщиком (создание)'
		И в поле 'Номер' я ввожу текст 'L2'
		И я нажимаю кнопку выбора у поля "от"
		И в поле 'от' я ввожу значение переменной "ТекущаяДата"
		И я перехожу к закладке "Условия"
		И из выпадающего списка "Ведение расчетов" я выбираю точное значение 'По заказам'
		И я перехожу к закладке "График поставок"
		И я устанавливаю флаг 'Контролировать цену в заказах'
		
* Закрываем договор

		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'С поставщиком (создание) *' в течение 20 секунд
		Тогда открылось окно 'Формирование договоров с победителями торгов'
		
		И Я закрыл все окна клиентского приложения
		
Сценарий: 05.3. Договор [L3.1,L3.2]

* Запоминаем в переменную текущую дату

		И Я запоминаю значение выражения 'СокрЛП(ТекущаяДата())' в переменную "ТекущаяДата"

* Находим нужный протокол
 			
		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Протоколы закупочных процедур'
		Тогда открылось окно 'Протоколы закупочных процедур'
		И в таблице "Список" я перехожу к строке:
			| 'Закупочная процедура' |
			| 'ЗП3'                  |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Протокол выбора победителей * от *'

* Переходим к управлению договорами		

		И я нажимаю на кнопку 'Управление договорами закупки'
		Тогда открылось окно 'Формирование договоров с победителями торгов'
		
* Договор L3.1
		
		И в таблице "ПобедившиеПредложенияПоставщиков" я перехожу к строке:
			| 'Поставщик'  |
			| 'Поставщик2' |
		И в таблице "ПобедившиеПредложенияПоставщиков" я нажимаю на кнопку 'Создать договор'

* Создаем договор		

		Тогда открылось окно 'С поставщиком (создание)'
		И в поле 'Номер' я ввожу текст 'L3.1'
		И я нажимаю кнопку выбора у поля "от"
		И в поле 'от' я ввожу значение переменной "ТекущаяДата"
		И я перехожу к закладке "Условия"
		И из выпадающего списка "Ведение расчетов" я выбираю точное значение 'По заказам'
		И я перехожу к закладке "График поставок"
		И я устанавливаю флаг 'Контролировать цену в заказах'
		
* Закрываем договор

		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'С поставщиком (создание) *' в течение 20 секунд
		Тогда открылось окно 'Формирование договоров с победителями торгов'
		
* Договор L3.2
		
		И в таблице "ПобедившиеПредложенияПоставщиков" я перехожу к строке:
			| 'Поставщик'  |
			| 'Поставщик3' |
		И в таблице "ПобедившиеПредложенияПоставщиков" я нажимаю на кнопку 'Создать договор'

* Создаем договор		

		Тогда открылось окно 'С поставщиком (создание)'
		И в поле 'Номер' я ввожу текст 'L3.2'
		И я нажимаю кнопку выбора у поля "от"
		И в поле 'от' я ввожу значение переменной "ТекущаяДата"
		И я перехожу к закладке "Условия"
		И из выпадающего списка "Ведение расчетов" я выбираю точное значение 'По заказам'
		И я перехожу к закладке "График поставок"
		И я устанавливаю флаг 'Контролировать цену в заказах'
		
* Закрываем договор

		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'С поставщиком (создание) *' в течение 20 секунд
		Тогда открылось окно 'Формирование договоров с победителями торгов'	
		
* Закрываем се открытые окна
		
	И Я закрыл все окна клиентского приложения
		
Сценарий: 05.4. Договор [L4.1,4.2]

* Запоминаем в переменную текущую дату

		И Я запоминаю значение выражения 'СокрЛП(ТекущаяДата())' в переменную "ТекущаяДата"

* Находим нужный протокол
 			
		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Протоколы закупочных процедур'
		Тогда открылось окно 'Протоколы закупочных процедур'
		И в таблице "Список" я перехожу к строке:
			| 'Закупочная процедура' |
			| 'ЗП4'                  |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Протокол выбора победителей * от *'

* Переходим к управлению договорами		

		И я нажимаю на кнопку 'Управление договорами закупки'
		Тогда открылось окно 'Формирование договоров с победителями торгов'
		
* Договор L3.1
		
		И в таблице "ПобедившиеПредложенияПоставщиков" я перехожу к строке:
			| 'Поставщик'  |
			| 'Поставщик1' |
		И в таблице "ПобедившиеПредложенияПоставщиков" я нажимаю на кнопку 'Создать договор'

* Создаем договор		

		Тогда открылось окно 'С поставщиком (создание)'
		И в поле 'Номер' я ввожу текст 'L4.1'
		И я нажимаю кнопку выбора у поля "от"
		И в поле 'от' я ввожу значение переменной "ТекущаяДата"
		И я перехожу к закладке "Условия"
		И из выпадающего списка "Ведение расчетов" я выбираю точное значение 'По заказам'
		И я перехожу к закладке "График поставок"
		И я устанавливаю флаг 'Контролировать цену в заказах'
		
* Закрываем договор

		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'С поставщиком (создание) *' в течение 20 секунд
		Тогда открылось окно 'Формирование договоров с победителями торгов'
		
* Договор L4.2
		
		И в таблице "ПобедившиеПредложенияПоставщиков" я перехожу к строке:
			| 'Поставщик'  |
			| 'Поставщик3' |
		И в таблице "ПобедившиеПредложенияПоставщиков" я нажимаю на кнопку 'Создать договор'

* Создаем договор		

		Тогда открылось окно 'С поставщиком (создание)'
		И в поле 'Номер' я ввожу текст 'L4.2'
		И я нажимаю кнопку выбора у поля "от"
		И в поле 'от' я ввожу значение переменной "ТекущаяДата"
		И я перехожу к закладке "Условия"
		И из выпадающего списка "Ведение расчетов" я выбираю точное значение 'По заказам'
		И я перехожу к закладке "График поставок"
		И я устанавливаю флаг 'Контролировать цену в заказах'
		
* Закрываем договор

		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'С поставщиком (создание) *' в течение 20 секунд
		Тогда открылось окно 'Формирование договоров с победителями торгов'	
		
* Закрываем се открытые окна
		
	И Я закрыл все окна клиентского приложения
	
Сценарий: 05.5. Договор [L5]

Сценарий: 05.6. Договор [L6]

Сценарий: 05.7. Договор [L7]



