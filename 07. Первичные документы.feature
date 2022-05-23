﻿#language: ru

@tree

Функционал: 07. ПЕРВИЧНЫЕ ДОКУМЕНТЫ

Как бизнес-аналитик я хочу
проверить работоспособность 
чтобы исключить ошибки 

Контекст:
	И я подключаю TestClient "УХ - Закупки" логин "Администратор" пароль ""  
	И Я закрыл все окна клиентского приложения

Сценарий: 07.1. Создание всех видов операций ПТУ

* Открываем список ПТУ

		И В командном интерфейсе я выбираю 'Корпоративные закупки' 'Поступление (акты, накладные, УПД)'
		Тогда открылось окно 'Поступление (акты, накладные, УПД)'
	
* Товары (накладная, УПД)
	
		И я нажимаю на кнопку 'Товары (накладная, УПД)'
		Тогда открылось окно 'Поступление товаров: Накладная, УПД (создание)'
		И Я закрываю окно 'Поступление товаров: Накладная, УПД (создание)'
		Тогда открылось окно 'Поступление (акты, накладные, УПД)'
	
* Услуги (акт, УПД)	
	
		И я нажимаю на кнопку 'Услуги (акт, УПД)'
		Тогда открылось окно 'Поступление услуг: Акт, УПД (создание)'
		И Я закрываю окно 'Поступление услуг: Акт, УПД (создание)'
		Тогда открылось окно 'Поступление (акты, накладные, УПД)'
	
	* Товары, услуги, комиссия 	
	
		И я нажимаю на кнопку 'Товары, услуги, комиссия'
		Тогда открылось окно 'Поступление: Товары, услуги, комиссия (создание)'
		И Я закрываю окно 'Поступление: Товары, услуги, комиссия (создание)'
		Тогда открылось окно 'Поступление (акты, накладные, УПД)'
	
	* Основные средства
	
		И я нажимаю на кнопку 'Основные средства'
		Тогда открылось окно 'Поступление основных средств (создание)'
		И Я закрываю окно 'Поступление основных средств (создание)'
		Тогда открылось окно 'Поступление (акты, накладные, УПД)'
	
	* Материалы в переработку
	
		И я нажимаю на кнопку 'Материалы в переработку'
		Тогда открылось окно 'Поступление: Материалы в переработку (создание)'
		И Я закрываю окно 'Поступление: Материалы в переработку (создание)'
		Тогда открылось окно 'Поступление (акты, накладные, УПД)'
		
	* Услуги аренды	
	
		И я нажимаю на кнопку 'Услуги аренды'
		Тогда открылось окно 'Поступление: Услуги аренды (создание)'
		И Я закрываю окно 'Поступление: Услуги аренды (создание)'
		Тогда открылось окно 'Поступление (акты, накладные, УПД)'
	
	* Услуги лизинга	
	
		И я нажимаю на кнопку 'Услуги лизинга'
		Тогда открылось окно 'Поступление: Услуги лизинга (создание)'
		И Я закрываю окно 'Поступление: Услуги лизинга (создание)'
		Тогда открылось окно 'Поступление (акты, накладные, УПД)'

	* Услуги факторинга	
	
		И я нажимаю на кнопку 'Услуги факторинга'
		Тогда открылось окно 'Поступление: Услуги факторинга (создание)'
		И Я закрываю окно 'Поступление: Услуги факторинга (создание)'
		Тогда открылось окно 'Поступление (акты, накладные, УПД)'
	
	* Оборудование	
	
		И я нажимаю на кнопку 'Оборудование'
		Тогда открылось окно 'Поступление: Оборудование (создание)'
		И Я закрываю окно 'Поступление: Оборудование (создание)'
		Тогда открылось окно 'Поступление (акты, накладные, УПД)'

	* Объекты строительства
	
		И я нажимаю на кнопку 'Объекты строительства'
		Тогда открылось окно 'Поступление: Объекты строительства (создание)'
		И Я закрываю окно 'Поступление: Объекты строительства (создание)'
		Тогда открылось окно 'Поступление (акты, накладные, УПД)'
		
	* Земельные участки	
	
		И я нажимаю на кнопку 'Земельные участки'
		Тогда открылось окно 'Приобретение земельных участков (создание)'
		И Я закрываю окно 'Приобретение земельных участков (создание)'
		Тогда открылось окно 'Поступление (акты, накладные, УПД)'
	
	* 	Топливо
	
		И я нажимаю на кнопку 'Топливо'
		Тогда открылось окно 'Поступление: Топливо (создание)'
		И Я закрываю окно 'Поступление: Топливо (создание)'
		Тогда открылось окно 'Поступление (акты, накладные, УПД)'

	* Закрываем список 	
	
		И Я закрываю окно 'Поступление (акты, накладные, УПД)'

Сценарий: 07.2. Создание всех видов операций РТУ

	* Счета покупателям
	
		И В командном интерфейсе я выбираю 'Продажи' 'Счета покупателям'
		Тогда открылось окно 'Счета покупателям'
		
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Счет покупателю (создание)'
		И Я закрываю окно 'Счет покупателю (создание)'
		Тогда открылось окно 'Счета покупателям'
		И Я закрываю окно 'Счета покупателям'
	
	* Реализация товаров 
	
		И В командном интерфейсе я выбираю 'Продажи' 'Реализация (акты, накладные, УПД)'
		Тогда открылось окно 'Реализация (акты, накладные, УПД)'
		И я нажимаю на кнопку 'Товары (накладная, УПД)'
		Тогда открылось окно 'Реализация товаров: Накладная, УПД (создание)'
		И Я закрываю окно 'Реализация товаров: Накладная, УПД (создание)'
		Тогда открылось окно 'Реализация (акты, накладные, УПД)'
		
		И я нажимаю на кнопку 'Услуги (акт, УПД)'
		Тогда открылось окно 'Реализация услуг: Акт, УПД (создание)'
		И Я закрываю окно 'Реализация услуг: Акт, УПД (создание)'
		Тогда открылось окно 'Реализация (акты, накладные, УПД)'
		
		И я нажимаю на кнопку 'Товары, услуги, комиссия'
		Тогда открылось окно 'Реализация: Товары, услуги, комиссия (создание)'
		И Я закрываю окно 'Реализация: Товары, услуги, комиссия (создание)'
		Тогда открылось окно 'Реализация (акты, накладные, УПД)'
		
		И я нажимаю на кнопку 'Отгрузка без перехода права собственности'
		Тогда открылось окно 'Реализация: Отгрузка без перехода права собственности (создание)'
		И Я закрываю окно 'Реализация: Отгрузка без перехода права собственности (создание)'
		Тогда открылось окно 'Реализация (акты, накладные, УПД)'
		
		И я нажимаю на кнопку 'Оборудование'
		Тогда открылось окно 'Реализация: Оборудование (создание)'
		И Я закрываю окно 'Реализация: Оборудование (создание)'
		Тогда открылось окно 'Реализация (акты, накладные, УПД)'
		И Я закрываю окно 'Реализация (акты, накладные, УПД)'

		И В командном интерфейсе я выбираю 'Продажи' 'Оказание услуг'
		Тогда открылось окно 'Оказание услуг'
		И Я закрываю окно 'Оказание услуг'
		
		И В командном интерфейсе я выбираю 'Продажи' 'Реализация отгруженных товаров'
		Тогда открылось окно 'Реализация отгруженных товаров'
		И Я закрываю окно 'Реализация отгруженных товаров'
		
		И В командном интерфейсе я выбираю 'Продажи' 'Отчеты комиссионеров'
		Тогда открылось окно 'Отчеты комиссионеров'
		И Я закрываю окно 'Отчеты комиссионеров'
		
		И В командном интерфейсе я выбираю 'Продажи' 'Акты о расхождениях (полученные)'
		Тогда открылось окно 'Акты о расхождениях (полученные)'
		И Я закрываю окно 'Акты о расхождениях (полученные)'
		
		И В командном интерфейсе я выбираю 'Продажи' 'Возвраты от покупателей'
		Тогда открылось окно 'Возвраты товаров от покупателей'
		И Я закрываю окно 'Возвраты товаров от покупателей'
		
		И В командном интерфейсе я выбираю 'Продажи' 'Корректировка реализации'
		Тогда открылось окно 'Корректировка реализации'
		И Я закрываю окно 'Корректировка реализации'