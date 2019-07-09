global.stageLevel = 1;
global.numWaves = 5;

scrCreateWaves();

//WAVE 1
scrAddEnemies(objEnemyRunner,1,cx,cy,sp);
scrNewWave();

//WAVE 2
scrAddEnemies(objEnemyRunner,3,cx,cy,sp);
scrNewWave();

//WAVE 3
scrAddEnemies(objEnemyTurret,1,cx-64,cy,sp);
scrNewWave();

//WAVE 4
scrAddEnemies(objEnemyGunner,2,cx-128,cy,sp);
scrNewWave();

//WAVE 5
scrAddEnemies(objEnemyGunner,2,cx-128,cy,sp);
scrAddEnemies(objEnemyRunner,2,cx,cy,128);
scrNewWave();