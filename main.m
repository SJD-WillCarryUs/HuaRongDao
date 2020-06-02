close all
clear

Position = {[105 305 190 190],[5 305 90 190],[305 305 90 190],...
    [5 105 90 190],[305 105 90 190],[105 205 190 90],...
    [5 5 90 90],[105 105 90 90],[205 105 90 90],[305 5 90 90]};
sdb = StartDB;
sdb.mode = 'hengdaolima';
sdb.startPosition = Position;
db = ChessDB;
gp = GameProcess;
app = GameView;

db.position = Position;
db.step = 0;

gp.gameview=app;
gp.chessDB=db;

app.gameProcess=gp;
app.chessDB=db;
app.startDB = sdb;

