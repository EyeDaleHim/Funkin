var gorls;

function start(song) {
    var bg = new FlxSprite().loadGraphic(hscriptPath + 'weebSky.png');
    bg.scrollFactor.set(0.1,0.1);
    var widShit = Std.int(bg.width * 6);
    bg.setGraphicSize(Std.int(6*bg.width));
    bg.updateHitbox();
	addSprite(bg, BEHIND_ALL);
    var school = new FlxSprite(-200).loadGraphic(hscriptPath + 'weebSchool.png');
    school.setGraphicSize(widShit);
    school.updateHitbox();
    school.scrollFactor.set(0.6, 0.9);
    addSprite(school, BEHIND_ALL);
    var street = new FlxSprite(-200).loadGraphic(hscriptPath + 'weebStreet.png');
    street.scrollFactor.set(0.95, 0.95);
    street.setGraphicSize(widShit);
    street.updateHitbox();
    addSprite(street, BEHIND_ALL);
    var treesBack = new FlxSprite(-30, 130).loadGraphic(hscriptPath + 'weebTreesBack.png');
    treesBack.setGraphicSize(Std.int(widShit * 0.8));
    treesBack.updateHitbox();
    treesBack.scrollFactor.set(0.9, 0.9);
    addSprite(treesBack, BEHIND_ALL);
    var trees = new FlxSprite(-580, -800);
    var tex = FlxAtlasFrames.fromSpritesheetPacker(hscriptPath + 'weebTrees.png', hscriptPath + 'weebTrees.txt');
    trees.frames = tex;
    trees.animation.add("treeLoop", makeRangeArray(0, 18), 12, true);
    trees.animation.play("treeLoop");
    trees.setGraphicSize(Std.int(widShit * 1.4));
    trees.updateHitbox();
    trees.scrollFactor.set(0.85, 0.85);
    addSprite(trees, BEHIND_ALL);
    var petals = new FlxSprite(-200, -40);
    var petaltex = FlxAtlasFrames.fromSparrow(hscriptPath + 'petals.png', hscriptPath + 'petals.xml');
    petals.frames = petaltex;
    petals.animation.addByPrefix("leaves", "PETALS ALL", 24, true);
    petals.animation.play("leaves");
    petals.scrollFactor.set(0.85, 0.85);
    addSprite(petals, BEHIND_ALL);
    gorls = new FlxSprite(-100, 190);
    var gorlstex = FlxAtlasFrames.fromSparrow(hscriptPath + 'bgFreaks.png', hscriptPath + 'bgFreaks.xml');
    gorls.frames = gorlstex;
    if (SONG.isMoody) {
        gorls.animation.addByIndices("danceLeft","BG fangirls dissuaded", makeRangeArray(0,14),"",24,false);
		gorls.animation.addByIndices("danceRight", "BG fangirls dissuaded", makeRangeArray(15, 30), "", 24, false);
    } else {
		gorls.animation.addByIndices("danceLeft", "BG girls group", makeRangeArray(0, 14), "", 24, false);
		gorls.animation.addByIndices("danceRight", "BG girls group", makeRangeArray(15, 30), "", 24, false);
    }
    gorls.animation.play("danceLeft",true);
    getHaxeActor("bf").x += 200;
    getHaxeActor("bf").y += 220;
    getHaxeActor('gf').x += 180;
    getHaxeActor('gf').y += 300;
    getHaxeActor('bf').followCamX -= 100;
    getHaxeActor('bf').followCamY -= 100;
   
}
var danceDir = false;
function beatHit(beat)
{
    danceDir = !danceDir;
    if (danceDir) {
        gorls.animation.play("danceRight");
    } else {
        gorls.animation.play("danceLeft");
    }
}

function update(elapsed)
{
}

function stepHit(step)
{
}

function playerTwoTurn()
{
}

function playerTwoMiss()
{
}

function playerTwoSing()
{
}

function playerOneTurn()
{
}

function playerOneMiss()
{
}

function playerOneSing()
{
}
