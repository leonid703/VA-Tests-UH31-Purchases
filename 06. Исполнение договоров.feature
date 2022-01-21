﻿#language: ru

@tree

Функционал: 06. ИСПОЛНЕНИЕ ДОГОВОРОВ

Как бизнес-аналитик я хочу
проверить работоспособность 
чтобы исключить ошибки 

Контекст:
	И я подключаю TestClient "УХ - Закупки" логин "Администратор" пароль ""  
	И Я закрыл все окна клиентского приложения

Сценарий: 05.1. Исполнение договора [L1] Заказ поставщику - ПТУ - Возврат поставщику

* Переменная ТекущаяДата

		И Я запоминаю значение выражения 'СокрЛП(ТекущаяДата())' в переменную "ТекущаяДата"	

* Открываем список заказов

		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Заказ поставщику'
		Тогда открылось окно 'Заказ поставщику'

* Создаем заказ поставщику
		
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Заказ поставщику (создание)'

* Организация

		И я нажимаю кнопку выбора у поля "Организация"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Королевство Севера [223]' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику (создание) *'

* Поставщик

		И я нажимаю кнопку выбора у поля "Поставщик"
		Тогда открылось окно 'Контрагенты'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Поставщики'               |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице "Список" я перехожу к строке:
			| 'ИНН'        | 'Наименование в программе' | 'Полное наименование' |
			| '7714774531' | 'Поставщик1'               | 'Поставщик1'          |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику (создание) *'

* Валюта

		И из выпадающего списка "Валюта документа" я выбираю точное значение 'RUB'
		
* Договор
		
		И я нажимаю кнопку выбора у поля "Договор"
		Тогда открылось окно 'Договоры'
		И в таблице "Список" я перехожу к строке:
			| 'Номер договора' |
			| 'L1'             |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику (создание) *'

* Цена включает НДС
		
		И я устанавливаю флаг 'Цена включает НДС'

* Заполняем табличную часть
		
		И я нажимаю на кнопку 'Записать'
		И в таблице "Номенклатура" я нажимаю на кнопку 'Заполнить по плану поставок'

* Место поставки

		И я нажимаю кнопку выбора у поля с именем "МестоПоставки"
		Тогда открылось окно 'Места поставки товаров (оказания услуг)'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'   |
			| 'МестоПоставки1' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику *'

* Склад		
		
		И я нажимаю кнопку выбора у поля с именем "Склад"
		И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад1'

* Условие оплаты
		
		И я нажимаю кнопку выбора у поля "Условие оплаты"
		Тогда открылось окно 'Условия оплаты'
		И Я закрываю окно 'Условия оплаты'
		Тогда открылось окно 'Заказ поставщику *'

* Записываем

	И я нажимаю на кнопку 'Записать'
	
* График расчетов
	
		И я нажимаю на кнопку 'Открыть график расчетов'
		Тогда открылось окно 'График расчетов с покупателем или поставщиком (создание)'
		И я перехожу к закладке с именем "ГруппаГрафик"
		И в таблице "ГрафикРасчетов" я нажимаю на кнопку 'От даты начала действия договора'
		И я нажимаю на кнопку 'Записать'
		Тогда открылось окно 'График расчетов с покупателем или поставщиком * от *'
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'График расчетов с покупателем или поставщиком * от *' в течение 20 секунд
		Тогда открылось окно 'Заказ поставщику * от *'

* Проводим заказ поставщику
	
	И я нажимаю на кнопку 'Провести'
	
* Вводим на основании заказа ПТУ
	
		И я нажимаю на кнопку 'Поступление (акт, накладная, УПД)'
		Тогда открылось окно 'Поступление: Товары, услуги, комиссия (создание)'
		И в поле 'Накладная, УПД №' я ввожу текст 'НКЛ1'
		И я нажимаю кнопку выбора у поля с именем "ДатаВходящегоДокумента"
		И в поле с именем 'ДатаВходящегоДокумента' я ввожу значение переменной "ТекущаяДата"
		И я перехожу к следующему реквизиту
		И я нажимаю на кнопку 'Провести'

* Вводим на основании ПТУ возврат поставщику
	
		И я нажимаю на кнопку 'Возврат товаров поставщику: создать на основании'
		И я нажимаю на кнопку 'Провести и закрыть'
		
* Закрываем все окна

		И Я закрыл все окна клиентского приложения		

Сценарий: 05.2. Исполнение договора [L2] Заказ поставщику - ПТУ - Возврат поставщику

* Переменная ТекущаяДата

		И Я запоминаю значение выражения 'СокрЛП(ТекущаяДата())' в переменную "ТекущаяДата"	

* Открываем список заказов

		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Заказ поставщику'
		Тогда открылось окно 'Заказ поставщику'

* Создаем заказ поставщику
		
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Заказ поставщику (создание)'

* Организация

		И я нажимаю кнопку выбора у поля "Организация"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Королевство Севера [223]' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику (создание) *'

* Поставщик

		И я нажимаю кнопку выбора у поля "Поставщик"
		Тогда открылось окно 'Контрагенты'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Поставщики'               |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Поставщик2'               |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику (создание) *'

* Валюта

		И из выпадающего списка "Валюта документа" я выбираю точное значение 'RUB'
		
* Договор
		
		И я нажимаю кнопку выбора у поля "Договор"
		Тогда открылось окно 'Договоры'
		И в таблице "Список" я перехожу к строке:
			| 'Номер договора' |
			| 'L2'             |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику (создание) *'

* Цена включает НДС
		
		И я устанавливаю флаг 'Цена включает НДС'

* Заполняем табличную часть
		
		И я нажимаю на кнопку 'Записать'
		И в таблице "Номенклатура" я нажимаю на кнопку 'Заполнить по плану поставок'

* Место поставки

		И я нажимаю кнопку выбора у поля с именем "МестоПоставки"
		Тогда открылось окно 'Места поставки товаров (оказания услуг)'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'   |
			| 'МестоПоставки1' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику *'

* Склад		
		
		И я нажимаю кнопку выбора у поля с именем "Склад"
		И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад1'

* Условие оплаты
		
		И я нажимаю кнопку выбора у поля "Условие оплаты"
		Тогда открылось окно 'Условия оплаты'
		И Я закрываю окно 'Условия оплаты'
		Тогда открылось окно 'Заказ поставщику *'

* Записываем

	И я нажимаю на кнопку 'Записать'
	
* График расчетов
	
		И я нажимаю на кнопку 'Открыть график расчетов'
		Тогда открылось окно 'График расчетов с покупателем или поставщиком (создание)'
		И я перехожу к закладке с именем "ГруппаГрафик"
		И в таблице "ГрафикРасчетов" я нажимаю на кнопку 'От даты начала действия договора'
		И я нажимаю на кнопку 'Записать'
		Тогда открылось окно 'График расчетов с покупателем или поставщиком * от *'
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'График расчетов с покупателем или поставщиком * от *' в течение 20 секунд
		Тогда открылось окно 'Заказ поставщику * от *'

* Проводим заказ поставщику
	
	И я нажимаю на кнопку 'Провести'
	
* Вводим на основании заказа ПТУ
	
		И я нажимаю на кнопку 'Поступление (акт, накладная, УПД)'
		Тогда открылось окно 'Поступление: Товары, услуги, комиссия (создание)'
		И в поле 'Накладная, УПД №' я ввожу текст 'НКЛ2'
		И я нажимаю кнопку выбора у поля с именем "ДатаВходящегоДокумента"
		И в поле с именем 'ДатаВходящегоДокумента' я ввожу значение переменной "ТекущаяДата"
		И я перехожу к следующему реквизиту
		И я нажимаю на кнопку 'Провести'

* Вводим на основании ПТУ возврат поставщику
	
		И я нажимаю на кнопку 'Возврат товаров поставщику: создать на основании'
		И я нажимаю на кнопку 'Провести и закрыть'
		
* Закрываем все окна

		И Я закрыл все окна клиентского приложения		

Сценарий: 05.3. Исполнение договора [L3.1] Заказ поставщику - ПТУ - Возврат поставщику

* Переменная ТекущаяДата

		И Я запоминаю значение выражения 'СокрЛП(ТекущаяДата())' в переменную "ТекущаяДата"	

* Открываем список заказов

		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Заказ поставщику'
		Тогда открылось окно 'Заказ поставщику'

* Создаем заказ поставщику
		
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Заказ поставщику (создание)'

* Организация

		И я нажимаю кнопку выбора у поля "Организация"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Королевство Севера [223]' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику (создание) *'

* Поставщик

		И я нажимаю кнопку выбора у поля "Поставщик"
		Тогда открылось окно 'Контрагенты'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Поставщики'               |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Поставщик2'               |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику (создание) *'

* Валюта

		И из выпадающего списка "Валюта документа" я выбираю точное значение 'RUB'
		
* Договор
		
		И я нажимаю кнопку выбора у поля "Договор"
		Тогда открылось окно 'Договоры'
		И в таблице "Список" я перехожу к строке:
			| 'Номер договора' |
			| 'L3.1'           |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику (создание) *'

* Цена включает НДС
		
		И я устанавливаю флаг 'Цена включает НДС'

* Заполняем табличную часть
		
		И я нажимаю на кнопку 'Записать'
		И в таблице "Номенклатура" я нажимаю на кнопку 'Заполнить по плану поставок'

* Место поставки

		И я нажимаю кнопку выбора у поля с именем "МестоПоставки"
		Тогда открылось окно 'Места поставки товаров (оказания услуг)'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'   |
			| 'МестоПоставки1' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику *'

* Склад		
		
		И я нажимаю кнопку выбора у поля с именем "Склад"
		И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад1'

* Условие оплаты
		
		И я нажимаю кнопку выбора у поля "Условие оплаты"
		Тогда открылось окно 'Условия оплаты'
		И Я закрываю окно 'Условия оплаты'
		Тогда открылось окно 'Заказ поставщику *'

* Записываем

	И я нажимаю на кнопку 'Записать'
	
* График расчетов
	
		И я нажимаю на кнопку 'Открыть график расчетов'
		Тогда открылось окно 'График расчетов с покупателем или поставщиком (создание)'
		И я перехожу к закладке с именем "ГруппаГрафик"
		И в таблице "ГрафикРасчетов" я нажимаю на кнопку 'От даты начала действия договора'
		И я нажимаю на кнопку 'Записать'
		Тогда открылось окно 'График расчетов с покупателем или поставщиком * от *'
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'График расчетов с покупателем или поставщиком * от *' в течение 20 секунд
		Тогда открылось окно 'Заказ поставщику * от *'

* Проводим заказ поставщику
	
	И я нажимаю на кнопку 'Провести'
	
* Вводим на основании заказа ПТУ
	
		И я нажимаю на кнопку 'Поступление (акт, накладная, УПД)'
		Тогда открылось окно 'Поступление: Товары, услуги, комиссия (создание)'
		И в поле 'Накладная, УПД №' я ввожу текст 'НКЛ3'
		И я нажимаю кнопку выбора у поля с именем "ДатаВходящегоДокумента"
		И в поле с именем 'ДатаВходящегоДокумента' я ввожу значение переменной "ТекущаяДата"
		И я перехожу к следующему реквизиту
		И я нажимаю на кнопку 'Провести'

* Вводим на основании ПТУ возврат поставщику
	
		И я нажимаю на кнопку 'Возврат товаров поставщику: создать на основании'
		И я нажимаю на кнопку 'Провести и закрыть'
		
* Закрываем все окна

		И Я закрыл все окна клиентского приложения		

Сценарий: 05.4. Исполнение договора [L3.2] Заказ поставщику - ПТУ - Возврат поставщику

* Переменная ТекущаяДата

		И Я запоминаю значение выражения 'СокрЛП(ТекущаяДата())' в переменную "ТекущаяДата"	

* Открываем список заказов

		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Заказ поставщику'
		Тогда открылось окно 'Заказ поставщику'

* Создаем заказ поставщику
		
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Заказ поставщику (создание)'

* Организация

		И я нажимаю кнопку выбора у поля "Организация"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Королевство Севера [223]' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику (создание) *'

* Поставщик

		И я нажимаю кнопку выбора у поля "Поставщик"
		Тогда открылось окно 'Контрагенты'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Поставщики'               |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Поставщик3'               |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику (создание) *'

* Валюта

		И из выпадающего списка "Валюта документа" я выбираю точное значение 'RUB'
		
* Договор
		
		И я нажимаю кнопку выбора у поля "Договор"
		Тогда открылось окно 'Договоры'
		И в таблице "Список" я перехожу к строке:
			| 'Номер договора' |
			| 'L3.2'             |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику (создание) *'

* Цена включает НДС
		
		И я устанавливаю флаг 'Цена включает НДС'

* Заполняем табличную часть
		
		И я нажимаю на кнопку 'Записать'
		И в таблице "Номенклатура" я нажимаю на кнопку 'Заполнить по плану поставок'

* Место поставки

		И я нажимаю кнопку выбора у поля с именем "МестоПоставки"
		Тогда открылось окно 'Места поставки товаров (оказания услуг)'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'   |
			| 'МестоПоставки1' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику *'

* Склад		
		
		И я нажимаю кнопку выбора у поля с именем "Склад"
		И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад1'

* Условие оплаты
		
		И я нажимаю кнопку выбора у поля "Условие оплаты"
		Тогда открылось окно 'Условия оплаты'
		И Я закрываю окно 'Условия оплаты'
		Тогда открылось окно 'Заказ поставщику *'

* Записываем

	И я нажимаю на кнопку 'Записать'
	
* График расчетов
	
		И я нажимаю на кнопку 'Открыть график расчетов'
		Тогда открылось окно 'График расчетов с покупателем или поставщиком (создание)'
		И я перехожу к закладке с именем "ГруппаГрафик"
		И в таблице "ГрафикРасчетов" я нажимаю на кнопку 'От даты начала действия договора'
		И я нажимаю на кнопку 'Записать'
		Тогда открылось окно 'График расчетов с покупателем или поставщиком * от *'
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'График расчетов с покупателем или поставщиком * от *' в течение 20 секунд
		Тогда открылось окно 'Заказ поставщику * от *'

* Проводим заказ поставщику
	
	И я нажимаю на кнопку 'Провести'
	
* Вводим на основании заказа ПТУ
	
		И я нажимаю на кнопку 'Поступление (акт, накладная, УПД)'
		Тогда открылось окно 'Поступление: Товары, услуги, комиссия (создание)'
		И в поле 'Накладная, УПД №' я ввожу текст 'НКЛ4'
		И я нажимаю кнопку выбора у поля с именем "ДатаВходящегоДокумента"
		И в поле с именем 'ДатаВходящегоДокумента' я ввожу значение переменной "ТекущаяДата"
		И я перехожу к следующему реквизиту
		И я нажимаю на кнопку 'Провести'

* Вводим на основании ПТУ возврат поставщику
	
		И я нажимаю на кнопку 'Возврат товаров поставщику: создать на основании'
		И я нажимаю на кнопку 'Провести и закрыть'
		
* Закрываем все окна

		И Я закрыл все окна клиентского приложения		

Сценарий: 05.5. Исполнение договора [L4] Заказ поставщику - ПТУ - Возврат поставщику

Сценарий: 05.6. Исполнение договора [L5] Заказ поставщику - ПТУ - Возврат поставщику

Сценарий: 05.7. Исполнение договора [L6] Заказ поставщику - ПТУ - Возврат поставщику



