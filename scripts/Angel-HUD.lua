--Musician, Charter
--Change this for the credits
local roles = {'???', '???'}
--[[ modes = {
    0 = Default healthbar, just change the scoreTxt (rating, score, health, etc)
    1 = vertical healthbar
    2 = different healthbars, 1 for enemy and other for player
}]]
local mode = 2

--mode 2 to is early access

function RGBtoHex(R,G,B) -- behold, the most mid RGB to Hex converter to exist LMAO

	Decimal1 = math.floor(R/16)
	Decimal2 = ((R/16)%1)*16

	Decimal3 = math.floor(G/16)
	Decimal4 = ((G/16)%1)*16

	Decimal5 = math.floor(B/16)
	Decimal6 = ((B/16)%1)*16

	LetterValues = 'ABCDEF'

-- testing "string.sub" shit lol
	if Decimal1 == 10 then
		Decimal1 = string.sub(LetterValues, 1,1)
	elseif Decimal1 == 11 then
		Decimal1 = string.sub(LetterValues, 2,2)
	elseif Decimal1 == 12 then
		Decimal1 = string.sub(LetterValues, 3,3)
	elseif Decimal1 == 13 then
		Decimal1 = string.sub(LetterValues, 4,4)
	elseif Decimal1 == 14 then
		Decimal1 = string.sub(LetterValues, 5,5)
	elseif Decimal1 == 15 then
		Decimal1 = string.sub(LetterValues, 6,6)
	end
	if Decimal2 == 10 then
		Decimal2 = string.sub(LetterValues, 1,1)
	elseif Decimal2 == 11 then
		Decimal2 = string.sub(LetterValues, 2,2)
	elseif Decimal2 == 12 then
		Decimal2 = string.sub(LetterValues, 3,3)
	elseif Decimal2 == 13 then
		Decimal2 = string.sub(LetterValues, 4,4)
	elseif Decimal2 == 14 then
		Decimal2 = string.sub(LetterValues, 5,5)
	elseif Decimal2 == 15 then
		Decimal2 = string.sub(LetterValues, 6,6)
	end
	if Decimal3 == 10 then
		Decimal3 = string.sub(LetterValues, 1,1)
	elseif Decimal3 == 11 then
		Decimal3 = string.sub(LetterValues, 2,2)
	elseif Decimal3 == 12 then
		Decimal3 = string.sub(LetterValues, 3,3)
	elseif Decimal3 == 13 then
		Decimal3 = string.sub(LetterValues, 4,4)
	elseif Decimal3 == 14 then
		Decimal3 = string.sub(LetterValues, 5,5)
	elseif Decimal3 == 15 then
		Decimal3 = string.sub(LetterValues, 6,6)
	end
	if Decimal4 == 10 then
		Decimal4 = string.sub(LetterValues, 1,1)
	elseif Decimal4 == 11 then
		Decimal4 = string.sub(LetterValues, 2,2)
	elseif Decimal4 == 12 then
		Decimal4 = string.sub(LetterValues, 3,3)
	elseif Decimal4 == 13 then
		Decimal4 = string.sub(LetterValues, 4,4)
	elseif Decimal4 == 14 then
		Decimal4 = string.sub(LetterValues, 5,5)
	elseif Decimal4 == 15 then
		Decimal4 = string.sub(LetterValues, 6,6)
	end
	if Decimal5 == 10 then
		Decimal5 = string.sub(LetterValues, 1,1)
	elseif Decimal5 == 11 then
		Decimal5 = string.sub(LetterValues, 2,2)
	elseif Decimal5 == 12 then
		Decimal5 = string.sub(LetterValues, 3,3)
	elseif Decimal5 == 13 then
		Decimal5 = string.sub(LetterValues, 4,4)
	elseif Decimal5 == 14 then
		Decimal5 = string.sub(LetterValues, 5,5)
	elseif Decimal5 == 15 then
		Decimal5 = string.sub(LetterValues, 6,6)
	end
	if Decimal6 == 10 then
		Decimal6 = string.sub(LetterValues, 1,1)
	elseif Decimal6 == 11 then
		Decimal6 = string.sub(LetterValues, 2,2)
	elseif Decimal6 == 12 then
		Decimal6 = string.sub(LetterValues, 3,3)
	elseif Decimal6 == 13 then
		Decimal6 = string.sub(LetterValues, 4,4)
	elseif Decimal6 == 14 then
		Decimal6 = string.sub(LetterValues, 5,5)
	elseif Decimal6 == 15 then
		Decimal6 = string.sub(LetterValues, 6,6)
	end
		Hex1 = Decimal1
		Hex2 = Decimal2
		Hex3 = Decimal3
		Hex4 = Decimal4
		Hex5 = Decimal5
		Hex6 = Decimal6
		local HexCode = table.concat{Hex1,Hex2,Hex3,Hex4,Hex5,Hex6}
	return HexCode
end
--End the thing from RAMEN UI

local bR
local bG
local bB
local dR
local dG
local dB

function onCreatePost()
    bR = getProperty('boyfriend.healthColorArray[0]')
	bG = getProperty('boyfriend.healthColorArray[1]')
	bB = getProperty('boyfriend.healthColorArray[2]')

    dR = getProperty('dad.healthColorArray[0]')
	dG = getProperty('dad.healthColorArray[1]')
	dB = getProperty('dad.healthColorArray[2]')

    local dIcon = getProperty('dad.healthIcon')

    makeLuaText('ae', songName..' - '..difficultyName..' - Psych Engine '..version, 500, 10, 10)
    setTextAlignment('ae', 'left')
    setObjectCamera('ae', 'hud')
    addLuaText('ae')

    makeLuaSprite('cbg', '', -700, 425)
    setObjectCamera('cbg', 'hud')
    makeGraphic('cbg', 700, 130, '000000')
    addLuaSprite('cbg', true)
    setProperty('cbg.alpha', 0.85)
    runTimer('ent', 1)
    runTimer('exit', 5)

    makeLuaText('credit', songName, 500,getProperty('cbg.x'), 435)
    setObjectCamera('credit', 'hud')
    setTextSize('credit', 45)
    addLuaText('credit', true)
    setTextAlignment('credit','right')

    makeLuaText('music', 'Musician: '..roles[1], 500, getProperty('cbg.x'), getProperty('cbg.y') + 60)
    setObjectCamera('music', 'hud')
    setTextSize('music', 20)
    addLuaText('music', true)
    setTextAlignment('music', 'right')

    makeLuaText('chart', 'Charter: '..roles[2], 500, getProperty('cbg.x'), getProperty('cbg.y') + 90)
    setObjectCamera('chart', 'hud')
    setTextSize('chart', 20)
    addLuaText('chart', true)
    setTextAlignment('chart', 'right')

    makeLuaSprite('icon', 'song-icons/icon-'..dIcon, getMidpointX('cbg') - 335, getMidpointY('cbg') - 58.5)
    setObjectCamera('icon', 'hud')
    addLuaSprite('icon', true)

    if curStage == 'school' or curStage == 'schoolEvil' then
        setTextFont('scoreTxt', 'PIXEAB__.ttf')
        setTextFont('credit', 'PIXEAB__.ttf')
        setTextFont('music', 'PIXEAB__.ttf')
        setTextFont('chart', 'PIXEAB__.ttf')
        setTextBorder('credit', 0)
        setTextBorder('music', 0)
        setTextBorder('chart', 0)
    end

    if mode == 1 then
        makeLuaSprite('barBG', '', 30, 50)
        makeGraphic('barBG', 30, 600, '000000')
        setObjectCamera('barBG', 'hud')
        addLuaSprite('barBG')

        makeLuaSprite('bar', '', 37, 57)
        makeGraphic('bar', 15, 585, RGBtoHex(dR,dG,dB))
        setObjectCamera('bar', 'hud')
        addLuaSprite('bar')

        makeLuaSprite('barF', '', 37, 57)
        setObjectCamera('barF', 'hud')
        addLuaSprite('barF')
    end

    if mode == 2 then
        makeLuaSprite('enemyBarBG', '', 100,620)
        makeGraphic('enemyBarBG', 450, 35, '000000')
        setObjectCamera('enemyBarBG', 'hud')
        addLuaSprite('enemyBarBG')
        makeLuaSprite('enemyBarBack', '', 106, screenHeight - 92.5)
        makeGraphic('enemyBarBack', 435, 21, 'FF0000')
        setObjectCamera('enemyBarBack', 'hud')
        addLuaSprite('enemyBarBack')
        makeLuaSprite('enemyBarFront', '', 106, screenHeight - 92.5)
        setObjectCamera('enemyBarFront', 'hud')
        addLuaSprite('enemyBarFront')
        makeLuaText('enemy%', '50%', 500,85, screenHeight - 150)
        setObjectCamera('enemy%', 'hud')
        setTextSize('enemy%', 45)
        addLuaText('enemy%')

        makeLuaSprite('PlayerBarBG', '', 690,620)
        makeGraphic('PlayerBarBG', 450, 35, '000000')
        setObjectCamera('PlayerBarBG', 'hud')
        addLuaSprite('PlayerBarBG')
        makeLuaSprite('playerBarBack', '', 696, screenHeight - 92.5)
        makeGraphic('playerBarBack', 435, 21, RGBtoHex(bR, bG, bB))
        setObjectCamera('playerBarBack', 'hud')
        addLuaSprite('playerBarBack')
        makeLuaSprite('playerBarFront', '', 696, screenHeight - 92.5)
        setObjectCamera('playerBarFront', 'hud')
        addLuaSprite('playerBarFront')
        makeLuaText('player%', '50%', 500,675, screenHeight - 150)
        setObjectCamera('player%', 'hud')
        setTextSize('player%', 45)
        addLuaText('player%')
    end
end

playerHP = 100;
enemyHP = 100;

function onUpdatePost(elapsed)
    --fixed because idk how to make it work deez nuts
    setProperty('credit.x', getProperty('cbg.x') + 70)
    setProperty('music.x', getProperty('cbg.x') +70)
    setProperty('chart.x', getProperty('cbg.x')+70)
    setTextString('scoreTxt', 'Score: '..score..' | Health: '..tostring(getProperty('health') / 2 * 100)..'%'..' | Misses: '..misses..' | Rating: '..ratingName..' | '..ratingFC)

    setProperty('icon.x', getMidpointX('cbg') - 335)

    if mode == 1 then
        makeGraphic('barF', 15, 292.5 * getProperty('health'), RGBtoHex(bR,bG,bB))
        setProperty('barF.y', 643 - 293 * getProperty('health'))
    
        setProperty('iconP2.x', getMidpointX('barBG') - 65)
        setProperty('iconP1.x', getMidpointX('barBG') - 65)
        setProperty('iconP2.y', getProperty('barF.y') - 70)
        setProperty('iconP1.y', getProperty('barF.y') - 20)
        setProperty('healthBar.visible', false)
        setProperty('healthBarBG.visible', false)
    end
    if mode == 2 then
        moreHPTimer = false;

        makeGraphic('enemyBarFront', 435*(enemyHP/100), 21, RGBtoHex(dR, dG, dB))
        makeGraphic('playerBarFront', 435 * ((2 - ((playerHP*2)/100)) / 2), 21, 'FF0000')

        setTextString('enemy%', 'HP: '..math.floor(enemyHP))
        setTextString('player%', 'HP: '..math.floor(playerHP))

        setTextString('scoreTxt', 'Score: '..score..' | Misses: '..misses..' | Rating: '..ratingName..' | '..ratingFC)

        setProperty('iconP2.x', getMidpointX('enemyBarbBG') + 30)
        setProperty('iconP1.x', getMidpointX('PlayerBarBG') + 150)

        setProperty('healthBar.visible', false)
        setProperty('healthBarBG.visible', false)
        setProperty('health', 1)

        if enemyHP <= 50 and playerHP < 100  then
            playerHP = playerHP + 0.05;
        end
    end
end

function goodNoteHit(index, noteDir, noteType, isSustainNote)
    if enemyHP > 0 then
        enemyHP = enemyHP - 1;
    end
end

function noteMiss(index, noteDir, noteType, isSustainNote)
    playerHP = playerHP - 2;
    if enemyHP < 100 then
        enemyHP = enemyHP + 2;
    end
    if enemyHP > 100 then
        enemyHP = 100;
    end
end

function opponentNoteHit(index, noteDir, noteType, isSustainNote)
    if enemyHP < 100 then
        enemyHP = enemyHP + 1;
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'ent' then
        doTweenX('enter', 'cbg', 700, 0.5, 'backOut')
    end
    if tag == 'exit' then
        doTweenX('enter', 'cbg', -700, 0.5, 'backIn')
    end
    if tag == 'plHP' then
        playerHP = playerHP + 1;
        moreHPTimer = false;
    end
end