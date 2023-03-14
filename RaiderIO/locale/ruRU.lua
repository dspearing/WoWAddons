-- Generated from CurseForge on Tue Mar 14 20:49:43 UTC 2023
local ns = select(2, ...) ---@type ns @The addon namespace.

if ns:IsSameLocale("ruRU") then
	local L = ns.L or ns:NewLocale()

	L.LOCALE_NAME = "ruRU"

L["ALLOW_IN_LFD"] = "Разрешить в окне поиска группы"
L["ALLOW_IN_LFD_DESC"] = "Нажмите ПКМ на группу или кандидатов в заранее собранных группах для копирования ссылки на профиль Raider.IO."
L["ALLOW_ON_PLAYER_UNITS"] = "Разрешить в рамках персонажей"
L["ALLOW_ON_PLAYER_UNITS_DESC"] = "Нажмите ПКМ на рамку игрока для копирования ссылки на профиль Raider.IO."
L["API_DEPRECATED"] = "|cffFF0000Предупреждение!|r Дополнение |cffFFFFFF%s|r вызывает устаревшую функцию RaiderIO.%s. Эта функция будет удалена в будущих релизах. Пожалуйста, попросите автора %s обновить свой аддон. Вызов стека: %s"
L["API_DEPRECATED_UNKNOWN_ADDON"] = "<Неизвестное дополнение>"
L["API_DEPRECATED_UNKNOWN_FILE"] = "<Неизвестный файл дополнения>"
L["API_DEPRECATED_WITH"] = "|cffFF0000Предупреждение!|r Дополнение |cffFFFFFF%s|r вызывает устаревшую функцию RaiderIO.%s. Эта функция будет удалена в будущих релизах. Пожалуйста, попросите автора %s обновить свой аддон до нового API RaiderIO. Вызов стека: %s"
L["API_INVALID_DATABASE"] = "|cffFF0000Предупреждение!|r Обнаружена недопустимая база данных RaiderIO в |cffffffff%s|r. Пожалуйста, обновите все регионы и фракции в клиенте RaiderIO, либо переустановите дополнение вручную."
L["AUTO_COMBATLOG"] = "Автоматически включать журнал боя в рейдах и подземельях"
L["AUTO_COMBATLOG_DESC"] = "Автоматическое включение или отключение ведения журнала боевых действий при входе и выходе из поддерживаемых рейдов и подземелий."
L["BEST_FOR_DUNGEON"] = "Лучший для подземелья"
L["BEST_RUN"] = "Лучшее подземелье"
L["BEST_SCORE"] = "Лучший результат M+ (%s)"
L["CANCEL"] = "Отменить"
L["CHANGES_REQUIRES_UI_RELOAD"] = "Изменения были сохранены, но необходимо перезагрузить интерфейс, чтобы они вступили в силу. Сделать это сейчас?"
L["CHARACTER_LF_GUILD_MPLUS"] = "Ищу гильдию для походов в М+ подземелья"
L["CHARACTER_LF_GUILD_MPLUS_WITH_SCORE"] = "Ищу гильдию для походов в М+ подземелья"
L["CHARACTER_LF_GUILD_PVP"] = "Ищу PvP гильдию"
L["CHARACTER_LF_GUILD_RAID_DEFAULT"] = "Ищу гильдию для походов в рейды"
L["CHARACTER_LF_GUILD_RAID_HEROIC"] = [=[Ищу гильдию для походов в героические рейды
]=]
L["CHARACTER_LF_GUILD_RAID_MYTHIC"] = "Ищу гильдию для походов в эпохальные рейды"
L["CHARACTER_LF_GUILD_RAID_NORMAL"] = "Ищу гильдию для походов в обычные рейды"
L["CHARACTER_LF_GUILD_SOCIAL"] = "Ищу гильдию для социальных активностей"
L["CHARACTER_LF_TEAM_MPLUS_DEFAULT"] = "Ищу команду для походов в M+"
L["CHARACTER_LF_TEAM_MPLUS_WITH_SCORE"] = "Ищу %d+ статик для походов в М+ подземелья"
L["CHECKBOX_DISPLAY_WEEKLY"] = "Текущая неделя"
L["CHOOSE_HEADLINE_HEADER"] = "Заголовок всплывающей подсказки M+"
L["CONFIG_WHERE_TO_SHOW_TOOLTIPS"] = "Отображение очков М+ и рейдового прогресса"
L["CONFIRM"] = "Подтвердить"
L["COPY_RAIDERIO_PROFILE_URL"] = "Копировать ссылку Raider.IO"
L["COPY_RAIDERIO_RECRUITMENT_URL"] = "Копировать URL-адрес рекрутинга"
L["COPY_RAIDERIO_URL"] = "Копировать ссылку Raider.IO"
L["CURRENT_MAINS_SCORE"] = "М+ рейтинг мейна"
L["CURRENT_SCORE"] = "Текущий результат М+"
L["DB_MODULES"] = "Модули базы данных"
L["DB_MODULES_HEADER_MYTHIC_PLUS"] = "М+ подземелья"
L["DB_MODULES_HEADER_RAIDING"] = "Рейды"
L["DB_MODULES_HEADER_RECRUITMENT"] = "Рекрутинг"
L["DISABLE_DEBUG_MODE_RELOAD"] = "Вы отключаете режим отладки. Нажмите Подтвердить, чтобы перезагрузить интерфейс."
L["DISABLE_RWF_MODE_BUTTON"] = "Отключить"
L["DISABLE_RWF_MODE_BUTTON_TOOLTIP"] = "Нажмите, чтобы отключить режим Race World First. Это приведет к перезагрузке Вашего интерфейса."
L["DISABLE_RWF_MODE_RELOAD"] = "Вы отключаете режим Race World First. Нажатие кнопки Подтвердить перезагрузит Ваш интерфейс."
L["DPS"] = "Боец"
L["DUNGEON_SHORT_NAME_AA"] = "Академия Алгет'ар"
L["DUNGEON_SHORT_NAME_AV"] = "Лазурное хранилище"
L["DUNGEON_SHORT_NAME_COS"] = "Квартал Звезд"
L["DUNGEON_SHORT_NAME_DOS"] = "Та Сторона"
L["DUNGEON_SHORT_NAME_GD"] = "Депо Мрачных Путей"
L["DUNGEON_SHORT_NAME_GMBT"] = "Гамбит Со'леи"
L["DUNGEON_SHORT_NAME_HOA"] = "Чертоги Покаяния"
L["DUNGEON_SHORT_NAME_HOV"] = "Чертоги Доблести"
L["DUNGEON_SHORT_NAME_ID"] = "Железные доки"
L["DUNGEON_SHORT_NAME_LOWR"] = "Каражан (низ)"
L["DUNGEON_SHORT_NAME_MISTS"] = "Туманы Тирна Скитта"
L["DUNGEON_SHORT_NAME_NO"] = "Наступление клана Нокхуд"
L["DUNGEON_SHORT_NAME_NW"] = "Смертельная Тризна"
L["DUNGEON_SHORT_NAME_PF"] = "Чумные каскады"
L["DUNGEON_SHORT_NAME_RLP"] = "Рубиновые Омуты Жизни"
L["DUNGEON_SHORT_NAME_SBG"] = "Некрополь Призрачной Луны"
L["DUNGEON_SHORT_NAME_SD"] = "Кровавые Катакомбы"
L["DUNGEON_SHORT_NAME_SOA"] = "Шпили Перерождения"
L["DUNGEON_SHORT_NAME_STRT"] = "Улицы Чудес"
L["DUNGEON_SHORT_NAME_TJS"] = "Храм Нефритовой Змеи"
L["DUNGEON_SHORT_NAME_TOP"] = "Театр Боли"
L["DUNGEON_SHORT_NAME_UPPR"] = "Каражан (верх)"
L["DUNGEON_SHORT_NAME_VOTW"] = "Казематы Стражей"
L["DUNGEON_SHORT_NAME_WORK"] = "Мехагон Мастерская"
L["DUNGEON_SHORT_NAME_YARD"] = "Мехагон Свалка"
L["ENABLE_AUTO_FRAME_POSITION"] = "Автоматическая позиция окна профиля RaiderIO"
L["ENABLE_AUTO_FRAME_POSITION_DESC"] = "Включение этого параметра будет удерживать подсказку М+ профиля рядом с окном поиска группы или подсказкой игрока."
L["ENABLE_DEBUG_MODE_RELOAD"] = "Вы включаете режим отладки. Он предназначен только для тестирования и разработки и потребует дополнительного использования памяти. Нажмите Подтвердить, чтобы перезагрузить интерфейс."
L["ENABLE_LOCK_PROFILE_FRAME"] = "Закрепить рамку профиля RaiderIO"
L["ENABLE_LOCK_PROFILE_FRAME_DESC"] = "Предотвращает перетаскивание рамки М+ профиля. Не действует, если рамка М+ профиля настроена на автоматическое позиционирование."
L["ENABLE_NO_SCORE_COLORS"] = "Отключить все цвета очков M+"
L["ENABLE_NO_SCORE_COLORS_DESC"] = "Отключает раскраску очков. Все очки будут отображены белым цветом."
L["ENABLE_RAIDERIO_CLIENT_ENHANCEMENTS"] = "Расширенная информация из клиента RaiderIO"
L["ENABLE_RAIDERIO_CLIENT_ENHANCEMENTS_DESC"] = "Включение этого параметра позволит Вам просматривать подробные данные профиля Raider.IO, загруженные из клиента Raider.IO для Ваших заявленных персонажей."
L["ENABLE_RWF_MODE_BUTTON"] = "Включить"
L["ENABLE_RWF_MODE_BUTTON_TOOLTIP"] = "Нажмите, чтобы включить режим Race World First. Это приведет к перезагрузке Вашего интерфейса."
L["ENABLE_RWF_MODE_RELOAD"] = "Вы включаете режим Race World First. Это предназначено для использования с гонкой Mythic World First и должно использоваться только для этих целей вместе с клиентом Raider.IO для загрузки данных. Нажатие кнопки Подтвердить перезагрузит Ваш интерфейс."
L["ENABLE_SIMPLE_SCORE_COLORS"] = "Используйте простые цвета очков M+"
L["ENABLE_SIMPLE_SCORE_COLORS_DESC"] = "Показывает очки только со стандартными цветами качества предметов. Это может облегчить людям с нарушениями цветового зрения различение уровней оценки."
L["EXPORTJSON_COPY_TEXT"] = "Скопируйте текст и вставьте его где угодно на странице |cff00C8FFhttps://raider.io|r для просмотра данных по всем игрокам."
L["GENERAL_TOOLTIP_OPTIONS"] = "Общие параметры подсказки"
L["GUILD_BEST_SEASON"] = "Гильдия: Лучшие за сезон"
L["GUILD_BEST_TITLE"] = "Рекорды Raider.IO"
L["GUILD_BEST_WEEKLY"] = "Гильдия: Лучшие за неделю"
L["GUILD_LF_MPLUS_DEFAULT"] = "Рекрутинг игроков для походов в М+"
L["GUILD_LF_MPLUS_WITH_SCORE"] = "Рекрутинг %d+ игроков для походов в М+"
L["GUILD_LF_PVP"] = "Рекрутинг PvP игроков"
L["GUILD_LF_RAID_DEFAULT"] = "Рекрутинг игроков для походов в рейды"
L["GUILD_LF_RAID_HEROIC"] = "Рекрутинг игроков для походов в героические рейды"
L["GUILD_LF_RAID_MYTHIC"] = "Рекрутинг игроков для походов в эпохальные рейды"
L["GUILD_LF_RAID_NORMAL"] = "Рекрутинг игроков для походов в обычные рейды"
L["GUILD_LF_SOCIAL"] = "Рекрутинг социальных игроков"
L["HEALER"] = "Лекарь"
L["HIDE_OWN_PROFILE"] = "Скрыть подсказку для Вашего персонажа"
L["HIDE_OWN_PROFILE_DESC"] = "Если установлено, не будет показываться всплывающая подсказка Вашего профиля Raider.IO, но могут отображаться подсказки других игроков, если они у них есть."
L["INVERSE_PROFILE_MODIFIER"] = "Инвертировать модификатор подсказки профиля Raider.IO"
L["INVERSE_PROFILE_MODIFIER_DESC"] = "Включение этого параметра позволит инвертировать модификатор клавиш (Shift/Ctrl/Alt) в подсказке RaiderIO: удерживайте клавишу для переключения между видами профилей Свой/Лидер, либо Лидер/Свой."
L["LOCKING_PROFILE_FRAME"] = "Raider.IO: блокировка фрейма профиля M+."
L["MAINS_BEST_SCORE_BEST_SEASON"] = "Лучший М+ рейтинг мейна (%s)"
L["MAINS_RAID_PROGRESS"] = "Прогресс мейна"
L["MAINS_SCORE"] = "Рейтинг мейна"
L["MODULE_AMERICAS"] = "Америка"
L["MODULE_EUROPE"] = "Европа"
L["MODULE_KOREA"] = "Корея"
L["MODULE_TAIWAN"] = "Тайвань"
L["MY_PROFILE_TITLE"] = "Профиль RaiderIO"
L["MYTHIC_PLUS_DB_MODULES"] = "Модули базы данных М+ подземелий"
L["MYTHIC_PLUS_SCORES"] = "Подсказки М+ счета"
L["NO_GUILD_RECORD"] = "Нет данных гильдии"
L["OPEN_CONFIG"] = "Открыть настройки"
L["OUT_OF_SYNC_DATABASE_S"] = "|cffFFFFFF%s|r имеет данные фракции Орды/Альянса, которые не синхронизированы. Пожалуйста, обновите настройки Вашего клиента Raider.IO, чтобы синхронизировать обе фракции."
L["OUTDATED_DATABASE"] = "Данные устарели на %d дня."
L["OUTDATED_DATABASE_HOURS"] = "Данные обновлены %d часов назад"
L["OUTDATED_DOWNLOAD_LINK"] = "Скачать: |cffffbd0a%s|r"
L["OUTDATED_EXPIRED_ALERT"] = "|cffFFFFFF%s|r использует устаревшие данные. Пожалуйста, обновите сейчас, чтобы увидеть самые точные данные: |cffFFFFFF%s|r"
L["OUTDATED_EXPIRED_TITLE"] = "Срок действия данных Raider.IO истек"
L["OUTDATED_EXPIRES_IN_DAYS"] = "Срок действия данных Raider.IO истекает через %d дней"
L["OUTDATED_EXPIRES_IN_HOURS"] = "Срок действия данных Raider.IO истекает через %d часов"
L["OUTDATED_EXPIRES_IN_MINUTES"] = "Срок действия данных Raider.IO истекает через %d минут"
L["OUTDATED_PROFILE_TOOLTIP_MESSAGE"] = "Пожалуйста, обновите свой аддон сейчас, чтобы увидеть наиболее точные данные. Игроки упорно работают, чтобы улучшить свой прогресс, и отображение очень старых данных является для них медвежьей услугой. Вы можете использовать клиент Raider.IO для автоматической синхронизации Ваших данных."
L["PREVIOUS_SCORE"] = "Очки предыдущего сезона (%s):"
L["PROFILE_BEST_RUNS"] = "Лучшие прохождения"
L["PROFILE_TOOLTIP_ANCHOR_TOOLTIP"] = "Заблокируйте рамку профиля Raider.IO или включите автоматическое позиционирование, чтобы скрыть эту привязку."
L["PROVIDER_NOT_LOADED"] = "|cffFF0000Предупреждение:|r |cffFFFFFF%s|r не может найти данные для Вашей текущей фракции. Пожалуйста, проверьте Ваши настройки |cffFFFFFF/raiderio|r и включите данные для |cffFFFFFF%s|r."
L["RAID_BOSS_CN_1"] = "Визгунья"
L["RAID_BOSS_CN_10"] = "Сир Денатрий"
L["RAID_BOSS_CN_2"] = "Ловчий Альтимор"
L["RAID_BOSS_CN_3"] = "Алчущий разрушитель"
L["RAID_BOSS_CN_4"] = "Изобретатель Зи'мокс"
L["RAID_BOSS_CN_5"] = "Спасение Солнечного короля"
L["RAID_BOSS_CN_6"] = "Леди Инерва Дарквейн"
L["RAID_BOSS_CN_7"] = "Совет Крови"
L["RAID_BOSS_CN_8"] = "Грязешмяк"
L["RAID_BOSS_CN_9"] = "Генералы Каменного легиона"
L["RAID_BOSS_FCN_1"] = "Визгунья"
L["RAID_BOSS_FCN_10"] = "Сир Денатрий"
L["RAID_BOSS_FCN_2"] = "Ловчий Альтимор"
L["RAID_BOSS_FCN_3"] = "Алчущий разрушитель"
L["RAID_BOSS_FCN_4"] = "Изобретатель Зи'мокс"
L["RAID_BOSS_FCN_5"] = "Спасение Солнечного короля"
L["RAID_BOSS_FCN_6"] = "Леди Инерва Дарквейн"
L["RAID_BOSS_FCN_7"] = "Совет Крови"
L["RAID_BOSS_FCN_8"] = "Грязешмяк"
L["RAID_BOSS_FCN_9"] = "Генералы Каменного легиона"
L["RAID_BOSS_FSFO_1"] = "Бдительный Страж"
L["RAID_BOSS_FSFO_10"] = "Ригелон"
L["RAID_BOSS_FSFO_11"] = "Тюремщик"
L["RAID_BOSS_FSFO_2"] = "Сколекс"
L["RAID_BOSS_FSFO_3"] = "Изобретатель Зи'мокс"
L["RAID_BOSS_FSFO_4"] = "Даусинь"
L["RAID_BOSS_FSFO_5"] = "Прототип пантеона"
L["RAID_BOSS_FSFO_6"] = "Лихувим"
L["RAID_BOSS_FSFO_7"] = "Галондрий"
L["RAID_BOSS_FSFO_8"] = "Андуин Ринн"
L["RAID_BOSS_FSFO_9"] = "Властители Ужаса"
L["RAID_BOSS_FSOD_1"] = "Таррагр"
L["RAID_BOSS_FSOD_10"] = "Сильвана Ветрокрылая"
L["RAID_BOSS_FSOD_2"] = "Око Тюремщика"
L["RAID_BOSS_FSOD_3"] = "Девять"
L["RAID_BOSS_FSOD_4"] = "Душа Нер'зула"
L["RAID_BOSS_FSOD_5"] = "Дормацайн"
L["RAID_BOSS_FSOD_6"] = "Разнал"
L["RAID_BOSS_FSOD_7"] = "Стражница Предвечных"
L["RAID_BOSS_FSOD_8"] = "Писарь судьбы Ро-Кало"
L["RAID_BOSS_FSOD_9"] = "Кел'Тузад"
L["RAID_BOSS_SFO_1"] = "Бдительный Страж"
L["RAID_BOSS_SFO_10"] = "Ригелон"
L["RAID_BOSS_SFO_11"] = "Тюремщик"
L["RAID_BOSS_SFO_2"] = "Сколекс"
L["RAID_BOSS_SFO_3"] = "Изобретатель Зи'мокс"
L["RAID_BOSS_SFO_4"] = "Даусинь"
L["RAID_BOSS_SFO_5"] = "Прототип пантеона"
L["RAID_BOSS_SFO_6"] = "Лихувим"
L["RAID_BOSS_SFO_7"] = "Галондрий"
L["RAID_BOSS_SFO_8"] = "Андуин Ринн"
L["RAID_BOSS_SFO_9"] = "Властители Ужаса"
L["RAID_BOSS_SOD_1"] = "Таррагр"
L["RAID_BOSS_SOD_10"] = "Сильвана Ветрокрылая"
L["RAID_BOSS_SOD_2"] = "Око Тюремщика"
L["RAID_BOSS_SOD_3"] = "Девять"
L["RAID_BOSS_SOD_4"] = "Душа Нер'зула"
L["RAID_BOSS_SOD_5"] = "Раздиратель душ Дормацайн"
L["RAID_BOSS_SOD_6"] = "Кузнец боли Разнал"
L["RAID_BOSS_SOD_7"] = "Стражница Предвечных"
L["RAID_BOSS_SOD_8"] = "Писарь Судьбы Ро-Кало"
L["RAID_BOSS_SOD_9"] = "Кел'Тузад"
L["RAID_BOSS_VOTI_1"] = "Эраног"
L["RAID_BOSS_VOTI_2"] = "Террос "
L["RAID_BOSS_VOTI_3"] = "Совет стихий "
L["RAID_BOSS_VOTI_4"] = "Сеннарт Дыхание Льда"
L["RAID_BOSS_VOTI_5"] = "Дафия Перерождённая"
L["RAID_BOSS_VOTI_6"] = "Курог Зловещий Тотем"
L["RAID_BOSS_VOTI_7"] = "Хранительница стаи Денна"
L["RAID_BOSS_VOTI_8"] = "Рашагет Пожирательница Бурь"
L["RAID_DIFFICULTY_NAME_HEROIC"] = "Героический"
L["RAID_DIFFICULTY_NAME_MYTHIC"] = "Эпохальный"
L["RAID_DIFFICULTY_NAME_NORMAL"] = "Обычный"
L["RAID_DIFFICULTY_SUFFIX_HEROIC"] = "Г"
L["RAID_DIFFICULTY_SUFFIX_MYTHIC"] = "Э"
L["RAID_DIFFICULTY_SUFFIX_NORMAL"] = "О"
L["RAID_ENCOUNTERS_DEFEATED_TITLE"] = "Побежденные боссы"
L["RAIDERIO_AVERAGE_PLAYER_SCORE"] = "Cредн. очки для прохода вовремя +%s"
L["RAIDERIO_BEST_RUN"] = "[Raider.IO] Лучшее М+ подземелье"
L["RAIDERIO_CLIENT_CUSTOMIZATION"] = "Настройка клиента RaiderIO"
L["RAIDERIO_LIVE_TRACKING"] = "[Raider.IO] отслеживание в реальном времени"
L["RAIDERIO_MP_BASE_SCORE"] = "[Raider.IO] Основной рейтинг М+"
L["RAIDERIO_MP_BEST_SCORE"] = "[Raider.IO] М+ рейтинг (%s)"
L["RAIDERIO_MP_SCORE"] = "[Raider.IO] М+ рейтинг"
L["RAIDERIO_MYTHIC_OPTIONS"] = "Настройки аддона Raider.IO"
L["RAIDING_DATA_HEADER"] = "Raider.IO - Рейдовый прогресс"
L["RAIDING_DB_MODULES"] = "Модули базы данных рейдинга"
L["RECRUITMENT_DB_MODULES"] = "Модули базы данных рекрутинга"
L["RELOAD_LATER"] = "Перезагрузить позже"
L["RELOAD_NOW"] = "Перезагрузить сейчас"
L["RELOAD_RWF_MODE_BUTTON"] = "Сохранить"
L["RELOAD_RWF_MODE_BUTTON_TOOLTIP"] = "Нажмите, чтобы сохранить журнал в файл хранилища. Это приведет к перезагрузке вашего интерфейса."
L["RWF_MINIBUTTON_TOOLTIP"] = "Щелкните ЛКМ каждый раз, когда есть ожидающая добыча. Это приведет к перезагрузке Вашего интерфейса. Щелкните ПКМ, чтобы открыть фрейм Race World First."
L["RWF_SUBTITLE_LOGGING_FILTERED_LOOT"] = "(регистрация соответствующих элементов)"
L["RWF_SUBTITLE_LOGGING_LOOT"] = "(регистрация добычи)"
L["RWF_TITLE"] = "|cffFFFFFFRaider.IO|r Race World First"
L["SEARCH_NAME_LABEL"] = "Имя"
L["SEARCH_REALM_LABEL"] = "Игровой мир"
L["SEARCH_REGION_LABEL"] = "Регион"
L["SEASON_LABEL_1"] = "C1"
L["SEASON_LABEL_2"] = "C2"
L["SEASON_LABEL_3"] = "С3"
L["SEASON_LABEL_4"] = "С4"
L["SHOW_AVERAGE_PLAYER_SCORE_INFO"] = "Отображать средние очки прошедших вовремя"
L["SHOW_AVERAGE_PLAYER_SCORE_INFO_DESC"] = "Показывает среднее количество очков по версии Raider.IO у персонажей, прошедших М+ подземелье вовремя. Показывается во всплывающих подсказках М+ ключа и всплывающих подсказках игрока в системе поиска подземелий и рейдов."
L["SHOW_BEST_MAINS_SCORE"] = "Отображать М+ рейтинг главного персонажа из лучшего сезона"
L["SHOW_BEST_MAINS_SCORE_DESC"] = "Показывать в подсказке лучший счет для М+ подземелий текущего сезона и рейдовый прогресс от основного персонажа. Игроки должны быть зарегистрированы на сайте Raider.IO и выбрать основного персонажа."
L["SHOW_BEST_RUN"] = "Показывать лучшее пройденное М+ подземелье в заголовке"
L["SHOW_BEST_RUN_DESC"] = "Показывает в заголовке подсказки лучшее пройденное М+ подземелье игрока текущего сезона."
L["SHOW_BEST_SEASON"] = "Показывать лучший М+ счет сезона в заголовке"
L["SHOW_BEST_SEASON_DESC"] = "В заголовке всплывающей подсказки отображается лучший результат игрока за сезон в М+ режиме. Если этот счет из прошлого сезона, то этот сезон будет отображаться как часть подсказки в заголовке."
L["SHOW_CHESTS_AS_MEDALS"] = "Показать значки М+ медалей"
L["SHOW_CHESTS_AS_MEDALS_DESC"] = "Показывает полученные М+ ключи в виде значков вместо знаков плюс (+)."
L["SHOW_CLIENT_GUILD_BEST"] = "Отображать лучшие рекорды в окне Эпохальный ключ"
L["SHOW_CLIENT_GUILD_BEST_DESC"] = "Включает отображение 5 лучших проходов Вашей гильдии (за текущий сезон или неделю) на вкладке Эпохальный ключ в окне Подземелий и рейдов."
L["SHOW_CURRENT_SEASON"] = "Показывать текущий результат сезона М+ в заголовке"
L["SHOW_CURRENT_SEASON_DESC"] = "В заголовке всплывающей подсказки отображается счет игрока в текущем сезоне М+."
L["SHOW_IN_FRIENDS"] = "Показывать в списке друзей"
L["SHOW_IN_FRIENDS_DESC"] = "Показывает очки М+ при наведении курсора мыши в списке друзей."
L["SHOW_IN_LFD"] = "Показывать в заранее собранных группах"
L["SHOW_IN_LFD_DESC"] = "Показывает очки М+ при наведении курсора на группу или кандидатов в заранее собранных группах. Для группы отображаются очки лидера."
L["SHOW_IN_SLASH_WHO_RESULTS"] = "Показывать при использовании '/кто'"
L["SHOW_IN_SLASH_WHO_RESULTS_DESC"] = "Показывает очки М+, при использовании '/кто' по имени персонажа."
L["SHOW_IN_WHO_UI"] = "Показывать во вкладке \"Кто\""
L["SHOW_IN_WHO_UI_DESC"] = "Показывает очки М+ при наведении курсора мыши во вкладке \"Кто\"."
L["SHOW_KEYSTONE_INFO"] = "Показывать рекомендуемый счет Raider.IO для ключа"
L["SHOW_KEYSTONE_INFO_DESC"] = "Добавляет рекомендуемый счет Raider.IO в подсказку ключа. Также показывает лучший завершенный проход для каждого игрока в группе."
L["SHOW_LEADER_PROFILE"] = "Включить модификатор для подсказки Raider.IO профиля"
L["SHOW_LEADER_PROFILE_DESC"] = "Зажмите клавишу модификатора (Shift/Ctrl/Alt) для переключения подсказки профиля между Персональным/Лидерским."
L["SHOW_MAINS_SCORE"] = "Показывать рейтинг М+ и прогресс мейна во всплывающих подсказках"
L["SHOW_MAINS_SCORE_DESC"] = "Во всплывающей подсказке отображается результат основного игрока в М+ режиме за текущий сезон и прогресс рейда. Игроки должны быть зарегистрированы на сайте Raider.IO и отметить какого-либо персонажа главным."
L["SHOW_ON_GUILD_ROSTER"] = "Показывать подсказки в гильдии и сообществах"
L["SHOW_ON_GUILD_ROSTER_DESC"] = "Показывает М+ счет, когда Вы наводите мышью на членов гильдии и сообщества."
L["SHOW_ON_PLAYER_UNITS"] = "Показывать при наведении на игроков"
L["SHOW_ON_PLAYER_UNITS_DESC"] = "Показывает очки М+ при наведении курсора мыши на цель, если это игрок."
L["SHOW_RAID_ENCOUNTERS_IN_PROFILE"] = "Отображать рейдовый прогресс в подсказке профиля"
L["SHOW_RAID_ENCOUNTERS_IN_PROFILE_DESC"] = "Включает отображение побежденных рейдовых боссов в подсказке профиля Raider.IO"
L["SHOW_RAIDERIO_BESTRUN_FIRST"] = "(Тестовое) Приоритет отображения лучшего прохода"
L["SHOW_RAIDERIO_BESTRUN_FIRST_DESC"] = "Это экспериментальная функция. В первой строке вместо отображения счета будет отображаться лучший лучший результат игрока."
L["SHOW_RAIDERIO_PROFILE"] = "Показывать подсказку профиля Raider.IO"
L["SHOW_RAIDERIO_PROFILE_DESC"] = "Показать всплывающую подсказку профиля Raider.IO"
L["SHOW_ROLE_ICONS"] = "Показывать значок роли в подсказке"
L["SHOW_ROLE_ICONS_DESC"] = "Если включено, то лучшая роль игрока в М+ будет отображаться в его подсказке."
L["SHOW_SCORE_IN_COMBAT"] = "Показывать очки в бою"
L["SHOW_SCORE_IN_COMBAT_DESC"] = "Отключите, чтобы минимизировать влияние на производительность при наведении на игроков во время боя."
L["SHOW_SCORE_WITH_MODIFIER"] = "Показывать всплывающую подсказку Raider.IO с клавишей-модификатором"
L["SHOW_SCORE_WITH_MODIFIER_DESC"] = "Отключить отображение данных при наведении курсора на игрока, если не нажата клавиша-модификатор."
L["TANK"] = "Танк"
L["TEAM_LF_MPLUS_DEFAULT"] = "Рекрутинг игроков для походов в М+ подземелья"
L["TEAM_LF_MPLUS_WITH_SCORE"] = "Рекрутинг %d+ игроков для походов в М+ подземелья"
L["TIMED_10_RUNS"] = "Пройдено +10-14 вовремя:"
L["TIMED_15_RUNS"] = "Пройдено 15+ вовремя:"
L["TIMED_20_RUNS"] = "Пройдено 20+ вовремя:"
L["TIMED_5_RUNS"] = "Пройдено +5-9 вовремя:"
L["TOOLTIP_PROFILE"] = "Настройки окна с информацией Raider.IO"
L["UNKNOWN_SERVER_FOUND"] = "|cffFFFFFF%s|r обнаружил новый сервер. Пожалуйста, запишите эту информацию |cffFF9999{|r |cffFFFFFF%s|r |cffFF9999,|r |cffFFFFFF%s|r |cffFF9999}|r и сообщите об этом разработчикам. Спасибо!"
L["UNLOCKING_PROFILE_FRAME"] = "Raider.IO: Разблокировать окно М+ профиля."
L["USE_ENGLISH_ABBREVIATION"] = "Включить английские сокращения для названий подземелий"
L["USE_ENGLISH_ABBREVIATION_DESC"] = "Если включено, то аббревиатуры подземелий на текущем языке будут заменены на вариант английского языка."
L["USE_RAIDERIO_CLIENT_LIVE_TRACKING_SETTINGS"] = "Разрешить клиенту Raider.IO управлять журналом боя"
L["USE_RAIDERIO_CLIENT_LIVE_TRACKING_SETTINGS_DESC"] = "Разрешить клиенту Raider.IO (при его наличии) автоматически управлять настройками журнала боя."
L["WARNING_DEBUG_MODE_ENABLE"] = "|cffFFFFFF%s|r Режим отладки включен. Вы можете отключить его, набрав |cffFFFFFF/raiderio debug|r."
L["WARNING_LOCK_POSITION_FRAME_AUTO"] = "Raider.IO: Для начала Вы должны отключить автоматическое позиционирование Raider.IO профиля."
L["WARNING_RWF_MODE_ENABLE"] = "|cffFFFFFF%s|r Включен режим Race World First. Вы можете отключить его, набрав |cffFFFFFF/raiderio rwf|r."
L["WIPE_RWF_MODE_BUTTON"] = "Вайп"
L["WIPE_RWF_MODE_BUTTON_TOOLTIP"] = "Нажмите, чтобы стереть журнал из файла хранилища. Это приведет к перезагрузке Вашего интерфейса."

	ns.L = L
end
