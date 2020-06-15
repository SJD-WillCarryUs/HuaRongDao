classdef testThemeAPP < matlab.uitest.TestCase
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
        function test_SelectButtonPushed(testCase)
            normal_pause_time = 0.3;
            longer_pause_time = 1;
            
            testCase.press(testCase.app.Option);
            option_window = testCase.app.ov;
            pause(normal_pause_time);
            testCase.press(option_window.theme);
            theme_window = option_window.tbp;
            pause(normal_pause_time);
            testCase.press(theme_window.theme2);
            pause(longer_pause_time);
            testCase.press(theme_window.theme1);
            pause(longer_pause_time);
            close(theme_window.UIFigure);
            pause(normal_pause_time);
            close(option_window.UIFigure);
        end
    end
end