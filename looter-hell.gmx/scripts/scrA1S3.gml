global.stageLevel = 1;
global.numWaves = 5;

scrCreateWaves();

//WAVE 1
scrAddEnemies(objEnemyRunner,3,cx,cy,sp);
scrNewWave();

//WAVE 2
scrAddEnemies(objEnemyRunner,2,cx,cy,sp);
scrAddEnemies(objEnemyGunner,2,cx-128,cy,sp);
scrNewWave();

//WAVE 3
scrAddEnemies(objEnemyGunner,3,cx-128,cy,sp);
scrNewWave();

//WAVE 4
scrAddEnemies(objEnemyRunner,2,cx,cy,sp);
scrAddEnemies(objEnemyGunner,3,cx-128,cy,sp);
scrNewWave();

//WAVE 5
scrAddEnemies(objEnemyRunner,4,cx,cy,sp);
scrAddEnemies(objEnemyGunner,3,cx-128,cy,sp);
scrNewWave();