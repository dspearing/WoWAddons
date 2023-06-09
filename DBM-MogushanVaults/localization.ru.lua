if GetLocale() ~= "ruRU" then
	return
end
local L

------------
-- The Stone Guard --
------------
L = DBM:GetModLocalization(679)

L:SetWarningLocalization({
	SpecWarnOverloadSoon		= "Скоро %s!",
	specWarnBreakJasperChains	= "Рвите яшмовые цепи!"
})

L:SetOptionLocalization({
	SpecWarnOverloadSoon		= "Спецпредупреждение перед насыщением",
	specWarnBreakJasperChains	= "Спецпредупреждение, когда можно разорвать $spell:130395",
	InfoFrame					= "Показывать информационное окно с энергией боссов, окаменением игроков и какой босс кастует окаменение"
})

L:SetMiscLocalization({
	Overload	= "%s вот-вот перенасытится!"
})

------------
-- Feng the Accursed --
------------
L = DBM:GetModLocalization(689)

L:SetWarningLocalization({
	WarnPhase			= "Фаза %d",
	specWarnBarrierNow	= "Используйте Преграждающий щит СЕЙЧАС!"
})

L:SetOptionLocalization({
	WarnPhase			= "Объявлять смену фаз",
	specWarnBarrierNow	= "Спецпредупреждение, когда Вам необходимо использовать $spell:115817 (только для Поиска Рейдов)",
	RangeFrame	= DBM_CORE_L.AUTO_RANGE_OPTION_TEXT_SHORT:format("6") .. " во время аркан-фазы",
	SetIconOnWS			= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(116784),
	SetIconOnAR			= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(116417)
})

L:SetMiscLocalization({
	Fire	= "О, превозносимый! Моими руками ты отделишь их плоть от костей!",
	Arcane	= "О, великий мыслитель! Да снизойдет на меня твоя древняя мудрость!",
	Nature	= "О, великий дух! Даруй мне силу земли!",
	Shadow	= "Великие души защитников! Охраняйте меня!"
})

-------------------------------
-- Gara'jal the Spiritbinder --
-------------------------------
L = DBM:GetModLocalization(682)

L:SetOptionLocalization({
	SetIconOnVoodoo	= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(122151)
})

L:SetMiscLocalization({
	Pull	= "Пора умирать!"
})

----------------------
-- The Spirit Kings --
----------------------
L = DBM:GetModLocalization(687)

L:SetWarningLocalization({
	DarknessSoon	= "Щит тьмы через %d сек."
})

L:SetTimerLocalization({
	timerUSRevive		= "Бессмертные тени формируются",
	timerRainOfArrowsCD	= "%s"
})

L:SetOptionLocalization({
	DarknessSoon	= "Производить 5-секундный отсчет для $spell:117697",
	timerUSRevive	= "Отсчет времени до формирования $spell:117506",
	timerRainOfArrowsCD = DBM_CORE_L.AUTO_TIMER_OPTIONS.cd:format(118122),
	RangeFrame			= DBM_CORE_L.AUTO_RANGE_OPTION_TEXT_SHORT:format("8")
})

------------
-- Elegon --
------------
L = DBM:GetModLocalization(726)

L:SetWarningLocalization({
	specWarnDespawnFloor	= "Пол исчезнет через 6 сек.!"
})

L:SetTimerLocalization({
	timerDespawnFloor	= "Пол исчезает!"
})

L:SetOptionLocalization({
	specWarnDespawnFloor	= "Спецпредупреждение перед исчезновением пола",
	timerDespawnFloor		= "Отсчет времени до исчезновения пола",
	SetIconOnDestabilized	= DBM_CORE_L.AUTO_ICONS_OPTION_TARGETS:format(132222)
})

------------
-- Will of the Emperor --
------------
L = DBM:GetModLocalization(677)

L:SetOptionLocalization({
	InfoFrame		= "Показывать информационное окно для игроков с $spell:116525",
	CountOutCombo	= "Отсчитывать количество кастов $journal:5673<br/>Примечание: в настоящее время доступен только женский голос.",
	ArrowOnCombo	= "Показывать стрелку DBM во время $journal:5673<br/>Примечание: подразумевается, что танк стоит перед боссом, а все остальные - позади."
})

L:SetMiscLocalization({
	Pull		= "Машина гудит, возвращаясь к жизни. Спуститесь на нижний уровень!",--Эмоция
	Rage		= "Ярость императора эхом звучит среди холмов.",--Крик
	Strength	= "Сила императора сжимает эти земли в железных тисках.",--Эмоция
	Courage		= "Смелость императора безгранична.",--Эмоция
	Boss		= "Бессмертная армия сокрушит врагов императора."--Эмоция
})
