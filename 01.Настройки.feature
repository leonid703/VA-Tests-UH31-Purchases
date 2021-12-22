﻿#language: ru

@tree

Функционал: ПАРАМЕТРЫ И НАСТРОЙКИ КОРПОРАТИВНЫЕ ЗАКУПКИ

Как бизнес-аналитик я хочу
проверить настройки по закупкам

Контекст:
	И я подключаю TestClient "УХ31 НСИ" логин "Администратор" пароль ""  
	И Я закрыл все окна клиентского приложения

Сценарий: 1. Основные настройки

		И В командном интерфейсе я выбираю 'Общие справочники и настройки' 'Корпоративные закупки'
		Тогда открылось окно 'Корпоративные закупки'
	
		И я нажимаю кнопку выбора у поля "Тип цен для расценки потребности"
		Тогда открылось окно 'Типы цен номенклатуры'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'  | 'Валюта' |
			| 'Цена поставки' | 'RUB'    |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Корпоративные закупки'

		И я устанавливаю флаг 'Вести учет номенклатуры по странам'
		И я устанавливаю флаг 'Не требовать регистрации участников для открытых способов закупок'
		И я устанавливаю флаг 'Регистрировать номенклатуру поставщика'
		И я устанавливаю флаг 'Использовать дополнительные реквизиты и сведения'
		
		И я устанавливаю флаг 'ИспользоватьХарактеристикиНоменклатуры'
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку 'Да'
		Тогда открылось окно 'Корпоративные закупки'

		И Я закрываю окно 'Корпоративные закупки'

Сценарий: 2. Параметры плана закупок

		И В командном интерфейсе я выбираю 'Планирование и контроль' 'Параметры планирования и лимитирования'
		Тогда открылось окно 'Параметры планирования'
		И в таблице "ПараметрыОперативногоПланированияРегистр" я перехожу к строке:
			| 'Вид бюджета'    | 'Использовать' | 'Периодичность планирования' |
			| 'Бюджет закупок' | 'Да'           | 'Месяц'                      |
		И я нажимаю на кнопку 'Варианты настроек'
		Тогда открылось окно 'Варианты настроек операционного плана'
		
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Вариант настройки операционного плана (создание)'
		
		И в поле 'Наименование' я ввожу текст 'Основной вид плана'
		
		И в таблице "НастройкаАналитик" я перехожу к строке:
			| 'Аналитика'      |
			| 'Статья бюджета' |
		И в таблице "НастройкаАналитик" я активизирую поле "Использование"
		И в таблице "НастройкаАналитик" я выбираю текущую строку
		И в таблице "НастройкаАналитик" из выпадающего списка "Использование" я выбираю точное значение 'В шапке'
		И в таблице "НастройкаАналитик" я завершаю редактирование строки

		И в таблице "НастройкаАналитик" я перехожу к строке:
			| 'Аналитика'    | 
			| 'Номенклатура' | 
		И в таблице "НастройкаАналитик" я выбираю текущую строку
		И в таблице "НастройкаАналитик" из выпадающего списка "Использование" я выбираю точное значение 'В строке'
		И в таблице "НастройкаАналитик" я завершаю редактирование строки

		И я перехожу к закладке "Горизонт планирования"
		
		И из выпадающего списка "Вид горизонта" я выбираю точное значение 'Фиксированный'
		И в поле 'Количество периодов' я ввожу текст '12'
		И я нажимаю кнопку выбора у поля "Начиная с"
		Тогда открылось окно 'Периоды'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'   |
			| 'Январь 2021 г.' |
		И в таблице "Список" я выбираю текущую строку
	
		И я нажимаю на кнопку 'Записать и закрыть'
		Тогда открылось окно 'Варианты настроек операционного плана'
		И Я закрываю окно 'Варианты настроек операционного плана'
		Тогда открылось окно 'Параметры планирования'
		И Я закрываю окно 'Параметры планирования'
		
Сценарий: 3. Правила закупок, положение о закупках		

	* Открываем настройки
	
		И В командном интерфейсе я выбираю 'Общие справочники и настройки' 'Корпоративные закупки'
		Тогда открылось окно 'Корпоративные закупки'
		
	* Открываем список правил
	
		И я нажимаю на кнопку 'Список правил закупки'
		Тогда открылось окно 'Правила закупок'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Положение о закупках (создание)'
		
	* Наименование
	
		И в поле 'Наименование' я ввожу текст 'Правила закупок Королевство Севера'
		И я устанавливаю флаг 'Для субъектов 223-ФЗ'
		
	* Параметры по умолчанию
	
		И в таблице "ДеревоПараметров" я разворачиваю строку:
			| 'Использовать' | 'Параметр' |
			| 'Нет'          | 'Основное' |
		И в таблице "ДеревоПараметров" я разворачиваю строку:
			| 'Использовать' | 'Параметр'     |
			| 'Нет'          | 'Длительность' |
		И в таблице "ДеревоПараметров" я разворачиваю строку:
			| 'Использовать' | 'Параметр' |
			| 'Нет'          | '223-ФЗ'   |
		И в таблице "ДеревоПараметров" я разворачиваю строку:
			| 'Использовать' | 'Параметр' |
			| 'Нет'          | 'МСП'      |
		И в таблице "ДеревоПараметров" я перехожу к строке:
			| 'Использовать' | 'Параметр'       |
			| 'Нет'          | 'Способ закупки' |
		
		И в таблице "ДеревоПараметров" я активизирую поле с именем "ДеревоПараметровЗначение"
		И в таблице "ДеревоПараметров" я выбираю текущую строку
		
		И в таблице "ДеревоПараметров" из выпадающего списка с именем "ДеревоПараметровЗначение" я выбираю точное значение 'Запрос предложений'
		И в таблице "ДеревоПараметров" я завершаю редактирование строки
		
		И в таблице "ДеревоПараметров" я перехожу к строке:
			| 'Использовать' | 'Параметр'            |
			| 'Нет'          | 'В электронной форме' |
		И в таблице "ДеревоПараметров" я активизирую поле "Параметр"
		И в таблице "ДеревоПараметров" я устанавливаю флаг 'Использовать'
		И в таблице "ДеревоПараметров" я завершаю редактирование строки
		
		И в таблице "ДеревоПараметров" я активизирую поле с именем "ДеревоПараметровЗначение"
		И в таблице "ДеревоПараметров" я выбираю текущую строку
		И в таблице "ДеревоПараметров" из выпадающего списка с именем "ДеревоПараметровЗначение" я выбираю точное значение 'Да'
		И в таблице "ДеревоПараметров" я завершаю редактирование строки
		
		И в таблице "ДеревоПараметров" я перехожу к строке:
			| 'Использовать' | 'Параметр'          |
			| 'Нет'          | 'подготовки (дней)' |
		И в таблице "ДеревоПараметров" я выбираю текущую строку
		И в таблице "ДеревоПараметров" в поле с именем 'ДеревоПараметровЗначение' я ввожу текст '30'
		И в таблице "ДеревоПараметров" я завершаю редактирование строки
		
		И в таблице "ДеревоПараметров" я перехожу к строке:
			| 'Использовать' | 'Параметр'         |
			| 'Нет'          | 'процедуры (дней)' |
		И в таблице "ДеревоПараметров" я выбираю текущую строку
		И в таблице "ДеревоПараметров" в поле с именем 'ДеревоПараметровЗначение' я ввожу текст '20'
		И в таблице "ДеревоПараметров" я завершаю редактирование строки

		И я нажимаю на кнопку 'Записать'
		Тогда открылось окно 'Правила закупок Королевство Севера (Положение о закупках)'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна 'Правила закупок Королевство Севера (Положение о закупках)' в течение 20 секунд
		Тогда открылось окно 'Правила закупок'
		И Я закрываю окно 'Правила закупок'
		Тогда открылось окно 'Корпоративные закупки'
	
	* Положение о закупках Королество Севера
	
		И я нажимаю на кнопку 'Положение о закупках организации'
		Тогда открылось окно 'Положения о закупках организации'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Положения о закупках организации (создание)'
		И я нажимаю кнопку выбора у поля "Организация"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Королевство Севера [223]' |
		И в таблице "Список" я активизирую поле "Наименование в программе"
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Положения о закупках организации (создание) *'
		И я нажимаю кнопку выбора у поля "Период закупок"
		Тогда открылось окно 'Периоды'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| '2022 г.'      |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Положения о закупках организации (создание) *'
		И я нажимаю кнопку выбора у поля "Положение"
		Тогда открылось окно 'Правила закупок'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Положения о закупках организации (создание) *'
	
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна 'Положения о закупках организации (создание) *' в течение 20 секунд
		Тогда открылось окно 'Положения о закупках организации'
		И Я закрываю окно 'Положения о закупках организации'
		Тогда открылось окно 'Корпоративные закупки'
		И Я закрываю окно 'Корпоративные закупки'
