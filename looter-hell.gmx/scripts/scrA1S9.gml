global.stageLevel = 3;
global.numWaves = 1;

scrCreateWaves();

//WAVE 1
scrAddEnemies(objBanditCultist,1,cx-256,cy,sp);
scrNewWave();
scrBossWave(objBanditCultist);
