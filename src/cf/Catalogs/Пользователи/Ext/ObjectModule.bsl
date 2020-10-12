﻿
Процедура ПередЗаписью(Отказ)

	Если не ПустаяСтрока(Наименование) Тогда

		ТекП = ПользователиИнформационнойБазы.НайтиПоИмени(Наименование);

		Если ТекП = Неопределено Тогда
		

			НовыйПользователь = ПользователиИнформационнойБазы.СоздатьПользователя();

			НовыйПользователь.Имя = Наименование;
			Если Роль = 0 Тогда
				НовыйПользователь.Роли.Добавить((Метаданные.Роли.Администратор));
         		Сообщить("Установлен 0");
    		ИначеЕсли Роль = 1 Тогда
         		Сообщить("Установлен 1");
				НовыйПользователь.Роли.Добавить((Метаданные.Роли.Пользователь));
			КонецЕсли;
			НовыйПользователь.Записать();

		КонецЕсли;

	КонецЕсли;

КонецПроцедуры



