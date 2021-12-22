﻿#language: ru

@tree

Функционал: СТРОКА ПЛАНА ЗАКУПОК

Как бизнес-аналитик я хочу
проверить работоспособность документа строка плана закупок
чтобы исключить ошибки при работе

Контекст:
	И я подключаю TestClient "УХ31 НСИ" логин "Администратор" пароль ""  
	И Я закрыл все окна клиентского приложения

Сценарий: 1. ТЕСТ1 [ПО ПЛАНУ] Ручной ввод СПЗ

	* Создание документа
	
		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Строки планов закупок'
		Тогда открылось окно 'Строки планов закупок'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Строка плана закупок (создание)'
		
	* Период закупок
	
		И я нажимаю кнопку выбора у поля "Период закупок"
		Тогда открылось окно 'Периоды'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| '2022 г.'      |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Строка плана закупок (создание)'
		
	* Заказчик
	
		И я нажимаю кнопку выбора у поля "Заказчик"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование в программе' | 'Тип организации'       |
			| '00-000003' | 'Королевство Севера [223]' | 'Налоговый резидент РФ' |
		И в таблице "Список" я активизирую поле "Наименование в программе"
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Строка плана закупок (создание) *'
	
	* Организатор торгов
	
		И я нажимаю кнопку выбора у поля "Организатор закупки"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование в программе' | 'Тип организации'       |
			| '00-000003' | 'Королевство Севера [223]' | 'Налоговый резидент РФ' |
		И в таблице "Список" я активизирую поле "Наименование в программе"
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Строка плана закупок (создание) *'

	* Способ закупки	
		
		И я нажимаю кнопку выбора у поля "Способ закупки"
		И из выпадающего списка "Способ закупки" я выбираю точное значение 'Запрос предложений'
		
	* Форма закупки

		И я устанавливаю флаг 'В электронной форме'	

	* Предмет договора и общие требования
		
		И в поле 'Предмет договора' я ввожу текст 'ТЕСТ1 [ПО ПЛАНУ]'
		И в поле 'Общие требования' я ввожу текст 'типовые'
	
	* Дата официального объявления закупки
	
		И в поле 'Дата начала подготовки закупки' я ввожу текст '01.10.2021  0:00:00'
		И я перехожу к следующему реквизиту
		И в поле 'Дата официального объявления закупки' я ввожу текст '02.01.2022  0:00:00'
		И я перехожу к следующему реквизиту

	* Записываем документа
		
		И я нажимаю на кнопку "Записать"
		Тогда открылось окно 'Строка плана закупок * от *'

	* Переходим на закладку Потребности	

		И я перехожу к закладке "Потребности"
	
	* Нажимаем кнопку Подбор из потребностей
	
		И в таблице "ПотребностиПоГодам" я нажимаю на кнопку 'Подбор из потребностей'
		
	* Выбираем Товар 1	
	
		И в таблице "Список" я перехожу к строке:
			| 'Количество' |'Место поставки' | 'Номенклатура' | 'Организация'              | 'Период потребности' | 'Приоритет' | 'Сумма'   | 'Цена' |
			| '200, кг'    |'МестоПоставки1' | 'Товар1'       | 'Королевство Севера [223]' | 'Февраль 2022 г.'    | 'Обычный'   | '100 000' | '500'  |
		И в таблице "Список" я выбираю текущую строку
		
		И в таблице "Список" я перехожу к строке:
			| 'Количество' |'Место поставки' | 'Номенклатура' | 'Организация'              | 'Период потребности' | 'Приоритет' | 'Сумма'   | 'Цена' |
			| '200, кг'    |'МестоПоставки1' | 'Товар1'       | 'Королевство Севера [223]' | 'Март 2022 г.'       | 'Обычный'   | '100 000' | '500'  |
		И в таблице "Список" я выбираю текущую строку
		
		И в таблице "Список" я перехожу к строке:
			| 'Количество' |'Место поставки' | 'Номенклатура' | 'Организация'              | 'Период потребности' | 'Приоритет' | 'Сумма'   | 'Цена' |
			| '200, кг'    |'МестоПоставки1' | 'Товар1'       | 'Королевство Севера [223]' | 'Апрель 2022 г.'     | 'Обычный'   | '100 000' | '500'  |
		И в таблице "Список" я выбираю текущую строку

		И я нажимаю на кнопку 'Отправить и закрыть'

	* Записываем, утверждаем, проводим
	
		И в поле 'Порядок формирования цены договора' я ввожу текст 'цена с ндс'
		И я нажимаю на кнопку 'Записать'
		И из выпадающего списка "Статус" я выбираю точное значение 'Утвержден'
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'Строка плана закупок * от *' в течение 20 секунд
		Тогда открылось окно 'Строки планов закупок'
		И Я закрываю окно 'Строки планов закупок'

Сценарий: 2. ТЕСТ2 [ВНЕ ПЛАНА] Ручное создание СПЗ

	* Создание документа
	
		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Строки планов закупок'
		Тогда открылось окно 'Строки планов закупок'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Строка плана закупок (создание)'
		
	* Период закупок
	
		И я нажимаю кнопку выбора у поля "Период закупок"
		Тогда открылось окно 'Периоды'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| '2022 г.'      |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Строка плана закупок (создание)'
		
	* Заказчик
	
		И я нажимаю кнопку выбора у поля "Заказчик"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование в программе' | 'Тип организации'       |
			| '00-000003' | 'Королевство Севера [223]' | 'Налоговый резидент РФ' |
		И в таблице "Список" я активизирую поле "Наименование в программе"
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Строка плана закупок (создание) *'
	
	* Организатор торгов
	
		И я нажимаю кнопку выбора у поля "Организатор закупки"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование в программе' | 'Тип организации'       |
			| '00-000003' | 'Королевство Севера [223]' | 'Налоговый резидент РФ' |
		И в таблице "Список" я активизирую поле "Наименование в программе"
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Строка плана закупок (создание) *'

	* Способ закупки	
		
		И я нажимаю кнопку выбора у поля "Способ закупки"
		И из выпадающего списка "Способ закупки" я выбираю точное значение 'Запрос предложений'
		
	* Форма закупки

		И я устанавливаю флаг 'В электронной форме'	
		
	* Вне плановой	потребности
	
		И я устанавливаю флаг 'Вне плановой потребности'	

	* Предмет договора и общие требования
		
		И в поле 'Предмет договора' я ввожу текст 'ТЕСТ2 [ВНЕ ПЛАНА]'
		И в поле 'Общие требования' я ввожу текст 'типовые'
	
	* Дата официального объявления закупки
	
		И в поле 'Дата начала подготовки закупки' я ввожу текст '01.10.2021 10:00:00'
		И я перехожу к следующему реквизиту
		И в поле 'Дата официального объявления закупки' я ввожу текст '05.01.2022 10:00:00'
		И я перехожу к следующему реквизиту

	* Записываем документа
		
		И я нажимаю на кнопку "Записать"
		Тогда открылось окно 'Строка плана закупок * от *'

	* Переходим на закладку Потребности	

		И я перехожу к закладке "Потребности"
		
	* Строка 1
	
		И в таблице "ПотребностиПоГодам" я нажимаю на кнопку 'Добавить'
		И в таблице "ПотребностиПоГодам" я выбираю текущую строку
		И в таблице "ПотребностиПоГодам" я нажимаю кнопку выбора у реквизита с именем "ПотребностиПоГодамНоменклатура"
		Тогда открылось окно 'Выбор типа данных'
		И в таблице "TypeTree" я перехожу к строке:
			| 'Колонка1'           |
			| 'Номенклатура'       |
		И в таблице "TypeTree" я выбираю текущую строку
		Тогда открылось окно 'Номенклатура'
		И в таблице "Список" я перехожу к строке:
			| '% НДС' | 'Единица' | 'Наименование' |
			| '20%'   | 'кг'      | 'Товар1'       |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Строка плана закупок * от * *'
		И в таблице "ПотребностиПоГодам" я активизирую поле с именем "ПотребностиПоГодамПриоритет"
		И в таблице "ПотребностиПоГодам" я нажимаю кнопку выбора у реквизита с именем "ПотребностиПоГодамПриоритет"
		Тогда открылось окно 'Приоритеты потребностей'
		И в таблице "Список" я перехожу к строке:
			| 'Величина важности' | 'Наименование' |
			| '100 000'           | 'Обычный'      |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Строка плана закупок * от * *'
		И в таблице "ПотребностиПоГодам" я активизирую поле "Организация"
		И в таблице "ПотребностиПоГодам" я нажимаю кнопку выбора у реквизита "Организация"
		Тогда открылось окно 'Организационные единицы'
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование в программе' | 'Тип организации'       |
			| '00-000003' | 'Королевство Севера [223]' | 'Налоговый резидент РФ' |
		И в таблице "Список" я активизирую поле "Наименование в программе"
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Строка плана закупок * от * *'
		И в таблице "ПотребностиПоГодам" из выпадающего списка "Организация" я выбираю точное значение 'Королевство Севера [223]'
		И в таблице "ПотребностиПоГодам" я активизирую поле с именем "ПотребностиПоГодамМестоПоставки"
		И в таблице "ПотребностиПоГодам" я нажимаю кнопку выбора у реквизита с именем "ПотребностиПоГодамМестоПоставки"
		Тогда открылось окно 'Места поставки товаров (оказания услуг)'
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование'   |
			| '000000002' | 'МестоПоставки2' |
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование'   |
			| '000000001' | 'МестоПоставки1' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Строка плана закупок * от * *'
		И в таблице "ПотребностиПоГодам" я активизирую поле с именем "ПотребностиПоГодамЦена"
		И в таблице "ПотребностиПоГодам" в поле с именем 'ПотребностиПоГодамЦена' я ввожу текст '600,00'
		И я перехожу к следующему реквизиту
		И в таблице "ПотребностиПоГодам" из выпадающего списка с именем "ПотребностиПоГодамСтавкаНДС" я выбираю точное значение '20%'
		И я перехожу к следующему реквизиту
		И в таблице "ПотребностиПоГодам" я завершаю редактирование строки
		И в таблице "РасшифровкаПотребностей" я выбираю текущую строку
		И в таблице "РасшифровкаПотребностей" я активизирую поле с именем "РасшифровкаПотребностейЯнварьКоличество"
		И в таблице "РасшифровкаПотребностей" я выбираю текущую строку
		И в таблице "РасшифровкаПотребностей" в поле с именем 'РасшифровкаПотребностейЯнварьКоличество' я ввожу текст '25,000'
		И в таблице "РасшифровкаПотребностей" я завершаю редактирование строки

	* Записываем, утверждаем, проводим	
	
		И в поле 'Порядок формирования цены договора' я ввожу текст 'цена с ндс'
		И я нажимаю на кнопку 'Записать'
		И из выпадающего списка "Статус" я выбираю точное значение 'Утвержден'
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'Строка плана закупок * от *' в течение 20 секунд
		Тогда открылось окно 'Строки планов закупок'
		И Я закрываю окно 'Строки планов закупок'

Сценарий: 3. ТЕСТ3 [ОБРАБОТКА - ПАКЕТНЫЙ РЕЖИМ]

		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Помощник формирования программы закупок'
		Тогда открылось окно 'Помощник формирования программы закупок *'
		
		И в таблице "ТаблицаОтбора" я перехожу к строке:
			| 'Реквизит'       | 
			| 'Период закупки' | 
		И в таблице "ТаблицаОтбора" я выбираю текущую строку
		
		И в таблице "ТаблицаОтбора" я нажимаю кнопку выбора у реквизита с именем "ТаблицаОтбораЗначение"
		Тогда открылось окно 'Периоды'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| '2022 г.'      |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Помощник формирования программы закупок *'
		И в таблице "ТаблицаОтбора" я завершаю редактирование строки
		
		И в таблице "ТаблицаОтбора" я перехожу к строке:
			| 'Реквизит'        | 
			| 'Субъекты 223-ФЗ' | 
		И в таблице "ТаблицаОтбора" я выбираю текущую строку
		И в таблице "ТаблицаОтбора" я нажимаю кнопку выбора у реквизита с именем "ТаблицаОтбораЗначение"
		И в таблице "ТаблицаОтбора" из выпадающего списка с именем "ТаблицаОтбораЗначение" я выбираю точное значение 'Да'
		И в таблице "ТаблицаОтбора" я завершаю редактирование строки
		
		И я нажимаю на кнопку 'Далее >'
		Тогда открылось окно 'Помощник формирования программы закупок *'
		
		И в таблице "СписокПотребности" я перехожу к строке:
			| 'Номенклатура' | 'Место поставки' | 'Валюта' |
			| 'Материал1, т' | 'МестоПоставки1' | 'RUB'    |
		И в таблице "СписокПотребности" я выбираю текущую строку
		
		И в таблице "СписокПотребности" я перехожу к строке:
			| 'Номенклатура' | 'Место поставки' | 'Валюта' |
			| 'Материал2, т' | 'МестоПоставки1' | 'RUB'    |
		И в таблице "СписокПотребности" я выбираю текущую строку
		
		И в таблице "СписокПотребности" я перехожу к строке:
			| 'Номенклатура' | 'Место поставки' | 'Валюта' |
			| 'Материал3, т' | 'МестоПоставки1' | 'RUB'    |
		И в таблице "СписокПотребности" я выбираю текущую строку
		
		И я нажимаю на кнопку 'Пакетный'
		И я нажимаю на кнопку 'Далее >'
		Тогда открылось окно 'Помощник формирования программы закупок *'
		И я устанавливаю флаг 'Способ закупки'
		И я устанавливаю флаг 'Организатор'
		И я устанавливаю флаг 'Место поставки'
		И я меняю значение переключателя 'АвтоСПЗ_ГруппировкаНоменклатуры' на '  Товарная категория  '
		И я нажимаю на кнопку 'Далее >'

		И в таблице "СписокВсехПроектовСПЗ" я перехожу к первой строке
		И в таблице "СписокВсехПроектовСПЗ" я выбираю текущую строку
		Тогда открылось окно 'Черновик СПЗ'
		И в поле с именем 'ПредметДоговора' я ввожу текст 'ТЕСТ3 [ОБРАБОТКА - ПАКЕТНЫЙ РЕЖИМ]'
		И в поле с именем 'ОбщиеТребования' я ввожу текст 'НЕТ'
		И я нажимаю на кнопку 'Записать и закрыть'
		И я жду закрытия окна 'Черновик СПЗ *' в течение 20 секунд

		И в таблице "СписокВсехПроектовСПЗ" я нажимаю на кнопку 'Сформировать СПЗ из черновика'
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку 'OK'
		Тогда открылось окно 'Помощник формирования программы закупок *'
		И я нажимаю на кнопку 'Закрыть'

Сценарий: 4. ТЕСТ4 [ОБРАБОТКА - РУЧНОЙ РЕЖИМ]

		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Помощник формирования программы закупок'
		Тогда открылось окно 'Помощник формирования программы закупок *'
		
		И в таблице "ТаблицаОтбора" я перехожу к строке:
			| 'Реквизит'       | 
			| 'Период закупки' | 
		И в таблице "ТаблицаОтбора" я выбираю текущую строку
		
		И в таблице "ТаблицаОтбора" я нажимаю кнопку выбора у реквизита с именем "ТаблицаОтбораЗначение"
		Тогда открылось окно 'Периоды'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| '2022 г.'      |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Помощник формирования программы закупок *'
		И в таблице "ТаблицаОтбора" я завершаю редактирование строки
		
		И в таблице "ТаблицаОтбора" я перехожу к строке:
			| 'Реквизит'        | 
			| 'Субъекты 223-ФЗ' | 
		И в таблице "ТаблицаОтбора" я выбираю текущую строку
		И в таблице "ТаблицаОтбора" я нажимаю кнопку выбора у реквизита с именем "ТаблицаОтбораЗначение"
		И в таблице "ТаблицаОтбора" из выпадающего списка с именем "ТаблицаОтбораЗначение" я выбираю точное значение 'Да'
		И в таблице "ТаблицаОтбора" я завершаю редактирование строки
		
		И я нажимаю на кнопку 'Далее >'
		Тогда открылось окно 'Помощник формирования программы закупок *'
		
		И в таблице "СписокПотребности" я перехожу к строке:
			| 'Номенклатура' | 'Место поставки' | 'Валюта' |
			| 'Материал1, т' | 'МестоПоставки1' | 'RUB'    |
		И в таблице "СписокПотребности" я выбираю текущую строку
		
		И в таблице "СписокПотребности" я перехожу к строке:
			| 'Номенклатура' | 'Место поставки' | 'Валюта' |
			| 'Материал2, т' | 'МестоПоставки1' | 'RUB'    |
		И в таблице "СписокПотребности" я выбираю текущую строку
		
		И в таблице "СписокПотребности" я перехожу к строке:
			| 'Номенклатура' | 'Место поставки' | 'Валюта' |
			| 'Материал3, т' | 'МестоПоставки1' | 'RUB'    |
		И в таблице "СписокПотребности" я выбираю текущую строку
		
		И я нажимаю на кнопку 'Ручной'
		И я нажимаю на кнопку 'Далее >'
		Тогда открылось окно 'Помощник формирования программы закупок *'
		И я меняю значение переключателя 'Поместить выбранные позиции в' на 'новый черновик строки плана закупок'
		И я нажимаю на кнопку 'Далее >'

		И в поле с именем 'ПредметДоговора1' я ввожу текст 'ТЕСТ4 [ОБРАБОТКА - РУЧНОЙ РЕЖИМ]'
		И в поле с именем 'ОбщиеТребования1' я ввожу текст 'нет'
		И я нажимаю на кнопку 'Далее >'
		
		Тогда открылось окно 'Помощник формирования программы закупок *'
		И в таблице "СписокВсехПроектовСПЗ" я нажимаю на кнопку 'Сформировать СПЗ из черновика'
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку 'OK'
		Тогда открылось окно 'Помощник формирования программы закупок *'
		И я нажимаю на кнопку 'Закрыть'

Сценарий: 5. СОГЛАСОВНИЕ СПЗ

	* Открываем список строк плана закупок
	
		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Строки планов закупок'
		Тогда открылось окно 'Строки планов закупок'
		
	* Утверждаем СПЗ ТЕСТ3
	
		И в таблице "Список" я перехожу к строке:
			| 'Валюта документа' | 'Заказчик'                 | 'Период закупок' | 'Предмет договора'                   | 'Способ закупки'     | 'Сумма документа' |
			| 'RUB'              | 'Королевство Севера [223]' | '2022 г.'        | 'ТЕСТ3 [ОБРАБОТКА - ПАКЕТНЫЙ РЕЖИМ]' | 'Запрос предложений' | '1 237 200,00'    |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Строка плана закупок * от *'
		И из выпадающего списка "Статус" я выбираю точное значение 'Утвержден'
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'Строка плана закупок * от *' в течение 20 секунд
		Тогда открылось окно 'Строки планов закупок'
	
	* Утверждаем СПЗ ТЕСТ4	
	
		И в таблице "Список" я перехожу к строке:
			| 'Валюта документа' | 'Заказчик'                 | 'Период закупок' | 'Предмет договора'                 | 'Способ закупки'     | 'Сумма документа' |
			| 'RUB'              | 'Королевство Севера [223]' | '2022 г.'        | 'ТЕСТ4 [ОБРАБОТКА - РУЧНОЙ РЕЖИМ]' | 'Запрос предложений' | '64 000,00'       |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Строка плана закупок * от *'
		И из выпадающего списка "Статус" я выбираю точное значение 'Утвержден'
		И я нажимаю на кнопку 'Провести и закрыть'
		И я жду закрытия окна 'Строка плана закупок * от *' в течение 20 секунд
		Тогда открылось окно 'Строки планов закупок'
	
	* Закрываем список строк плана закупок	
	
		И Я закрываю окно 'Строки планов закупок'


