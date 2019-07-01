global.stageLevel = 2;
global.numWaves = 5;

scrEmptyWaves();

//WAVE 1
scrAddEnemies(objEnemyRunner,2,cx,cy,128);
scrNewWave();

//WAVE 2
scrAddEnemies(objEnemyRunner,3,cx,cy,128);
scrAddEnemies(objEnemyGunner,1,cx-128,cy,128);
scrNewWave();

//WAVE 3
scrAddEnemies(objEnemyRunner,2,cx,cy,128);
scrAddEnemies(objEnemyGunner,2,cx-128,cy,128);
scrNewWave();

//WAVE 4
scrAddEnemies(objEnemyRunner,3,cx,cy,128);
scrAddEnemies(objEnemyGunner,3,cx-128,cy,128);
scrNewWave();

//WAVE 5
scrAddEnemies(objEnemyRunner,3,cx,cy,128);
scrAddEnemies(objEnemyGunner,3,cx-128,cy,128);
scrAddEnemies(objEnemyTurret,2,cx-64,cy,128);
scrNewWave();