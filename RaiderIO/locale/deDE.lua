-- Generated from CurseForge on Wed May  3 07:37:43 UTC 2023
local ns = select(2, ...) ---@type ns @The addon namespace.

if ns:IsSameLocale("deDE") then
	local L = ns.L or ns:NewLocale()

	L.LOCALE_NAME = "deDE"

L["ALLOW_IN_LFD"] = "Im Dungeonbrowser erlauben"
L["ALLOW_IN_LFD_DESC"] = "Rechtsklick auf Gruppen oder Kandidaten im Dungeonbrowser, um den Raider.IO Profil-Link zu kopieren."
L["ALLOW_ON_PLAYER_UNITS"] = "Am Rahmen bei Spielereinheit erlauben"
L["ALLOW_ON_PLAYER_UNITS_DESC"] = "Rechtsklick auf Rahmen bei Spielereinheit, um den Raider.IO Profil-Link zu kopieren."
L["API_DEPRECATED"] = "|cffFF0000Warnung!|r Das Addon |cffFFFFFF%s|r verwendet eine veraltete Funktion RaiderIO.%s. Diese Funktion wird in zukünftigen Versionen entfernt. Bitte ermutige den Autor von %s, sein Addon zu aktualisieren. Paket aufrufen: %s"
L["API_DEPRECATED_UNKNOWN_ADDON"] = "<Unbekanntes Addon>"
L["API_DEPRECATED_UNKNOWN_FILE"] = "<Unbekannte Addon Datei>"
L["API_DEPRECATED_WITH"] = "|cffFF0000Warnung!|r Das AddOn |cffFFFFFF%s|r verwendet eine veraltete Funktion RaiderIO.%s. Diese Funktion wird in zukünftigen Versionen entfernt. Bitte ermutige den Autor von %s auf die neue API RaiderIO.%s zu aktualisieren. Paket aufrufen: %s"
L["API_INVALID_DATABASE"] = "|cffFF0000Warnung!|r Ungültige RaiderIO Datenbank in |cffffffff%s|r entdeckt. Bitte aktualisiere alle Regionen und Fraktionen im RaiderIO Client oder installiere das Addon manuell neu."
L["AUTO_COMBATLOG"] = "Kampfprotokoll in Schlachtzügen und Dungeons automatisch aktivieren"
L["AUTO_COMBATLOG_DESC"] = "Schaltet die Kampfprotokollierung automatisch ein oder aus, wenn du unterstützte Schlachtzüge und Dungeons betrittst und verlässt."
L["BEST_FOR_DUNGEON"] = "Bester Durchlauf bei"
L["BEST_RUN"] = "Bester Durchlauf"
L["BEST_SCORE"] = "Beste M+ Wertung (%s)"
L["CANCEL"] = "Beenden"
L["CHANGES_REQUIRES_UI_RELOAD"] = [=[Deine Änderungen wurden gespeichert, du musst jedoch die Benutzeroberfläche neu laden, damit diese wirksam werden.

Möchtest du das jetzt tun?]=]
L["CHARACTER_LF_GUILD_MPLUS"] = "Auf der Suche nach einer Mythisch+ Gilde"
L["CHARACTER_LF_GUILD_MPLUS_WITH_SCORE"] = "Auf der Suche nach einer Mythisch+ Gilde"
L["CHARACTER_LF_GUILD_PVP"] = "Auf der Suche nach einer PvP-Gilde"
L["CHARACTER_LF_GUILD_RAID_DEFAULT"] = "Auf der Suche nach einer Schlachtzug Gilde"
L["CHARACTER_LF_GUILD_RAID_HEROIC"] = "Auf der Suche nach einer Schlachtzug Gilde heroisch"
L["CHARACTER_LF_GUILD_RAID_MYTHIC"] = "Auf der Suche nach einer Schlachtzug Gilde mythisch"
L["CHARACTER_LF_GUILD_RAID_NORMAL"] = "Auf der Suche nach einer Schlachtzug Gilde normal"
L["CHARACTER_LF_GUILD_SOCIAL"] = "Auf der Suche nach einer Soziale Gilde"
L["CHARACTER_LF_TEAM_MPLUS_DEFAULT"] = "Auf der Suche nach einer Mythisch+ Gruppe"
L["CHARACTER_LF_TEAM_MPLUS_WITH_SCORE"] = "Auf der Suche nach einer %d+ Mythisch+ Gruppe"
L["CHECKBOX_DISPLAY_WEEKLY"] = "Wöchentlich anzeigen"
L["CHOOSE_HEADLINE_HEADER"] = "Mythisch+ Tooltip Überschrift"
L["CONFIG_WHERE_TO_SHOW_TOOLTIPS"] = "Wo soll der Mythisch+ und Schlachtzugfortschritt angezeigt werden"
L["CONFIRM"] = "Bestätigen"
L["COPY_RAIDERIO_PROFILE_URL"] = "Kopiere Raider.IO Link"
L["COPY_RAIDERIO_RECRUITMENT_URL"] = "Rekrutierungs-URL kopieren"
L["COPY_RAIDERIO_URL"] = "Kopiere Raider.IO Link"
L["CURRENT_MAINS_SCORE"] = "Aktuelle Hauptcharakter M+ Wertung"
L["CURRENT_SCORE"] = "Aktuelle M+ Wertung"
L["DB_MODULES"] = "Datenbankmodule"
L["DB_MODULES_HEADER_MYTHIC_PLUS"] = "Mythisch+"
L["DB_MODULES_HEADER_RAIDING"] = "Schlachtzug"
L["DB_MODULES_HEADER_RECRUITMENT"] = "Rekrutierung"
L["DISABLE_DEBUG_MODE_RELOAD"] = "Du deaktivierst den Debug-Modus. Klicke auf Bestätigen, um das Interface neu zu laden."
L["DISABLE_RWF_MODE_BUTTON"] = "Deaktivieren"
L["DISABLE_RWF_MODE_BUTTON_TOOLTIP"] = "Klicke hier, um den Wettrennen Welt 1.-Modus zu deaktivieren. Dadurch wird deine Benutzeroberfläche neu geladen."
L["DISABLE_RWF_MODE_RELOAD"] = "Du deaktivierst den Wettrennen Welt 1.-Modus. Durch Klicken auf Bestätigung wird deine Benutzeroberfläche neu geladen."
L["DPS"] = "DPS"
L["DUNGEON_SHORT_NAME_AA"] = "Akademie von Algeth'ar"
L["DUNGEON_SHORT_NAME_AV"] = "Azurblaue Gewölbe"
L["DUNGEON_SHORT_NAME_COS"] = "Hof der Sterne"
L["DUNGEON_SHORT_NAME_DOS"] = "Die Andre Seite"
L["DUNGEON_SHORT_NAME_GD"] = "Das Grimmgleisdepot"
L["DUNGEON_SHORT_NAME_GMBT"] = "Tazavesh So'leahs Schachzug"
L["DUNGEON_SHORT_NAME_HOA"] = "Hallen der Sühne"
L["DUNGEON_SHORT_NAME_HOV"] = "Hallen der Tapferkeit"
L["DUNGEON_SHORT_NAME_ID"] = "Die Eisendocks"
L["DUNGEON_SHORT_NAME_LOWR"] = "Untere Rückkehr nach Karazhan"
L["DUNGEON_SHORT_NAME_MISTS"] = "Nebel von Tirna Scithe"
L["DUNGEON_SHORT_NAME_NO"] = "Angriff der Nokhud"
L["DUNGEON_SHORT_NAME_NW"] = "Nekrotische Schneise"
L["DUNGEON_SHORT_NAME_PF"] = "Seuchensturz"
L["DUNGEON_SHORT_NAME_RLP"] = "Rubinlebensbecken"
L["DUNGEON_SHORT_NAME_SBG"] = "Schattenmondgrabstätte"
L["DUNGEON_SHORT_NAME_SD"] = "Blutigen Tiefen"
L["DUNGEON_SHORT_NAME_SOA"] = "Spitzen des Aufstiegs"
L["DUNGEON_SHORT_NAME_STRT"] = "Tazavesh Wundersame Straßen"
L["DUNGEON_SHORT_NAME_TJS"] = "Tempel der Jadeschlange"
L["DUNGEON_SHORT_NAME_TOP"] = "Theater der Schmerzen"
L["DUNGEON_SHORT_NAME_UPPR"] = "Obere Rückkehr nach Karazhan"
L["DUNGEON_SHORT_NAME_VOTW"] = "Verlies der Wächterinnen"
L["DUNGEON_SHORT_NAME_WORK"] = "Operation Mechagon - Werkstatt"
L["DUNGEON_SHORT_NAME_YARD"] = "Operation Mechagon - Schrottplatz"
L["ENABLE_AUTO_FRAME_POSITION"] = "Positioniert den Raider.IO Profilrahmen automatisch"
L["ENABLE_AUTO_FRAME_POSITION_DESC"] = "Wenn du dies aktivierst, wird der M+ Profile-Tooltip neben dem Dungeonbrowserrahmen oder dem Spieler-Tooltip angezeigt."
L["ENABLE_DEBUG_MODE_RELOAD"] = "Du aktivierst den Debug-Modus. Dies ist nur zu Test- und Entwicklungszwecken gedacht und führt zu einer zusätzlichen Speichernutzung. Klicke auf Bestätigen, um das Interface neu zu laden."
L["ENABLE_LOCK_PROFILE_FRAME"] = "Sperre Raider.IO Profilrahmen"
L["ENABLE_LOCK_PROFILE_FRAME_DESC"] = "Verhindert, dass der M+ Profilrahmen gezogen wird. Dies hat keine Auswirkung, wenn der M+ Profilrahmen so eingestellt ist, dass er automatisch positioniert wird."
L["ENABLE_NO_SCORE_COLORS"] = "Deaktiviert alle Mythisch+ Wertungsfarben"
L["ENABLE_NO_SCORE_COLORS_DESC"] = "Deaktiviert die Färbung von Wertungen. Alle Wertungen werden weiß angezeigt."
L["ENABLE_RAIDERIO_CLIENT_ENHANCEMENTS"] = "Erlaube Raider.IO Client Verbesserungen"
L["ENABLE_RAIDERIO_CLIENT_ENHANCEMENTS_DESC"] = "Wenn du dies aktivierst, werden detaillierte Raider.IO-Profildaten angezeigt, die vom Raider.IO-Client für deine beanspruchten Charaktere heruntergeladen wurden."
L["ENABLE_RWF_MODE_BUTTON"] = "Aktivieren"
L["ENABLE_RWF_MODE_BUTTON_TOOLTIP"] = "Klicke hier, um den Wettrennen Welt 1.-Modus zu aktivieren. Dadurch wird deine Benutzeroberfläche neu geladen."
L["ENABLE_RWF_MODE_RELOAD"] = "Du aktivierst den Wettrennen Welt 1.-Modus. Dies ist für den Einsatz mit dem Mythisch Wettrennen Welt 1. bestimmt und sollte nur für diesen Zweck nur zusammen mit dem RAIDER.IO-Client für das Hochladen von Daten verwendet werden. Durch Klicken auf Bestätigung wird deine Benutzeroberfläche neu geladen."
L["ENABLE_SIMPLE_SCORE_COLORS"] = "Verwende einfache Mythisch+ Wertungsfarben"
L["ENABLE_SIMPLE_SCORE_COLORS_DESC"] = "Zeigt nur Wertungen mit Standardfarben in Gegenstandsqualität an. Dies kann es Personen mit Farbsehschwächen erleichtern, Bewertungsstufen zu unterscheiden."
L["EXPORTJSON_COPY_TEXT"] = "Kopiere folgendes und füge es an einer beliebigen Stelle in |cff00C8FFhttps://raider.io|r ein, um alle Spieler nachzuschlagen."
L["GENERAL_TOOLTIP_OPTIONS"] = "Allgemeine Tooltip-Optionen"
L["GUILD_BEST_SEASON"] = "Gilde: Saison Bester"
L["GUILD_BEST_TITLE"] = "Gilde: Rekorde"
L["GUILD_BEST_WEEKLY"] = "Gilde: Wöchentlicher Bester"
L["GUILD_LF_MPLUS_DEFAULT"] = "Rekrutierung von Mythische+ Spielern"
L["GUILD_LF_MPLUS_WITH_SCORE"] = "Rekrutierung von %d+ Mythische+ Spielern"
L["GUILD_LF_PVP"] = "Rekrutierung von PvP-Spielern"
L["GUILD_LF_RAID_DEFAULT"] = "Rekrutierung von Schlachtzüglern"
L["GUILD_LF_RAID_HEROIC"] = "Rekrutierung von heroischen Schlachtzüglern"
L["GUILD_LF_RAID_MYTHIC"] = "Rekrutierung von mythischen Schlachtzüglern"
L["GUILD_LF_RAID_NORMAL"] = "Rekrutierung von normalen Schlachtzüglern"
L["GUILD_LF_SOCIAL"] = "Rekrutierung sozialer Spieler"
L["HEALER"] = "Heiler"
L["HIDE_OWN_PROFILE"] = "Persönlichen Raider.IO Profil-Tooltip ausblenden"
L["HIDE_OWN_PROFILE_DESC"] = "Wenn diese Option aktiviert ist, wird dein eigener Raider.IO Profil-Tooltip nicht angezeigt, möglicherweise jedoch der anderen Spieler, sofern diese über einen verfügen."
L["INVERSE_PROFILE_MODIFIER"] = "Invertiere Raider.IO Profil Tooltip Modifikator"
L["INVERSE_PROFILE_MODIFIER_DESC"] = "Wenn du dies aktivierst, wird das Verhalten des Raider.IO Profil Tooltip Modifikator (Shift / Strg / Alt) umgekehrt: Halten, um die Ansicht zwischen Persönlich/Anführer-Profil oder Anführer/Persönlich-Profil umzuschalten."
L["LOCKING_PROFILE_FRAME"] = "Raider.IO: Sperren des M+ Profilrahmens"
L["MAINS_BEST_SCORE_BEST_SEASON"] = "Hauptcharakter beste M+ Wertung (%s)"
L["MAINS_RAID_PROGRESS"] = "Hauptcharakter Fortschritt"
L["MAINS_SCORE"] = "Hauptcharakter M+ Wertung"
L["MODULE_AMERICAS"] = "Amerika"
L["MODULE_EUROPE"] = "Europa"
L["MODULE_KOREA"] = "Korea"
L["MODULE_TAIWAN"] = "Taiwan"
L["MY_PROFILE_TITLE"] = "Raider.IO Profil"
L["MYTHIC_PLUS_DB_MODULES"] = "Mythisch+ Datenbankmodule"
L["MYTHIC_PLUS_SCORES"] = "Mythisch+ Wertung Tooltips"
L["NO_GUILD_RECORD"] = "Keine Gildenrekorde"
L["OPEN_CONFIG"] = "Konfiguration öffnen"
L["OUT_OF_SYNC_DATABASE_S"] = "|cffFFFFFF%s|r hat keine synchronisierte Fraktionsdaten der Horde/Allianz. Bitte aktualisiere die Raider.IO Client-Einstellungen, um beide Fraktionen zu synchronisieren."
L["OUTDATED_DATABASE"] = "Wertungen sind %d Tag(e) alt"
L["OUTDATED_DATABASE_HOURS"] = "Wertungen sind %d Stunde(n) alt"
L["OUTDATED_DOWNLOAD_LINK"] = "Herunterladen: %s"
L["OUTDATED_EXPIRED_ALERT"] = "|cffFFFFFF%s|r verwendet abgelaufene Daten. Bitte aktualisiere sie jetzt, um die genauesten Daten zu sehen: |cffFFFFFF%s|r"
L["OUTDATED_EXPIRED_TITLE"] = "Raider.IO-Daten sind abgelaufen"
L["OUTDATED_EXPIRES_IN_DAYS"] = "Raider.IO-Daten laufen in %d Tagen ab"
L["OUTDATED_EXPIRES_IN_HOURS"] = "Raider.IO-Daten laufen in %d Stunden ab"
L["OUTDATED_EXPIRES_IN_MINUTES"] = "Raider.IO-Daten verfallen in %d Minuten"
L["OUTDATED_PROFILE_TOOLTIP_MESSAGE"] = "Bitte aktualisiere jetzt dein Addon, um die genauesten Daten zu sehen. Die Spieler arbeiten hart daran, ihre Fortschritte zu verbessern und die Anzeige sehr alter Daten ist für alle ein schlechter Dienst. Mit dem Raider.IO-Client kannst du deine Daten automatisch synchronisieren."
L["PREVIOUS_SCORE"] = "Vorige M+ Wertung (%s)"
L["PROFILE_BEST_RUNS"] = "Beste Durchläufe aller Dungeons"
L["PROFILE_TOOLTIP_ANCHOR_TOOLTIP"] = "Sperrt den Raider.IO-Profilrahmen oder aktiviert die automatische Positionierung, um diesen Anker auszublenden."
L["PROVIDER_NOT_LOADED"] = "|cffFF0000Warnung:|r |cffFFFFFF%s|r konnte keine Daten für die aktuelle Fraktion finden. Bitte überprüfe die |cffFFFFFF/raiderio|r Einstellungen und aktiviere die Tooltip-Daten für |cffFFFFFF%s|r."
L["RAID_BOSS_CN_1"] = "Schrillschwinge"
L["RAID_BOSS_CN_10"] = "Graf Denathrius"
L["RAID_BOSS_CN_2"] = "Jäger Altimor"
L["RAID_BOSS_CN_3"] = "Hungernder Zerstörer"
L["RAID_BOSS_CN_4"] = "Konstrukteur Xy'Mox"
L["RAID_BOSS_CN_5"] = "Rettung des Sonnenkönigs"
L["RAID_BOSS_CN_6"] = "Lady Inerva Dunkelader"
L["RAID_BOSS_CN_7"] = "Rat des Blutes"
L["RAID_BOSS_CN_8"] = "Schlickfaust"
L["RAID_BOSS_CN_9"] = "Generäle der Steinlegion"
L["RAID_BOSS_FCN_1"] = "Schrillschwinge"
L["RAID_BOSS_FCN_10"] = "Graf Denathrius"
L["RAID_BOSS_FCN_2"] = "Jäger Altimor"
L["RAID_BOSS_FCN_3"] = "Hungernder Zerstörer"
L["RAID_BOSS_FCN_4"] = "Konstrukteur Xy'Mox"
L["RAID_BOSS_FCN_5"] = "Rettung des Sonnenkönigs"
L["RAID_BOSS_FCN_6"] = "Lady Inerva Dunkelader"
L["RAID_BOSS_FCN_7"] = "Rat des Blutes"
L["RAID_BOSS_FCN_8"] = "Schlickfaust"
L["RAID_BOSS_FCN_9"] = "Generäle der Steinlegion"
L["RAID_BOSS_FSFO_1"] = "Aufmerksamer Wächter"
L["RAID_BOSS_FSFO_10"] = "Rygelon"
L["RAID_BOSS_FSFO_11"] = "Der Kerkermeister"
L["RAID_BOSS_FSFO_2"] = "Skolex, der unersättliche Räuber"
L["RAID_BOSS_FSFO_3"] = "Konstrukteur Xy'mox"
L["RAID_BOSS_FSFO_4"] = "Dausegne, das gefallene Orakel"
L["RAID_BOSS_FSFO_5"] = "Prototypenpantheon"
L["RAID_BOSS_FSFO_6"] = "Lihuvim, der oberste Architekt"
L["RAID_BOSS_FSFO_7"] = "Halondrus der Rückgewinner"
L["RAID_BOSS_FSFO_8"] = "Anduin Wrynn"
L["RAID_BOSS_FSFO_9"] = "Lords des Schreckens"
L["RAID_BOSS_FSOD_1"] = "Der Tarragrue"
L["RAID_BOSS_FSOD_10"] = "Sylvanas Windläufer"
L["RAID_BOSS_FSOD_2"] = "Das Auge des Kerkermeisters"
L["RAID_BOSS_FSOD_3"] = "Die Neun"
L["RAID_BOSS_FSOD_4"] = "Überrest von Ner'zhul"
L["RAID_BOSS_FSOD_5"] = "Seelenfetzer Dormazain"
L["RAID_BOSS_FSOD_6"] = "Leidensschmied Raznal"
L["RAID_BOSS_FSOD_7"] = "Wächter der Ersten"
L["RAID_BOSS_FSOD_8"] = "Schicksalsschreiber Roh-Kalo"
L["RAID_BOSS_FSOD_9"] = "Kel'Thuzad"
L["RAID_BOSS_SFO_1"] = "Aufmerksamer Wächter"
L["RAID_BOSS_SFO_10"] = "Rygelon"
L["RAID_BOSS_SFO_11"] = "Der Kerkermeister"
L["RAID_BOSS_SFO_2"] = "Skolex, der unersättliche Räuber"
L["RAID_BOSS_SFO_3"] = "Konstrukteur Xy'mox"
L["RAID_BOSS_SFO_4"] = "Dausegne, das gefallene Orakel"
L["RAID_BOSS_SFO_5"] = "Prototypenpantheon"
L["RAID_BOSS_SFO_6"] = "Lihuvim, der oberste Architekt"
L["RAID_BOSS_SFO_7"] = "Halondrus der Rückgewinner"
L["RAID_BOSS_SFO_8"] = "Anduin Wrynn"
L["RAID_BOSS_SFO_9"] = "Lords des Schreckens"
L["RAID_BOSS_SOD_1"] = "Der Tarragrue"
L["RAID_BOSS_SOD_10"] = "Sylvanas Windläufer"
L["RAID_BOSS_SOD_2"] = "Das Auge des Kerkermeisters"
L["RAID_BOSS_SOD_3"] = "Die Neun"
L["RAID_BOSS_SOD_4"] = "Überrest von Ner'zhul"
L["RAID_BOSS_SOD_5"] = "Seelenfetzer Dormazain"
L["RAID_BOSS_SOD_6"] = "Leidensschmied Raznal"
L["RAID_BOSS_SOD_7"] = "Wächter der Ersten"
L["RAID_BOSS_SOD_8"] = "Schicksalsschreiber Roh-Kalo"
L["RAID_BOSS_SOD_9"] = "Kel'Thuzad"
L["RAID_BOSS_VOTI_1"] = "Eranog"
L["RAID_BOSS_VOTI_2"] = "Terros"
L["RAID_BOSS_VOTI_3"] = "Der Primalistenrat"
L["RAID_BOSS_VOTI_4"] = "Sennarth, der kalte Atem"
L["RAID_BOSS_VOTI_5"] = "Dathea, die Aufgestiegene"
L["RAID_BOSS_VOTI_6"] = "Kurog Grimmtotem"
L["RAID_BOSS_VOTI_7"] = "Bruthüterin Diurna"
L["RAID_BOSS_VOTI_8"] = "Raszageth die Sturmfresserin"
L["RAID_DIFFICULTY_NAME_HEROIC"] = "Heroisch"
L["RAID_DIFFICULTY_NAME_MYTHIC"] = "Mythisch"
L["RAID_DIFFICULTY_NAME_NORMAL"] = "Normal"
L["RAID_DIFFICULTY_SUFFIX_HEROIC"] = "HC"
L["RAID_DIFFICULTY_SUFFIX_MYTHIC"] = "M"
L["RAID_DIFFICULTY_SUFFIX_NORMAL"] = "N"
L["RAID_ENCOUNTERS_DEFEATED_TITLE"] = "Schlachtzugsbegegnungen besiegt"
L["RAIDERIO_AVERAGE_PLAYER_SCORE"] = "Durchschn. Wertungen für Zeitliche +%s"
L["RAIDERIO_BEST_RUN"] = "Raider.IO M+ Bester Durchlauf"
L["RAIDERIO_CLIENT_CUSTOMIZATION"] = "Raider.IO Client-Anpassung"
L["RAIDERIO_LIVE_TRACKING"] = "Raider.IO Live Verfolgung"
L["RAIDERIO_MP_BASE_SCORE"] = "Raider.IO M+ Basiswertung"
L["RAIDERIO_MP_BEST_SCORE"] = "Raider.IO M+ Wertung (%s)"
L["RAIDERIO_MP_SCORE"] = "Raider.IO M+ Wertung"
L["RAIDERIO_MYTHIC_OPTIONS"] = "Raider.IO Addon Optionen"
L["RAIDING_DATA_HEADER"] = "Raider.IO Schlachtzugsfortschritt"
L["RAIDING_DB_MODULES"] = "Schlachtzugsdatenbankmodule"
L["RECRUITMENT_DB_MODULES"] = "Rekrutierungsdatenbankmodule"
L["RELOAD_LATER"] = "Ich werde später neu laden"
L["RELOAD_NOW"] = "Jetzt neu laden"
L["RELOAD_RWF_MODE_BUTTON"] = "Speichern"
L["RELOAD_RWF_MODE_BUTTON_TOOLTIP"] = "Klicke hier, um das Protokoll in die Speicherdatei zu speichern. Dadurch wird deine Benutzeroberfläche neu geladen."
L["RWF_MINIBUTTON_TOOLTIP"] = "Klicke mit der linken Maustaste, wann immer es anstehende Beute gibt. Dadurch wird deine Benutzeroberfläche neu geladen. Klicke mit der rechten Maustaste, um das Wettrennen Welt 1.-Fenster zu öffnen."
L["RWF_SUBTITLE_LOGGING_FILTERED_LOOT"] = "(Protokollierung relevanter Gegenstände)"
L["RWF_SUBTITLE_LOGGING_LOOT"] = "(Protokollierung Beute)"
L["RWF_TITLE"] = "|cffFFFFFFRaider.IO|r Wettrennen Welt 1."
L["SEARCH_NAME_LABEL"] = "Name"
L["SEARCH_REALM_LABEL"] = "Realm"
L["SEARCH_REGION_LABEL"] = "Region"
L["SEASON_LABEL_1"] = "Saison 1"
L["SEASON_LABEL_2"] = "Saison 2"
L["SEASON_LABEL_3"] = "Saison 3"
L["SEASON_LABEL_4"] = "Saison 4"
L["SHOW_AVERAGE_PLAYER_SCORE_INFO"] = "Zeigt durchschnittliche Wertungen für zeitliche Durchläufe an"
L["SHOW_AVERAGE_PLAYER_SCORE_INFO_DESC"] = "Zeigt die durchschnittliche Raider.IO Wertung an, welche von Mitspielern in zeitlichen Durchgängen angezeigt wird. Dies ist in den Schlüsselstein Tooltips und Spieler Tooltips im Dungeonbrowser sichtbar."
L["SHOW_BEST_MAINS_SCORE"] = "Zeigt Hauptcharakter Mythisch+ Wertung von der besten Saison an"
L["SHOW_BEST_MAINS_SCORE_DESC"] = "Zeigt die beste Hauptcharakter Saison Mythisch+ Wertung und den Schlachtzugsfortschritt des Spielers im Tooltipp an. Spieler müssen sich auf Raider.IO registriert haben und einen Charakter als Hauptcharakter gesetzt haben."
L["SHOW_BEST_RUN"] = "Zeigt bester Mythisch+ Durchlauf als Überschrift an"
L["SHOW_BEST_RUN_DESC"] = "Zeigt den besten Mythisch+ Durchlauf des Spielers aus der aktuellen Saison als Tooltip-Überschrift an."
L["SHOW_BEST_SEASON"] = "Zeigt beste Mythisch+ Saison Wertung als Überschrift an"
L["SHOW_BEST_SEASON_DESC"] = "Zeigt die beste Mythisch+ Saison Wertung des Spielers als Tooltip-Überschrift an. Wenn das Ergebnis aus einer früheren Saison stammt, wird die Saison als Teil der Tooltip-Überschrift angezeigt."
L["SHOW_CHESTS_AS_MEDALS"] = "Mythisch+ Medaillen-Symbole anzeigen"
L["SHOW_CHESTS_AS_MEDALS_DESC"] = "Zeigt Schlüsselstein-Medaillen, die als Symbole verdient wurden, anstatt der Plus-Zeichen (+)."
L["SHOW_CLIENT_GUILD_BEST"] = "Zeigt beste Gildenrekorde im Dungeonbrowser bei Mythischer Schlüsselstein an"
L["SHOW_CLIENT_GUILD_BEST_DESC"] = "Wenn du dies aktivierst, werden die Top 5-Durchäufe deiner Gilde (Saison oder Wöchentlich) auf der Registerkarte Mythischer Schlüsselstein im Dungeonbrowser-Fenster angezeigt."
L["SHOW_CURRENT_SEASON"] = "Zeigt aktuelle Mythisch+ Saison Wertung als Überschrift an"
L["SHOW_CURRENT_SEASON_DESC"] = "Zeigt die aktuelle Mythisch+ Saison Wertung des Spielers als Tooltip-Überschrift an."
L["SHOW_IN_FRIENDS"] = "Zeigt Tooltips in der Freundesliste an"
L["SHOW_IN_FRIENDS_DESC"] = "Zeigt Mythisch+ Wertung an, wenn du mit der Maus über deine Freunde fährst."
L["SHOW_IN_LFD"] = "Zeigt Tooltips im Dungeonbrowser an"
L["SHOW_IN_LFD_DESC"] = "Zeigt Mythisch+ Wertung an, wenn du mit der Maus über Gruppen oder Kanditaten fährst."
L["SHOW_IN_SLASH_WHO_RESULTS"] = "Zeigt Tooltips bei \"/wer\" Ergebnissen an"
L["SHOW_IN_SLASH_WHO_RESULTS_DESC"] = "Zeigt Mythisch+ Wertung an, wenn du nach jemand bestimmten mit \"/wer\" suchst."
L["SHOW_IN_WHO_UI"] = "Zeigt Tooltips im \"Wer Liste\"-Fenster an"
L["SHOW_IN_WHO_UI_DESC"] = "Zeigt Mythisch+ Wertung an, wenn du mit der Maus über Ergebnissen in der \"Wer-Liste\" fährst."
L["SHOW_KEYSTONE_INFO"] = "Zeigt Basis Raider.IO Wertung für Schlüsselsteine an"
L["SHOW_KEYSTONE_INFO_DESC"] = "Fügt Basis Raider.IO Wertung für Schlüsselsteine in deinen Tooltips hinzu. Zeigt außerdem den besten Durchlauf des Dungeons für jeden Spieler in deiner Gruppe an."
L["SHOW_LEADER_PROFILE"] = "Erlaube Raider.IO Profil Tooltip Modifikator"
L["SHOW_LEADER_PROFILE_DESC"] = "Halte einen Modifikator (Umschalt / Strg / Alt) gedrückt, um den Profil-Tooltip zwischen Persönlichem / Haupt-Profil umzuschalten."
L["SHOW_MAINS_SCORE"] = "Zeigt Hauptcharakter Mythisch+ Wertung und Fortschritt in den Tooltips an"
L["SHOW_MAINS_SCORE_DESC"] = "Zeigt die Wertung vom Hauptcharakters des Spielers für die aktuelle Saison an. Die Spieler müssen sich auf Raider.IO registriert haben und einen Charakter als Hauptcharakter gesetzt haben."
L["SHOW_ON_GUILD_ROSTER"] = "Zeigt Tooltips an Gilden- und Community-Fenster an"
L["SHOW_ON_GUILD_ROSTER_DESC"] = "Zeigt Mythisch+ Wertung an, wenn du mit der Maus über Gilden- und Community-Mitglieder fährst."
L["SHOW_ON_PLAYER_UNITS"] = "Zeigt Tooltips bei Spielereinheit an"
L["SHOW_ON_PLAYER_UNITS_DESC"] = "Zeigt Mythisch+ Wertung an, wenn du mit der Maus über Spieler-Einheiten fährst."
L["SHOW_RAID_ENCOUNTERS_IN_PROFILE"] = "Zeigt Schlachtzugsbegegnungen im Profil-Tooltip an"
L["SHOW_RAID_ENCOUNTERS_IN_PROFILE_DESC"] = "Wenn diese Option aktiviert ist, wird der Schlachtzugsbegegnungs-Fortschritt in den Raider.IO Profil-Tooltips angezeigt"
L["SHOW_RAIDERIO_BESTRUN_FIRST"] = "(Experimentell) Priorisiert das Anzeigen von Raider.IO Bester Lauf"
L["SHOW_RAIDERIO_BESTRUN_FIRST_DESC"] = "Dies ist eine experimentelle Funktion. Anstatt die Raider.IO Wertung als erste Zeile anzuzeigen, zeigt es den besten Lauf des Spielers."
L["SHOW_RAIDERIO_PROFILE"] = "Zeigt Raider.IO Profil Tooltip an"
L["SHOW_RAIDERIO_PROFILE_DESC"] = "Zeigt den Raider.IO Profil Tooltip an"
L["SHOW_ROLE_ICONS"] = "Rollensymbole in Tooltips anzeigen"
L["SHOW_ROLE_ICONS_DESC"] = "Wenn diese Option aktiviert ist, werden die Hauptrollen des Spielers in Mythisch+ in den Tooltips angezeigt."
L["SHOW_SCORE_IN_COMBAT"] = "Zeigt Raider.IO Tooltip-Info im Kampf an"
L["SHOW_SCORE_IN_COMBAT_DESC"] = "Deaktiviere diese Option, um die Auswirkungen auf die Leistung zu minimieren, während du Spieler während des Kampfes mit \"mausüber\" inspizierst"
L["SHOW_SCORE_WITH_MODIFIER"] = "Zeigt Raider.IO Tooltip Info mit Modifikator an"
L["SHOW_SCORE_WITH_MODIFIER_DESC"] = "Deaktiviert die Anzeige von Daten, wenn du mit der Maus über Spieler fährst, es sei denn, eine Modifikator-Taste wird gedrückt gehalten."
L["TANK"] = "Tank"
L["TEAM_LF_MPLUS_DEFAULT"] = "Rekrutierung von Mythische+ Spielern"
L["TEAM_LF_MPLUS_WITH_SCORE"] = "Rekrutierung von %d+ Mythische+ Spielern"
L["TIMED_10_RUNS"] = "Zeitliche +10-14 Durchläufe"
L["TIMED_15_RUNS"] = "Zeitliche +15 Durchläufe"
L["TIMED_20_RUNS"] = "Zeitliche +20 Durchläufe"
L["TIMED_5_RUNS"] = "Zeitliche +5-9 Durchläufe"
L["TOOLTIP_PROFILE"] = "Raider.IO Profil Tooltip Anpassungen"
L["UNKNOWN_SERVER_FOUND"] = "|cffFFFFFF%s|r hat einen neuen Server gefunden. Bitte schreibe folgende information auf: |cffFF9999{|r |cffFFFFFF%s|r |cffFF9999,|r |cffFFFFFF%s|r |cffFF9999}|r . Danach schicke diese den Entwicklern. Danke!"
L["UNLOCKING_PROFILE_FRAME"] = "Raider.IO: Entsperren des M+ Profilrahmens."
L["USE_ENGLISH_ABBREVIATION"] = "Englische Abkürzungen für Dungeons erzwingen"
L["USE_ENGLISH_ABBREVIATION_DESC"] = "Wenn diese Option aktiviert ist, werden die für Dungeons verwendeten Abkürzungen überschrieben um die englische Version zu sein, anstatt deiner aktuellen Sprache."
L["USE_RAIDERIO_CLIENT_LIVE_TRACKING_SETTINGS"] = "Erlaube dem Raider.IO-Client, das Kampfprotokoll zu steuern"
L["USE_RAIDERIO_CLIENT_LIVE_TRACKING_SETTINGS_DESC"] = "Erlaube dem Raider.IO-Client (falls vorhanden), deine Einstellungen für die Kampfprotokollierung automatisch zu steuern."
L["WARNING_DEBUG_MODE_ENABLE"] = "|cffFFFFFF%s|r Der Debug-Modus ist aktiviert. Du kannst ihn deaktivieren, indem du |cffFFFFFF/raiderio debug|r eingibst."
L["WARNING_LOCK_POSITION_FRAME_AUTO"] = "Raider.IO: Du solltest zuerst die automatische Positionierung für das Raider.IO Profil deaktivieren."
L["WARNING_RWF_MODE_ENABLE"] = "|cffFFFFFF%s|r Wettrennen Welt 1.-Modus ist aktiviert. Du kannst es deaktivieren, indem du |cffFFFFFF/raiderio rwf|r eingibst."
L["WIPE_RWF_MODE_BUTTON"] = "Löschen"
L["WIPE_RWF_MODE_BUTTON_TOOLTIP"] = "Klicke hier, um das Protokoll aus der Speicherdatei zu löschen. Dadurch wird deine Benutzeroberfläche neu geladen."

	ns.L = L
end
