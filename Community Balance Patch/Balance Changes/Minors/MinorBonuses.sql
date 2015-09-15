-- Buffed CSs a bit.
UPDATE Defines
SET Value = '85'
WHERE Name = 'MINOR_CIV_GROWTH_PERCENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '95'
WHERE Name = 'MINOR_CIV_PRODUCTION_PERCENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '125'
WHERE Name = 'MINOR_CIV_GOLD_PERCENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '25'
WHERE Name = 'BALANCE_CS_ALLIANCE_DEFENSE_BONUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

-- Extra Spies based on # of Minors

INSERT INTO Defines (Name, Value)
SELECT 'BALANCE_SPY_TO_MINOR_RATIO', '10'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

-- Maritime Civs Buffed

UPDATE Defines
SET Value = '300'
WHERE Name = 'FRIENDS_CAPITAL_FOOD_BONUS_AMOUNT_PRE_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '600'
WHERE Name = 'FRIENDS_CAPITAL_FOOD_BONUS_AMOUNT_POST_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '50'
WHERE Name = 'FRIENDS_OTHER_CITIES_FOOD_BONUS_AMOUNT_PRE_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '100'
WHERE Name = 'FRIENDS_OTHER_CITIES_FOOD_BONUS_AMOUNT_POST_RENAISSANCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '200'
WHERE Name = 'ALLIES_CAPITAL_FOOD_BONUS_AMOUNT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '200'
WHERE Name = 'ALLIES_OTHER_CITIES_FOOD_BONUS_AMOUNT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

-- Minor Civ Stuff
UPDATE Defines
SET Value = '30'
WHERE Name = 'FRIENDSHIP_THRESHOLD_CAN_BULLY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_MINOR_ANCHOR_ATTACK', '-10'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CS_WAR_COOLDOWN_RATE', '50'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CS_FORGIVENESS_CHANCE', '75'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[ICON_INFLUENCE] Influence too high'
WHERE Tag = 'TXT_KEY_POP_CSTATE_BULLY_FACTOR_LOW_INFLUENCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

-- CS Protection Tooltip for new influence perk
UPDATE Language_en_US
SET Text = 'Pledging to protect a City-State lets the other major powers in the game know that you will protect the City-State from attacks and tribute demands. The City-State will expect you to take its side when it is attacked or bullied.[NEWLINE][NEWLINE]During protection, your resting point for [ICON_INFLUENCE] Influence with this City-State is increased by {1_InfluenceMinimum}, and you will earn [COLOR_POSITIVE_TEXT]{3_InfluenceBoost}%[ENDCOLOR] [ICON_INFLUENCE] Influence from quests completed for this City-State. The City-State [ICON_CAPITAL] Capital''s base [ICON_STRENGTH] Combat Strength will be increased by [COLOR_POSITIVE_TEXT]{4_DefenseBoost}%[ENDCOLOR], up to a global maximum of [COLOR_POSITIVE_TEXT]{5_DefenseTotal}%[ENDCOLOR]. [NEWLINE][NEWLINE]Protection cannot be revoked until {2_TurnsMinimum} turns after the pledge is made.'
WHERE Tag = 'TXT_KEY_POP_CSTATE_PLEDGE_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

-- Quest values

UPDATE Defines
SET Value = '35'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_ROUTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '40'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_KILL_CAMP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '25'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_CONNECT_RESOURCE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '25'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_CONSTRUCT_WONDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '25'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_GREAT_PERSON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '60'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_KILL_CITY_STATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '20'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_FIND_PLAYER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '20'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_FIND_NATURAL_WONDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '20'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_GIVE_GOLD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '10'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_PLEDGE_TO_PROTECT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '20'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_CONTEST_CULTURE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '20'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_CONTEST_FAITH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '20'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_CONTEST_TECHS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '0'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_INVEST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '35'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_BULLY_CITY_STATE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '35'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_SPREAD_RELIGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );

UPDATE Defines
SET Value = '25'
WHERE Name = 'MINOR_QUEST_FRIENDSHIP_TRADE_ROUTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MINORS' AND Value= 1 );