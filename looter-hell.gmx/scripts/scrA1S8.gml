global.stageLevel = 2;
global.numWaves = 8;

scrCreateWaves();

//WAVE 1
scrAddEnemies(objEnemyRunner,4,cx,cy,sp);
scrAddEnemies(objEnemyGunner,1,cx-128,cy,sp);
scrNewWave();

//WAVE 2
scrAddEnemies(objEnemyRunner,3,cx,cy,sp);
scrAddEnemies(objEnemyGunner,2,cx-128,cy,sp);
scrNewWave();

//WAVE 3
scrAddEnemies(objEnemyRunner,4,cx,cy,sp);
scrAddEnemies(objEnemyGunner,2,cx-128,cy,sp);
scrAddEnemies(objEnemyTurret,2,cx-64,cy,sp*2);
scrNewWave();

//WAVE 4
scrAddEnemies(objEnemyRunner,3,cx,cy,sp);
scrAddEnemies(objEnemyGunner,4,cx-128,cy,sp);
scrNewWave();

//WAVE 5
scrAddEnemies(objEnemyRunner,4,cx,cy,sp);
scrAddEnemies(objEnemyGunner,5,cx-128,cy,sp);
scrNewWave();

//WAVE 6
scrAddEnemies(objEnemyRunner,3,cx,cy,sp);
scrAddEnemies(objEnemyGunner,4,cx-128,cy,sp);
scrAddEnemies(objEnemyTurret,2,cx-64,cy,sp*2);
scrNewWave();

//WAVE 7
scrAddEnemies(objEnemyRunner,2,cx,cy,sp);
scrAddEnemies(objEnemyGunner,2,cx-128,cy,sp);
scrNewWave();

//WAVE 8
scrAddEnemies(objEnemyRunner,4,cx,cy,sp);
scrAddEnemies(objEnemyGunner,3,cx-128,cy,sp);
scrAddEnemies(objEnemyTurret,4,cx-64,cy+128,sp*2);
scrNewWave();