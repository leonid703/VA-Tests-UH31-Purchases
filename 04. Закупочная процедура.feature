﻿#language: ru

@tree

Функционал: 04. ЗАКУПОЧНАЯ ПРОЦЕДУРА

Как бизнес-аналитик я хочу
проверить работоспособность 
чтобы исключить ошибки 

Контекст:
	И я подключаю TestClient "УХ - Закупки" логин "Администратор" пароль ""  
	И Я закрыл все окна клиентского приложения

Сценарий: 04.1. Приказ о назначении закупочной комиссии
	
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
			| 'ФИО'        |
			| 'Старк Бран' |
		И в таблице "Список" я выбираю текущую строку
		
		Тогда открылось окно 'Приказ о закупочной комиссии (создание) *'
		И в таблице "ЗакупочнаяКомиссия" я завершаю редактирование строки

	* Записываем	
	
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'Приказ о закупочной комиссии (создание) *' в течение 20 секунд
		Тогда открылось окно 'Приказ о закупочной комиссии'
		И Я закрываю окно 'Приказ о закупочной комиссии'

Сценарий: 04.2. ЗП1 [лотовая]-[Товар1]-[По критериям]

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
		Тогда открылось окно 'Закупочная процедура *'
		
	* ЭТП 
	
		И я нажимаю кнопку выбора у поля с именем "ЭТППубликации"
		Тогда открылось окно 'Классификатор электронных торговых площадок'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'  |
			| 'НЭП-Фабрикант' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Закупочная процедура *'
		
	* Оформление	
	
		И из выпадающего списка "Оформление" я выбираю точное значение 'Выбор поставщика в системе 1С'

	* Порядок получения документации
	
		И в поле 'Порядок предоставления документации' я ввожу текст 'по запросу'

	* Записываем
	
		И я нажимаю на кнопку 'Записать'
		
	* Мероприятия
	
		И я перехожу к закладке "Основные сведения"	
		И я нажимаю на гиперссылку "Стадии закупочной процедуры"
		Тогда открылось окно 'Стадии закупочной процедуры'
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'Стадии закупочной процедуры' в течение 20 секунд
		Тогда открылось окно 'Закупочная процедура *'
	
	* Лоты
	
		И я перехожу к закладке "Лоты"	
		И в таблице "Лоты" я активизирую поле с именем "ЛотыПериодЗакупок"
		
		И в таблице "Лоты" я выбираю текущую строку
		Тогда открылось окно 'Лот: Лот №1'
		И из выпадающего списка с именем "ВидЗакупкиОсновнаяВкладка" я выбираю точное значение 'Лотовая закупка'
		И я устанавливаю флаг 'Запрет превышения НМЦ'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна 'Лот: Лот №1 *' в течение 20 секунд
		Тогда открылось окно 'Закупочная процедура *'
		
	* Утверждаем

		И из выпадающего списка "Статус" я выбираю точное значение 'Утвержден'
		И я нажимаю на кнопку 'Записать'

	* Настройка процесса выбора
	
		И я перехожу к закладке "Лоты"
		И в таблице "Лоты" я активизирую поле "Вид закупки"
		И в таблице "Лоты" я нажимаю на кнопку 'Настройка процесса выбора победителей'
		Тогда открылось окно 'Лот №1 (Настройки процесса выбора)'
		И в таблице "ЭтапыВыбора" я нажимаю на кнопку с именем 'ЭтапыВыбораДобавить'
		И в таблице "ЭтапыВыбора" я выбираю текущую строку
		И в таблице "ЭтапыВыбора" я нажимаю кнопку выбора у реквизита "Этап"
		Тогда открылось окно 'Этапы оценки'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'                  |
			| 'Оценка предложений участников' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Лот №1 (Настройки процесса выбора) *'
		И в таблице "КритерииОценки" я нажимаю на кнопку с именем 'КритерииОценкиДобавить'
		И в таблице "КритерииОценки" я выбираю текущую строку
		И в таблице "КритерииОценки" я нажимаю кнопку выбора у реквизита "Критерий"
		Тогда открылось окно 'Критерии выбора'
		
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Критерии выбора (создание)'
		И в поле с именем 'Наименование' я ввожу текст 'Лучшее предложение'
		И в поле 'Вес' я ввожу текст '1,00000'
		И я нажимаю на кнопку 'Записать'
		Тогда открылось окно 'Лучшее предложение (Критерии выбора)'
		И из выпадающего списка "Способ ввода значения" я выбираю точное значение 'Выбор из множества'
		И я нажимаю на кнопку 'Записать'
		Тогда открылось окно 'Лучшее предложение (Критерии выбора)'
		И в таблице "МножествоЗначений" я нажимаю на кнопку 'Создать'
		Тогда открылось окно 'Значение критерия (создание)'
		И в поле 'Наименование значения' я ввожу текст 'Да'
		И в поле 'Значение' я ввожу текст '10,00'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна 'Значение критерия (создание) *' в течение 20 секунд
		Тогда открылось окно 'Лучшее предложение (Критерии выбора)'
		И в таблице "МножествоЗначений" я нажимаю на кнопку 'Создать'
		Тогда открылось окно 'Значение критерия (создание)'
		И в поле 'Наименование значения' я ввожу текст 'Нет'
		И в поле 'Значение' я ввожу текст '1,00'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна 'Значение критерия (создание) *' в течение 20 секунд
		Тогда открылось окно 'Лучшее предложение (Критерии выбора)'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна 'Лучшее предложение (Критерии выбора)' в течение 20 секунд
		Тогда открылось окно 'Критерии выбора'
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		Тогда открылось окно 'Лот №1 (Настройки процесса выбора) *'
		И в таблице "КритерииОценки" я активизирую поле "Мин."
		И в таблице "КритерииОценки" в поле 'Мин.' я ввожу текст '1,000'
		И я перехожу к следующему реквизиту
		И в таблице "КритерииОценки" в поле 'Макс.' я ввожу текст '10,000'
		И я перехожу к следующему реквизиту
		И в таблице "КритерииОценки" я завершаю редактирование строки
		И в таблице "КритерииОценки" я изменяю флаг 'Не использовать баллы'
		И в таблице "КритерииОценки" я завершаю редактирование строки
		И я нажимаю на кнопку 'Записать'
		И я перехожу к закладке "Экспертная комиссия"
		И в таблице "ЗакупочнаяКомиссия" я нажимаю на кнопку 'Заполнить'
		И в таблице "ЗакупочнаяКомиссия" я перехожу к строке:
			| 'Эксперт'    |
			| 'Старк Бран' |
		И в таблице "ЗакупочнаяКомиссия" я активизирую поле "Закрывает этап оценки"
		И в таблице "ЗакупочнаяКомиссия" я изменяю флаг 'Закрывает этап оценки'
		И в таблице "ЗакупочнаяКомиссия" я завершаю редактирование строки
		И я нажимаю на кнопку 'Записать'
		Тогда открылось окно 'Лот №1 (Настройки процесса выбора)'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна 'Лот №1 (Настройки процесса выбора)' в течение 20 секунд

	* Предложения участника 1	

		И в таблице "Лоты" я нажимаю на кнопку 'Предложение участника закупочной процедуры'
		Тогда открылось окно 'Предложение участника (создание)'
		И я нажимаю кнопку выбора у поля с именем "КонтрагентБезОтбора"
		Тогда открылось окно 'Контрагенты'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Поставщики'               |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Поставщик1'               |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Предложение участника (создание) *'
		И я перехожу к закладке "Условия"
		И в поле 'Условия поставки' я ввожу текст 'Условия Поставщик1'
		И я перехожу к следующему реквизиту
		И в поле 'Сроки выполнения договора' я ввожу текст 'Сроки Поставщик 1'
		И я перехожу к следующему реквизиту
		И в поле 'Срок поставки (дни)' я ввожу текст '3'
		И я перехожу к следующему реквизиту
		И я нажимаю кнопку выбора у поля "Условие оплаты"
		Тогда открылось окно 'Условия оплаты'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'                                       |
			| 'Аванс 50% за 30 к.д., Постоплата 50% через 30 к.д.' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Предложение участника (создание) *'
		И я перехожу к закладке "Спецификация"
		И в таблице "УсловияПоНоменклатуреПоПериодам" я активизирую поле с именем "УсловияПоНоменклатуреПоПериодамЦена"
		И в таблице "УсловияПоНоменклатуреПоПериодам" в поле с именем 'УсловияПоНоменклатуреПоПериодамЦена' я ввожу текст '450,00'
		И в таблице "УсловияПоНоменклатуреПоПериодам" я завершаю редактирование строки
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'Предложение участника (создание) *' в течение 20 секунд

	* Предложения участника 2
	
		И в таблице "Лоты" я нажимаю на кнопку 'Предложение участника закупочной процедуры'
		Тогда открылось окно 'Предложение участника (создание)'
		И я нажимаю кнопку выбора у поля с именем "КонтрагентБезОтбора"
		Тогда открылось окно 'Контрагенты'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Поставщики'               |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Поставщик2'               |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Предложение участника (создание) *'
		И я перехожу к закладке "Условия"
		И в поле 'Условия поставки' я ввожу текст 'Условия Поставщик 2'
		И я перехожу к следующему реквизиту
		И в поле 'Сроки выполнения договора' я ввожу текст 'Сроки Поставщик 2'
		И я перехожу к следующему реквизиту
		И в поле 'Срок поставки (дни)' я ввожу текст '3'
		И я перехожу к следующему реквизиту
		И я нажимаю кнопку выбора у поля "Условие оплаты"
		Тогда открылось окно 'Условия оплаты'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'                                       |
			| 'Аванс 50% за 30 к.д., Постоплата 50% через 30 к.д.' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Предложение участника (создание) *'
		И я перехожу к закладке "Спецификация"
		И в таблице "УсловияПоНоменклатуреПоПериодам" я активизирую поле с именем "УсловияПоНоменклатуреПоПериодамЦена"
		И в таблице "УсловияПоНоменклатуреПоПериодам" в поле с именем 'УсловияПоНоменклатуреПоПериодамЦена' я ввожу текст '480,00'
		И в таблице "УсловияПоНоменклатуреПоПериодам" я завершаю редактирование строки
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'Предложение участника (создание) *' в течение 20 секунд

	* Предложения участника 3
	
		И в таблице "Лоты" я нажимаю на кнопку 'Предложение участника закупочной процедуры'
		Тогда открылось окно 'Предложение участника (создание)'
		И я нажимаю кнопку выбора у поля с именем "КонтрагентБезОтбора"
		Тогда открылось окно 'Контрагенты'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Поставщики'               |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице "Список" я перехожу к строке:
			| 'Наименование в программе' |
			| 'Поставщик3'               |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Предложение участника (создание) *'
		И я перехожу к закладке "Условия"
		И в поле 'Условия поставки' я ввожу текст 'Условия Поставщик 3'
		И я перехожу к следующему реквизиту
		И в поле 'Сроки выполнения договора' я ввожу текст 'Сроки Поставщик 3'
		И я перехожу к следующему реквизиту
		И в поле 'Срок поставки (дни)' я ввожу текст '3'
		И я перехожу к следующему реквизиту
		И я нажимаю кнопку выбора у поля "Условие оплаты"
		Тогда открылось окно 'Условия оплаты'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'                                       |
			| 'Аванс 50% за 30 к.д., Постоплата 50% через 30 к.д.' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Предложение участника (создание) *'
		И я перехожу к закладке "Спецификация"
		И в таблице "УсловияПоНоменклатуреПоПериодам" я активизирую поле с именем "УсловияПоНоменклатуреПоПериодамЦена"
		И в таблице "УсловияПоНоменклатуреПоПериодам" в поле с именем 'УсловияПоНоменклатуреПоПериодамЦена' я ввожу текст '495,00'
		И в таблице "УсловияПоНоменклатуреПоПериодам" я завершаю редактирование строки
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'Предложение участника (создание) *' в течение 20 секунд

	* Протокол победителя

		И Я запоминаю значение выражения 'СокрЛП(ТекущаяДата())' в переменную "ТекущаяДата"	
		
		И я нажимаю на кнопку 'Протокол'
		Тогда открылось окно 'Протокол выбора победителей (создание)'
		И в поле 'Место проведения процедуры' я ввожу текст 'Москва'
		И в поле 'Дата подписания' я ввожу значение переменной "ТекущаяДата"
		И я перехожу к следующему реквизиту
		
		И я перехожу к закладке "ЕИС"
		И я нажимаю кнопку выбора у поля "Тип протокола ЕИС"
		Тогда открылось окно 'Коды протоколов закупок ЕИС'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'       |
			| 'Запрос предложений' |
		И в таблице "Список" я выбираю текущую строку	

		И я перехожу к закладке "Предложения участников"
		И в таблице "ПредложенияПобедителей" я нажимаю на кнопку 'Ввести значения критериев'
		Тогда открылось окно 'Оценка альтернатив'

	* Оценка предложения от Поставщик 1
	
		И в таблице "ОбъектыОценки" я активизирую поле "Объект оценки"
		И в таблице "ОбъектыОценки" я перехожу к строке:
			| 'Поставщик'  |
			| 'Поставщик1' |
		И в таблице "ЗначенияКритериев" я перехожу к строке:
			| 'Критерий'           | 'Значение' |
			| 'Лучшее предложение' | ''         |
		И в таблице "ЗначенияКритериев" я активизирую поле с именем "ЗначенияКритериевЗначение"
		И в таблице "ЗначенияКритериев" я выбираю текущую строку
		Тогда открылось окно 'Значения перечислимых критериев'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' | 'Оценка' |
			| 'Да'           | '10,00'  |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Оценка альтернатив'
		И в таблице "ОбъектыОценки" я перехожу к строке:
			| 'Поставщик'  |
			| 'Поставщик1' |
		И в таблице "ОбъектыОценки" я активизирую поле "Оценка завершена"
		И в таблице "ОбъектыОценки" я активизирую поле "Оценка завершена"
		И в таблице "ОбъектыОценки" я устанавливаю флаг 'Оценка завершена'
		И в таблице "ОбъектыОценки" я завершаю редактирование строки

	* Оценка предложения от Поставщик 2
	
		И в таблице "ОбъектыОценки" я активизирую поле "Объект оценки"
		И в таблице "ОбъектыОценки" я перехожу к строке:
			| 'Поставщик'  |
			| 'Поставщик2' |
		И в таблице "ЗначенияКритериев" я перехожу к строке:
			| 'Критерий'           | 'Значение' |
			| 'Лучшее предложение' | ''         |
		И в таблице "ЗначенияКритериев" я активизирую поле с именем "ЗначенияКритериевЗначение"
		И в таблице "ЗначенияКритериев" я выбираю текущую строку
		Тогда открылось окно 'Значения перечислимых критериев'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' | 'Оценка' |
			| 'Нет'          | '1,00'   |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Оценка альтернатив'
		И в таблице "ОбъектыОценки" я перехожу к строке:
			| 'Поставщик'  |
			| 'Поставщик2' |
		И в таблице "ОбъектыОценки" я активизирую поле "Оценка завершена"
		И в таблице "ОбъектыОценки" я активизирую поле "Оценка завершена"
		И в таблице "ОбъектыОценки" я устанавливаю флаг 'Оценка завершена'
		И в таблице "ОбъектыОценки" я завершаю редактирование строки

	* Оценка предложения от Поставщик 3
	
		И в таблице "ОбъектыОценки" я активизирую поле "Объект оценки"
		И в таблице "ОбъектыОценки" я перехожу к строке:
			| 'Поставщик'  |
			| 'Поставщик3' |
		И в таблице "ЗначенияКритериев" я перехожу к строке:
			| 'Критерий'           | 'Значение' |
			| 'Лучшее предложение' | ''         |
		И в таблице "ЗначенияКритериев" я активизирую поле с именем "ЗначенияКритериевЗначение"
		И в таблице "ЗначенияКритериев" я выбираю текущую строку
		Тогда открылось окно 'Значения перечислимых критериев'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' | 'Оценка' |
			| 'Нет'          | '1,00'   |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Оценка альтернатив'
		И в таблице "ОбъектыОценки" я перехожу к строке:
			| 'Поставщик'  |
			| 'Поставщик3' |
		И в таблице "ОбъектыОценки" я активизирую поле "Оценка завершена"
		И в таблице "ОбъектыОценки" я активизирую поле "Оценка завершена"
		И в таблице "ОбъектыОценки" я устанавливаю флаг 'Оценка завершена'
		И в таблице "ОбъектыОценки" я завершаю редактирование строки		

		И Я закрываю окно 'Оценка альтернатив'
		Тогда открылось окно 'Протокол выбора победителей *'
		
	* Выбор альтернатив
	
		И в таблице "ПредложенияПобедителей" я нажимаю на кнопку 'Выбрать альтернативы'
		Тогда открылось окно 'Выбор альтернатив'
		И в таблице "ОбъектыОценки" я перехожу к строке:
			| 'Значение' |
			| '10,00'    |
		И в таблице "ОбъектыОценки" я устанавливаю флаг 'Выбран'	
		И я нажимаю на кнопку 'Завершить процесс выбора'
		И Я закрываю окно 'Выбор альтернатив'
		Тогда открылось окно 'Протокол выбора победителей *'
	
	* И я перехожу к закладке "Принятое решение"
	
		И в поле 'Результат работы комиссии' я ввожу текст '+'
		
	* Утверждаем и проводим протокол	
	
		И из выпадающего списка "Статус" я выбираю точное значение 'Утвержден'
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку 'OK'
		Тогда открылось окно 'Протокол выбора победителей * от *'
		И я нажимаю на кнопку 'Провести'
		
	* Закрываем	все окна
	
		И Я закрыл все окна клиентского приложения

Сценарий: 04.4. Договоры с поставщиком

* Запоминаем в переменную текущую дату

		И Я запоминаю значение выражения 'СокрЛП(ТекущаяДата())' в переменную "ТекущаяДата"

* Находим нужный протокол
 			
		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Протоколы закупочных процедур'
		Тогда открылось окно 'Протоколы закупочных процедур'
		И в таблице "Список" я перехожу к строке:
			| 'Закупочная процедура'            |
			| 'Закупочная процедура №000000001' |
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
		И в поле 'Номер' я ввожу значение переменной "ТекущаяДата"
		И я нажимаю кнопку выбора у поля "от"
		И в поле 'от' я ввожу текст '12.01.2022'
		И я перехожу к закладке "График поставок"
		И я устанавливаю флаг 'Контролировать цену в заказах'
		
* Закрываем договор

		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'С поставщиком (создание) *' в течение 20 секунд
		Тогда открылось окно 'Формирование договоров с победителями торгов'
		
		И Я закрыл все окна клиентского приложения

Сценарий: 04.5. Заказы поставщикам

Сценарий: 04.6. ПТУ

Сценарий: 04.7. Возвраты поставщикам



