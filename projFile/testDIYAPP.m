classdef testDIYAPP < matlab.uitest.TestCase
    properties
        app
    end
    
    methods (TestMethodSetup)
        function launchApp(testCase)
            Position = {[105 305 190 190],[5 305 90 190],[305 305 90 190],...
                [5 105 90 190],[305 105 90 190],[105 205 190 90],...
                [5 5 90 90],[105 105 90 90],[205 105 90 90],[305 5 90 90]};
            sdb = StartDB;
            sdb.mode = 'hengdaolima';
            sdb.startPosition = Position;
            db = ChessDB;
            gp = GameProcess;
            testCase.app = GameView;

            db.position = Position;
            db.step = 0;
            gp.gameview = testCase.app;
            gp.chessDB = db;
            testCase.app.gameProcess = gp;
            testCase.app.chessDB = db;
            testCase.app.startDB = sdb;
            testCase.addTeardown(@delete,testCase.app);
        end
    end
    
    methods (Test)
        function testDIY(testCase)
            normal_pause_time = 0.3;
            longer_pause_time = 1;
            
            testCase.press(testCase.app.Option);
            option_window = testCase.app.ov;
            pause(normal_pause_time);
            testCase.press(option_window.diy);
            diy_window = option_window.DIY;
            pause(normal_pause_time);
            testCase.press(diy_window.creat);
            create_window = diy_window.create;
            pause(normal_pause_time);
            
            testCase.press(diy_window.Button);  % zhangfei
            pause(normal_pause_time);
            testCase.press(create_window.UIFigure, [50, 350]);
            pause(normal_pause_time);
            testCase.press(diy_window.Button_2);  % zhaoyun
            pause(normal_pause_time);
            testCase.press(create_window.UIFigure, [350, 350]);
            pause(normal_pause_time);
            testCase.press(diy_window.Button_8);  % guanyu
            pause(normal_pause_time);
            testCase.press(create_window.UIFigure, [150, 250]);
            pause(normal_pause_time);
            testCase.press(diy_window.Button_5);  % zu1
            pause(normal_pause_time);
            testCase.press(create_window.UIFigure, [50, 250]);
            pause(normal_pause_time);
            testCase.press(diy_window.Button_9);  % zu2
            pause(normal_pause_time);
            testCase.press(create_window.UIFigure, [50, 150]);
            pause(normal_pause_time);
            testCase.press(diy_window.Button_6);  % zu3
            pause(normal_pause_time);
            testCase.press(create_window.UIFigure, [50, 50]);
            pause(normal_pause_time);
            testCase.press(diy_window.Button_3);  % huangzhong
            pause(normal_pause_time);
            testCase.press(create_window.UIFigure, [150, 50]);
            pause(normal_pause_time);
            testCase.press(diy_window.Button_4);  % machao
            pause(normal_pause_time);
            testCase.press(create_window.UIFigure, [250, 50]);
            pause(normal_pause_time);
            testCase.press(diy_window.Button_7);  % zu4
            pause(normal_pause_time);
            testCase.press(create_window.UIFigure, [350, 250]);
            pause(normal_pause_time);
            
            testCase.press(diy_window.ok);
            pause(normal_pause_time);
            close(create_window.UIFigure);
            pause(normal_pause_time);
            close(diy_window.UIFigure);
            pause(normal_pause_time);

            testCase.press(testCase.app.solvebyAI);
            pause(longer_pause_time);
            playground = testCase.app;
            testCase.press(playground.Machao);
            pause(longer_pause_time);
            testCase.press(playground.UIFigure, [350, 100]);
             pause(longer_pause_time);
            testCase.press(option_window.resume);
            pause(longer_pause_time);
            close(option_window.UIFigure);
        end
    end
end