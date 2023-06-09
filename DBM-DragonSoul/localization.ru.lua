if GetLocale() ~= "ruRU" then return end
local L

-------------
-- Morchok --
-------------
L= DBM:GetModLocalization(311)

L:SetWarningLocalization({
	KohcromWarning	= "%s: %s"
})

L:SetTimerLocalization({
	KohcromCD		= "Кохром повторяет %s"
})

L:SetOptionLocalization({
	KohcromWarning	= "Предупреждать, когда Кохром повторяет заклинания Морхока",
	KohcromCD		= "Отсчет времени до следующего повторения заклинания",
	RangeFrame		= "Показывать окно проверки дистанции (5м) для достижения."
})

L:SetMiscLocalization({
})

---------------------
-- Warlord Zon'ozz --
---------------------
L= DBM:GetModLocalization(324)

L:SetOptionLocalization({
	ShadowYell			= "Кричать, когда на Вас $spell:103434<br/>(героический уровень сложности)",
	CustomRangeFrame	= "Настройки окна проверки дистанции (героический уровень сложности)",
	Never				= "Отключено",
	Normal				= "Обычное",
	DynamicPhase2		= "Фильтрация дебафов (фаза 2)",
	DynamicAlways		= "Фильтрация дебафов (всегда)"
})

L:SetMiscLocalization({
	voidYell	= "Gul'kafh an'qov N'Zoth."--Start translating the yell he does for Void of the Unmaking cast, the latest logs from DS indicate blizz removed the event that detected casts. sigh.
})

-----------------------------
-- Yor'sahj the Unsleeping --
-----------------------------
L= DBM:GetModLocalization(325)

L:SetWarningLocalization({
	warnOozesHit	= "%s поглотил %s"
})

L:SetTimerLocalization({
	timerOozesActive	= "Появление капель крови",
	timerOozesReach		= "Капли достигнут босса"
})

L:SetOptionLocalization({
	warnOozesHit		= "Объявлять какие капли достигли босса",
	timerOozesActive	= "Отсчет времени спавна капель крови",
	timerOozesReach		= "Отсчет времени до достижения каплями босса",
	RangeFrame			= "Окно проверки дистанции (4) для $spell:104898<br/>(Сложность Обычная+)"
})

L:SetMiscLocalization({
	Black			= "|cFF424242черная|r",
	Purple			= "|cFF9932CDтеневая|r",
	Red				= "|cFFFF0404алая|r",
	Green			= "|cFF088A08кислотная|r",
	Blue			= "|cFF0080FFкобальтовая|r",
	Yellow			= "|cFFFFA901светящаяся|r"
})

-----------------------
-- Hagara the Binder --
-----------------------
L= DBM:GetModLocalization(317)

L:SetWarningLocalization({
	WarnPillars				= "%s: осталось %d",
	warnFrostTombCast		= "%s через 8 сек."
})

L:SetTimerLocalization({
	TimerSpecial			= "Первая способность"
})

L:SetOptionLocalization({
	WarnPillars				= "Объявлять сколько $journal:3919 или $journal:4069 осталось",
	TimerSpecial			= "Отсчет времени до первой особой способности",
	RangeFrame				= "Показывать окно проверки дистанции: (3м) для $spell:105269 и<br/>(10м) для $journal:4327",
	AnnounceFrostTombIcons	= "Дублировать рейдовые иконки на целях $spell:104451 в рейд-чат<br/>(Необходимы права лидера или помощника)",
	warnFrostTombCast		= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.cast:format(104448),
	SetIconOnFrostTomb		= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(104451),
	SetIconOnFrostflake		= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(109325),
	SpecialCount			= "Звуковой отсчет для $spell:105256 или $spell:105465",
	SetBubbles				= "Автоматически отключать сообщения в облачках, когда $spell:104451 доступен<br/>(возвращает их в исходное после боя)"
})

L:SetMiscLocalization({
	TombIconSet				= "Ледяная гробница {rt%d} на %s"
})

---------------
-- Ultraxion --
---------------
L= DBM:GetModLocalization(331)

L:SetWarningLocalization({
	specWarnHourofTwilightN		= "%s (%%d)"
})

L:SetTimerLocalization({
	TimerCombatStart	= "Ультраксион приземляется"
})

L:SetOptionLocalization({
	TimerCombatStart	= "Отсчет времени до приземления Ультраксиона",
	ResetHoTCounter		= "Сброс счетчика \"Время сумерек\"",--$spell doesn't work in this function apparently so use typed spellname for now.
	Never				= "Никогда",
	ResetDynamic		= "Сброс на 3/2 (гер./обыч.)",
	Reset3Always		= "Сброс на 3 всегда",
	SpecWarnHoTN		= "Спецпредупреждение за 5 сек до \"Время сумерек\". Если сброс счетчика \"Никогда\", используется правило на 3",
	One					= "1 (т.е. 1 4 7)",
	Two					= "2 (т.е. 2 5)",
	Three				= "3 (т.е. 3 6)"
})

L:SetMiscLocalization({
	Pull				= "Я чувствую приближение Хаоса... Мой разум не в силах этого выдержать!"
})

-------------------------
-- Warmaster Blackhorn --
-------------------------
L= DBM:GetModLocalization(332)

L:SetWarningLocalization({
	SpecWarnElites	= "Сумеречные Элитки!"
})

L:SetTimerLocalization({
	TimerAdd			= "Следующие помощники"
})

L:SetOptionLocalization({
	TimerAdd			= "Отсчет времени до появления следующих помощников",
	SpecWarnElites		= "Спецпредупреждение для новых Сумеречных Элиток",
	SetTextures			= "Автоматически отключать проэцирование текстур на 1 фазе<br/>(возвращает в исходное на 2 фазе)"
})

L:SetMiscLocalization({
	SapperEmote			= "Дракон пикирует на палубу, чтобы сбросить на нее сумеречного сапера!",
	GorionaRetreat			= "Гориона издает полный боли визг и скрывается в клубящихся вокруг облаках."
})

-------------------------
-- Spine of Deathwing  --
-------------------------
L= DBM:GetModLocalization(318)

L:SetWarningLocalization({
	warnSealArmor			= "%s",
	SpecWarnTendril			= "Закрепитесь!"
})

L:SetOptionLocalization({
	warnSealArmor			= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.cast:format(105847),
	SpecWarnTendril			= "Спецпредупреждение, когда на Вас нет дебаффа $spell:109454",
	InfoFrame				= "Показывать информационное окно для игроков без $spell:109454",
	SetIconOnGrip			= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(109459),
	ShowShieldInfo			= "Показывать полосы здоровья для исцеления $spell:105479"
})

L:SetMiscLocalization({
	Pull			= "Смотрите, он разваливается! Оторвите пластины, и у нас появится шанс сбить его!",
	NoDebuff		= "Нет %s",
	PlasmaTarget	= "Жгучая плазма: %s",
	DRoll			= "собирается накрениться",
	DLevels			= "выравнивается"
})

---------------------------
-- Madness of Deathwing  --
---------------------------
L= DBM:GetModLocalization(333)

L:SetOptionLocalization({
	RangeFrame			= "Динамическое окно проверки дистанции, используя статус дебафа<br/>$spell:108649 на героическом уровне сложности",
	SetIconOnParasite	= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(108649)
})

L:SetMiscLocalization({
	Pull				= "У вас НИЧЕГО не вышло. Я РАЗОРВУ ваш мир на куски."
})

-------------
--  Trash  --
-------------
L = DBM:GetModLocalization("DSTrash")

L:SetGeneralLocalization({
	name =	"Трэш мобы Душа Дракона"
})

L:SetWarningLocalization({
	DrakesLeft			= "Осталось Сумеречных агрессоров: %d"
})

L:SetTimerLocalization({
	timerRoleplay		= GUILD_INTEREST_RP,
	TimerDrakes			= "%s",--spellname from mod
})

L:SetOptionLocalization({
	DrakesLeft			= "Объявлять сколько Сумеречных агрессоров осталось",
	TimerDrakes			= "Отсчет времени при применении $spell:109904 Сумеречными агрессорами"
})

L:SetMiscLocalization({
	firstRP				= "Хвала Титанам, они вернулись!",
	UltraxionTrash		= "Рад встрече, Алекстраза. Скоро ты увидишь, над чем я трудился.",
	UltraxionTrashEnded = "Детеныши, эксперименты, шаги к будущему величию. Вы увидите, чего я добился."
})
