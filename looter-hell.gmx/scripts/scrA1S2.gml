global.stageLevel = 1;
global.numWaves = 5;

scrEmptyWaves();

//WAVE 1
scrAddEnemies(objEnemyRunner,2,cx,cy,128);
scrNewWave();

//WAVE 2
scrAddEnemies(objEnemyGunner,1,cx-128,cy,128);
scrAddEnemies(objEnemyRunner,2,cx,cy,128);
scrNewWave();

//WAVE 3
scrAddEnemies(objEnemyGunner,2,cx-128,cy,128);
scrAddEnemies(objEnemyRunner,2,cx,cy,128);
scrNewWave();

//WAVE 4
scrAddEnemies(objEnemyTurret,2,cx-128,cy,128);
scrAddEnemies(objEnemyRunner,3,cx,cy,128);
scrNewWave();

//WAVE 5
scrAddEnemies(objEnemyGunner,3,cx-128,cy,128);
scrAddEnemies(objEnemyRunner,2,cx,cy,128);
scrNewWave();