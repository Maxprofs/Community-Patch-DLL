------------------
-- Ancient

-- Pyramids

DELETE FROM Buildings
WHERE Type = 'BUILDING_PYRAMID' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_FreeUnits
SET UnitType = 'UNIT_SETTLER'
WHERE BuildingType = 'BUILDING_PYRAMID' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_FreeUnits
SET NumUnits = '1'
WHERE BuildingType = 'BUILDING_PYRAMID' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Tile improvement construction speed increased by 25% and a Settler appears near the City.'
WHERE Tag = 'TXT_KEY_WONDER_CHICHEN_ITZA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Statue of Zeus
DELETE FROM Buildings
WHERE Type = 'BUILDING_STATUE_ZEUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'All units gain +15% [ICON_STRENGTH] combat strength when attacking cities. Reduces [ICON_HAPPINESS_3] Crime in all cities. Receive a free Forge in the City.'
WHERE Tag = 'TXT_KEY_WONDER_STATUE_ZEUS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield)
SELECT 'BUILDING_STATUE_ZEUS' , 'YIELD_FAITH' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Stonehenge
UPDATE Buildings
SET PrereqTech = 'TECH_THE_WHEEL'
WHERE Type = 'BUILDING_STONEHENGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET FreeBuildingThisCity = 'BUILDINGCLASS_SHRINE'
WHERE Type = 'BUILDING_STONEHENGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Help = 'TXT_KEY_BUILDING_STONEHENGE_HELP'
WHERE Type = 'BUILDING_STONEHENGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Language_en_US (Tag, Text)
SELECT 'TXT_KEY_BUILDING_STONEHENGE_HELP', 'Grants 30 [ICON_PEACE] Faith when completed. Receive a free Shrine in the city.'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_InstantYield (BuildingType, YieldType, Yield)
SELECT 'BUILDING_STONEHENGE' , 'YIELD_FAITH' , '30'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_YieldChanges
SET Yield = '3'
WHERE BuildingType = 'BUILDING_STONEHENGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '150'
WHERE Type = 'BUILDING_STONEHENGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Halicarnassus
UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_MAUSOLEUM_HALICARNASSUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

DELETE FROM Building_ResourceYieldChanges
WHERE BuildingType = 'BUILDING_MAUSOLEUM_HALICARNASSUS';

UPDATE Buildings
SET GreatPersonExpendGold = '0'
WHERE Type = 'BUILDING_MAUSOLEUM_HALICARNASSUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET WLTKDTurns = '20'
WHERE Type = 'BUILDING_MAUSOLEUM_HALICARNASSUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET FreeBuildingThisCity = 'BUILDINGCLASS_STONE_WORKS'
WHERE Type = 'BUILDING_MAUSOLEUM_HALICARNASSUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '''We Love the King Day'' begins in the City. During ''We Love the King Day'', City [ICON_PRODUCTION] Production increases by +15%. [NEWLINE][NEWLINE]Receive 50 [ICON_CULTURE] Culture when a Great Person is expended, scaling with Era. Receive a free Stone Works in the City.'
WHERE Tag = 'TXT_KEY_WONDER_MAUSOLEUM_HALICARNASSUS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Artemis

UPDATE Buildings
SET FreeBuildingThisCity = 'BUILDINGCLASS_GRANARY'
WHERE Type = 'BUILDING_TEMPLE_ARTEMIS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '+10% [ICON_FOOD] Growth in all cities. +15% [ICON_PRODUCTION] Production when building ranged units. Free Granary in the City.'
WHERE Tag = 'TXT_KEY_WONDER_TEMPLE_ARTEMIS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );


-- Petra
UPDATE Buildings
SET PrereqTech = 'TECH_HORSEBACK_RIDING'
WHERE Type = 'BUILDING_PETRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '185'
WHERE Type = 'BUILDING_PETRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_PETRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

DELETE FROM Building_TerrainYieldChanges
WHERE BuildingType = 'BUILDING_PETRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

DELETE FROM Building_FeatureYieldChanges
WHERE BuildingType = 'BUILDING_PETRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '+1 [ICON_GOLD] Gold on all Desert tiles worked by this city. Gains an additional trade route slot and a Caravan appears in the city. +6 [ICON_CULTURE] Culture once Archaeology is discovered. City must be built on or next to Desert.'
WHERE Tag = 'TXT_KEY_WONDER_PETRA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-----------------
-- Classical

-- Great Library

UPDATE Buildings
SET Cost = '200'
WHERE Type = 'BUILDING_GREAT_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '1 Free Technology. Provides a free Library in the city in which it is built.  Contains 2 slots for Great Works of Writing.[NEWLINE][NEWLINE]+3 [ICON_RESEARCH] Science if Themed.'
WHERE Tag = 'TXT_KEY_WONDER_GREAT_LIBRARY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Hanging Gardens
UPDATE Buildings
SET Cost = '200'
WHERE Type = 'BUILDING_HANGING_GARDEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Great Lighthouse
INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield)
SELECT 'BUILDING_GREAT_LIGHTHOUSE' , 'YIELD_PRODUCTION' , '2'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '200'
WHERE Type = 'BUILDING_GREAT_LIGHTHOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Colossus
UPDATE Buildings
SET PrereqTech = 'TECH_METAL_CASTING'
WHERE Type = 'BUILDING_COLOSSUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '250'
WHERE Type = 'BUILDING_COLOSSUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Terracotta Army
-- Parthenon
UPDATE Buildings
SET PolicyBranchType = 'POLICY_BRANCH_HONOR'
WHERE Type = 'BUILDING_TERRACOTTA_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '200'
WHERE Type = 'BUILDING_TERRACOTTA_ARMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_InstantYield (BuildingType, YieldType, Yield)
SELECT  'BUILDING_TERRACOTTA_ARMY' , 'YIELD_CULTURE' , '100'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Requires Authority. Reduces [ICON_HAPPINESS_3] Crime in all cities. Creates a copy of each type of military land unit you control and places the unit near the city where the Terracotta Army is constructed. Receive a large sum of [ICON_CULTURE] Culture when completed.'
WHERE Tag = 'TXT_KEY_WONDER_TERRA_COTTA_ARMY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Parthenon
UPDATE Buildings
SET PolicyBranchType = 'POLICY_BRANCH_LIBERTY'
WHERE Type = 'BUILDING_PARTHENON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_PARTHENON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Requires Progress. Reduces [ICON_HAPPINESS_3] Boredom in all cities. Contains a prebuilt Great Work of Art in the Great Work Slot.'
WHERE Tag = 'TXT_KEY_WONDER_PARTHENON_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Oracle

UPDATE Language_en_US
SET Text = '1 Free Social Policy. Reduces [ICON_HAPPINESS_3] Illiteracy in all cities.'
WHERE Tag = 'TXT_KEY_WONDER_ORACLE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield)
SELECT  'BUILDING_ORACLE' , 'YIELD_SCIENCE' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Great Wall

INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits)
SELECT 'BUILDING_GREAT_WALL' , 'UNIT_GREAT_GENERAL' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Receive a free Great General. [NEWLINE][NEWLINE]Enemy land Units must expend 1 extra [ICON_MOVES] movement per Tile inside your territory. Provides Walls for free in the city in which it is built. Upon discovering Dynamite, The Great Wall becomes obsolete.'
WHERE Tag = 'TXT_KEY_WONDER_GREAT_WALL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Angkor Wat

UPDATE Buildings
SET PrereqTech = 'TECH_CURRENCY'
WHERE Type = 'BUILDING_ANGKOR_WAT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '250'
WHERE Type = 'BUILDING_ANGKOR_WAT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield)
SELECT 'BUILDING_ANGKOR_WAT' , 'YIELD_FAITH' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );


----------------------------
-- Medieval

-- Alhambra

UPDATE Buildings
SET Cost = '350'
WHERE Type = 'BUILDING_ALHAMBRA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'All newly-trained non-air Units in this City receive the [COLOR_POSITIVE_TEXT]Drill I[ENDCOLOR] Promotion, improving [ICON_STRENGTH] combat strength and city attack strength. Provides a free Castle in the city in which it is built. Boosts city [ICON_CULTURE] Culture output by 20%.'
WHERE Tag = 'TXT_KEY_WONDER_ALHAMBRA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Mosque of Djenne

DELETE FROM Buildings
WHERE Type = 'BUILDING_MOSQUE_OF_DJENNE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Reqiures Piety. All Missionaries born in this city can spread religion three times. Provides a free Mosque in the city in which it is built.'
WHERE Tag = 'TXT_KEY_WONDER_MOSQUE_OF_DJENNE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'University of Sankore'
WHERE Tag = 'TXT_KEY_BUILDING_MOSQUE_OF_DJENNE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'As the center of an Islamic scholarly community, the University of Sankore was very different in organization from the universities of medieval Europe. It had no central administration other than the Emperor. It had no student registers but kept copies of its student publishings. It was composed of several entirely independent schools or colleges, each run by a single master or imam. Students associated themselves with a single teacher, and courses took place in the open courtyard of the mosque or at private residences.'
WHERE Tag = 'TXT_KEY_WONDER_MOSQUE_OF_DJENNE_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- St. Basil's

DELETE FROM Buildings
WHERE Type = 'BUILDING_KREMLIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

DELETE FROM Building_UnitCombatProductionModifiers
WHERE BuildingType = 'BUILDING_KREMLIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Grants 1 free Social Policy, and enables you to select a Reformation Belief without the normal prerequisites. Must be built in a Holy City.'
WHERE Tag = 'TXT_KEY_WONDER_KREMLIN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Cathedral of St. Basil'
WHERE Tag = 'TXT_KEY_BUILDING_KREMLIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'The Cathedral of Vasily the Blessed, commonly known as the Cathedral of Saint Basil, is a former church in Red Square in Moscow, Russia. The building, now a museum, is officially known as the Cathedral of the Intercession of the Most Holy Theotokos on the Moat or Pokrovsky Cathedral. It was built from 1555�61 on orders from Ivan the Terrible and commemorates the capture of Kazan and Astrakhan. A world famous landmark, it has been the hub of growth since the 14th century and was the tallest building in the city until the completion of the Ivan the Great Bell Tower in 1600.'
WHERE Tag = 'TXT_KEY_WONDER_KREMLIN_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Borobudur
UPDATE Buildings
SET PrereqTech = 'TECH_GUILDS'
WHERE Type = 'BUILDING_BOROBUDUR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '450'
WHERE Type = 'BUILDING_BOROBUDUR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Hagia Sophia

UPDATE Buildings
SET Cost = '350'
WHERE Type = 'BUILDING_HAGIA_SOPHIA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Machu Pichu
UPDATE Buildings
SET PrereqTech = 'TECH_PHYSICS'
WHERE Type = 'BUILDING_MACHU_PICHU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET CityConnectionTradeRouteModifier = '15'
WHERE Type = 'BUILDING_MACHU_PICHU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '+15% [ICON_GOLD] Gold from [ICON_CONNECTED] City Connections. City gains +1 [ICON_FOOD] Food, [ICON_PRODUCTION] Production, [ICON_CULTURE] Culture, and [ICON_PEACE] Faith for every Mountain near the City. [NEWLINE][NEWLINE]City must be built within 2 tiles of a Mountain that is inside your territory.'
WHERE Tag = 'TXT_KEY_WONDER_MACHU_PICHU_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '350'
WHERE Type = 'BUILDING_MACHU_PICHU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Notre Dame
UPDATE Buildings
SET UnmoddedHappiness = '3'
WHERE Type = 'BUILDING_NOTRE_DAME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '450'
WHERE Type = 'BUILDING_NOTRE_DAME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PrereqTech = 'TECH_MACHINERY'
WHERE Type = 'BUILDING_NOTRE_DAME' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Forbidden Palace
UPDATE Buildings
SET PrereqTech = 'TECH_CIVIL_SERVICE'
WHERE Type = 'BUILDING_FORBIDDEN_PALACE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '450'
WHERE Type = 'BUILDING_FORBIDDEN_PALACE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET UnhappinessModifier = '0'
WHERE Type = 'BUILDING_FORBIDDEN_PALACE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Requires Statecraft. Grants 2 additional Delegates in the World Congress for every 8 City-States in the game. Reduces [ICON_HAPPINESS_3] Poverty in all cities.'
WHERE Tag = 'TXT_KEY_WONDER_FORBIDDEN_PALACE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

----------------------
-- Renaissance

-- Himeji Castle

UPDATE Buildings
SET Cost = '600'
WHERE Type = 'BUILDING_HIMEJI_CASTLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Chichen Itza

UPDATE Buildings
SET PrereqTech = 'TECH_ASTRONOMY'
WHERE Type = 'BUILDING_CHICHEN_ITZA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '600'
WHERE Type = 'BUILDING_CHICHEN_ITZA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Happiness = '0'
WHERE Type = 'BUILDING_CHICHEN_ITZA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Length of [ICON_GOLDEN_AGE] Golden Ages increased by 50%. Reduces [ICON_HAPPINESS_3] Religious Unrest in all cities.'
WHERE Tag = 'TXT_KEY_WONDER_TAJ_MAHAL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Globe Theater
UPDATE Buildings
SET Cost = '600'
WHERE Type = 'BUILDING_GLOBE_THEATER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '1 free Great Writer appears near the City where the Wonder was built. Contains 2 slots for Great Works of Writing.[NEWLINE][NEWLINE]+5 [ICON_GOLD] Gold if Themed.'
WHERE Tag = 'TXT_KEY_WONDER_GLOBE_THEATER_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Pisa
UPDATE Buildings
SET PrereqTech = 'TECH_CHEMISTRY'
WHERE Type = 'BUILDING_LEANING_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '600'
WHERE Type = 'BUILDING_LEANING_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Uffizi
UPDATE Buildings
SET PrereqTech = 'TECH_ECONOMICS'
WHERE Type = 'BUILDING_UFFIZI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '700'
WHERE Type = 'BUILDING_UFFIZI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '1 free Great Artist appears near the City where the Wonder was built. Contains 3 slots for Great Works of Art.[NEWLINE][NEWLINE]+5 [ICON_CULTURE] Culture if Themed.'
WHERE Tag = 'TXT_KEY_WONDER_UFFIZI_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Taj Mahal
UPDATE Buildings
SET Happiness = '0'
WHERE Type = 'BUILDING_TAJ_MAHAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '700'
WHERE Type = 'BUILDING_TAJ_MAHAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'The empire enters a [ICON_GOLDEN_AGE] Golden Age. Reduces [ICON_HAPPINESS_3] Religious Unrest in all cities.'
WHERE Tag = 'TXT_KEY_WONDER_PYRAMIDS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_TAJ_MAHAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Sistine Chapel

UPDATE Buildings
SET Cost = '700'
WHERE Type = 'BUILDING_SISTINE_CHAPEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET GlobalCultureRateModifier = '15'
WHERE Type = 'BUILDING_SISTINE_CHAPEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '+15% [ICON_CULTURE] Culture in all Cities. Contains 2 slots for Great Works of Art.[NEWLINE][NEWLINE]+5 [ICON_PEACE] Faith if Themed.'
WHERE Tag = 'TXT_KEY_WONDER_SISTINE_CHAPEL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Red Fort
UPDATE Buildings
SET GlobalDefenseMod = '0'
WHERE Type = 'BUILDING_RED_FORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '700'
WHERE Type = 'BUILDING_RED_FORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET FreeBuildingThisCity = 'BUILDINGCLASS_ARMORY'
WHERE Type = 'BUILDING_RED_FORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

INSERT INTO Building_FreeUnits (BuildingType, UnitType, NumUnits)
SELECT 'BUILDING_RED_FORT' , 'UNIT_ENGINEER' , '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Receive a free Great Engineer and a free Armory in the city. Greatly increases the [ICON_STRENGTH] Defense of the city.'
WHERE Tag = 'TXT_KEY_WONDER_RED_FORT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

--------------------
-- Industrial

-- Porcelain Tower

UPDATE Buildings
SET PrereqTech = 'TECH_SCIENTIFIC_THEORY'
WHERE Type = 'BUILDING_PORCELAIN_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '900'
WHERE Type = 'BUILDING_PORCELAIN_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );


UPDATE Language_en_US
SET Text = 'Requires Rationalism. A Great Scientist appears near the City where the Wonder was built. Reduces [ICON_HAPPINESS_3] Illiteracy in all cities. 50% more [ICON_RESEARCH] Science generated from Research Agreements. If Research Agreements are disabled, provides a +25% [ICON_RESEARCH] Science bonus in the City in which it is built.'
WHERE Tag = 'TXT_KEY_WONDER_PORCELAIN_TOWER_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Brandenburg Gate

UPDATE Buildings
SET PolicyBranchType = 'POLICY_BRANCH_EXPLORATION'
WHERE Type = 'BUILDING_BRANDENBURG_GATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '1000'
WHERE Type = 'BUILDING_BRANDENBURG_GATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Requires Imperialism. A Great General appears near the City where the Wonder was built and +15 XP for all Units built in this City. Reduces [ICON_HAPPINESS_3] Crime in all cities.'
WHERE Tag = 'TXT_KEY_WONDER_BRANDENBURG_GATE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Louvre
DELETE FROM Buildings
WHERE Type = 'BUILDING_LOUVRE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '1 free Great Artist appears near the City where the Wonder was built. Contains 4 slots for Great Works of Art.[NEWLINE][NEWLINE]+8 [ICON_CULTURE] Culture if Themed.'
WHERE Tag = 'TXT_KEY_WONDER_LOUVRE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Eiffel Tower
UPDATE Buildings
SET UnmoddedHappiness = '0'
WHERE Type = 'BUILDING_EIFFEL_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '1000'
WHERE Type = 'BUILDING_EIFFEL_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET PrereqTech = 'TECH_DYNAMITE'
WHERE Type = 'BUILDING_EIFFEL_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Reduces [ICON_HAPPINESS_3] Boredom in all cities. The Eiffel Tower also provides +12 [ICON_TOURISM] Tourism once you research Radio.'
WHERE Tag = 'TXT_KEY_WONDER_EIFFEL_TOWER_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Big Ben

UPDATE Buildings
SET Cost = '1000'
WHERE Type = 'BUILDING_BIG_BEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Requires Industry. Cost of [ICON_GOLD] Gold purchasing in all cities reduced by 15%. Reduces [ICON_HAPPINESS_3] Poverty in all cities.'
WHERE Tag = 'TXT_KEY_WONDER_BIG_BEN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Neuschwanstein

UPDATE Buildings
SET Happiness = '0'
WHERE Type = 'BUILDING_NEUSCHWANSTEIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '+1 [ICON_GOLD] Gold, [ICON_CULTURE] Culture, and [ICON_HAPPINESS_1] Happiness from every Castle.[NEWLINE][NEWLINE]City must be built within 2 tiles of a Mountain that is inside your territory.'
WHERE Tag = 'TXT_KEY_WONDER_NEUSCHWANSTEIN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Building_BuildingClassYieldChanges
SET YieldChange = '1'
WHERE BuildingType = 'BUILDING_NEUSCHWANSTEIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '900'
WHERE Type = 'BUILDING_NEUSCHWANSTEIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-----------------------
--Modern

-- Statue of Liberty
UPDATE Buildings
SET PrereqTech = 'TECH_COMBUSTION'
WHERE Type = 'BUILDING_STATUE_OF_LIBERTY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET Cost = '1300'
WHERE Type = 'BUILDING_STATUE_OF_LIBERTY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Cristo Redentor
UPDATE Buildings
SET Cost = '1500'
WHERE Type = 'BUILDING_CRISTO_REDENTOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Prora
UPDATE Buildings
SET Cost = '1500'
WHERE Type = 'BUILDING_PRORA_RESORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Broadway
UPDATE Buildings
SET Cost = '1500'
WHERE Type = 'BUILDING_BROADWAY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '1 free Great Musician appears near the City where the Wonder was built. Contains 3 slots for Great Works of Music.[NEWLINE][NEWLINE]+10 [ICON_CULTURE] Culture if Themed.'
WHERE Tag = 'TXT_KEY_WONDER_BROADWAY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-------------------------
-- Atomic
-- Pentagon
UPDATE Buildings
SET Cost = '1600'
WHERE Type = 'BUILDING_PENTAGON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

----------------
-- Information

-- CN Tower
UPDATE Buildings
SET Cost = '2000'
WHERE Type = 'BUILDING_CN_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Sydney Opera House
UPDATE Buildings
SET Cost = '2000'
WHERE Type = 'BUILDING_SYDNEY_OPERA_HOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET CultureRateModifier = '25'
WHERE Type = 'BUILDING_SYDNEY_OPERA_HOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '1 Free Social Policy and +25% [ICON_CULTURE] Culture in this city.  Contains 2 slots for Great Works of Music. Must be constructed in a coastal city.[NEWLINE][NEWLINE]+10 [ICON_CULTURE] Culture if Themed.'
WHERE Tag = 'TXT_KEY_WONDER_SYDNEY_OPERA_HOUSE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
-- Move Apollo 
UPDATE Projects
SET TechPrereq = 'TECH_SATELLITES'
WHERE Type = 'PROJECT_APOLLO_PROGRAM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Move Hubble
UPDATE Buildings
SET PrereqTech = 'TECH_STEALTH'
WHERE Type = 'BUILDING_HUBBLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Buildings
SET Cost = '2500'
WHERE Type = 'BUILDING_HUBBLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Move Great Firewall
UPDATE Buildings
SET PrereqTech = 'TECH_INTERNET'
WHERE Type = 'BUILDING_GREAT_FIREWALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

UPDATE Buildings
SET Cost = '2500'
WHERE Type = 'BUILDING_GREAT_FIREWALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '99.9% reduction in effectiveness of enemy spies in the city in which it is built. All other cities in the civilization get a 25% reduction in enemy spy effectiveness. Negates the [ICON_TOURISM] Tourism bonus from the technologies of other players.'
WHERE Tag = 'TXT_KEY_BUILDING_GREAT_FIREWALL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- Projects
UPDATE Language_en_US
SET Text = 'Contribute this city''s [ICON_PRODUCTION] Production towards the World''s Fair project. Cost goes up based on the number of players in the game, and the current Era.'
WHERE Tag = 'TXT_KEY_PROCESS_WORLD_FAIR_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Contribute this city''s [ICON_PRODUCTION] Production towards the International Games project. Cost goes up based on the number of players in the game, and the current Era.'
WHERE Tag = 'TXT_KEY_PROCESS_WORLD_GAMES_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Contribute this city''s [ICON_PRODUCTION] Production towards the International Space Station project. Cost goes up based on the number of players in the game, and the current Era.'
WHERE Tag = 'TXT_KEY_PROCESS_INTERNATIONAL_SPACE_STATION_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
