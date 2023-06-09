if GetLocale() ~= "ruRU" then
	return
end
local L

---------------
-- Kargath Bladefist --
---------------
L = DBM:GetModLocalization(1128)

L:SetTimerLocalization({
	timerSweeperCD	= "Следующий Чистильщик арены"
})

L:SetOptionLocalization({
	timerSweeperCD	= DBM_CORE_L.AUTO_TIMER_OPTIONS.next:format(177776)
})

---------------------------
-- Tectus, the Living Mountain --
---------------------------
L = DBM:GetModLocalization(1195)

L:SetMiscLocalization({
	pillarSpawn	= "ВОССТАНЬТЕ, ГОРЫ!"
})

------------------
-- Brackenspore, Walker of the Deep --
------------------
L = DBM:GetModLocalization(1196)

L:SetOptionLocalization({
	InterruptCounter	= "Сбрасывать счетчик Ослабления после",
	Two					= "После двух кастов",
	Three				= "После трех кастов",
	Four				= "После четырех кастов"
})

--------------
-- Twin Ogron --
--------------
L = DBM:GetModLocalization(1148)

L:SetOptionLocalization({
	PhemosSpecial		= "Звуковой обратный отсчет для кулдаунов Фем'а",
	PolSpecial			= "Звуковой обратный отсчет для кулдаунов Пол'а",
	PhemosSpecialVoice	= "Звуковые оповещения для способностей Фем'а, используя выбранный звуковой пакет",
	PolSpecialVoice		= "Звуковые оповещения для способностей Пол'а, используя выбранный звуковой пакет"
})

--------------------
--Koragh --
--------------------
L = DBM:GetModLocalization(1153)

L:SetWarningLocalization({
	specWarnExpelMagicFelFades	= "Скверна спадает через 5 сек. - вернитесь в начало"
})

L:SetOptionLocalization({
	specWarnExpelMagicFelFades	= "Спецпредупреждение о переходе в исходное положение, когда $spell:172895 спадает"
})

L:SetMiscLocalization({
	supressionTarget1	= "Я сокрушу вас!",
	supressionTarget2	= "Молчать!",
	supressionTarget3	= "Тихо!",
	supressionTarget4	= "Я разорву вас на части!"
})

--------------------------
-- Imperator Mar'gok --
--------------------------
L = DBM:GetModLocalization(1197)

L:SetTimerLocalization({
	timerNightTwistedCD	= "След. Поддавшийся ночи верный служитель"
})

L:SetOptionLocalization({
	GazeYellType		= "Тип крика для Взгляд Бездны",
	Countdown			= "Обратный отсчет до спадения",
	Stacks				= "Получаемые стаки",
	timerNightTwistedCD	= "Отсчет времени до след. Поддавшийся ночи верный служитель"
})

L:SetMiscLocalization({
	BrandedYell		= "Клеймо (%d) %dм",
	GazeYell		= "Взгляд спадает через %d",
	GazeYell2		= "Взгляд (%d) на %s",
	PlayerDebuffs	= "Ближайшие к Вспышке"
})

-------------
--  Trash  --
-------------
L = DBM:GetModLocalization("HighmaulTrash")

L:SetGeneralLocalization({
	name	= "Трэш мобы Верховного Молота"
})
