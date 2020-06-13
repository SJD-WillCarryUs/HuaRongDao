classdef testHRDAPP < matlab.uitest.TestCase
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
            % State: No order for the table and no dish selected
            % Input: Choose appetizer 1 and press select button
            % Expected Output: OrderList has appetizer 1's name, amount and
            % unit price
            normal_pause_time = 0.1;
            longer_pause_time = 1;
            
            testCase.press(testCase.app.Option);
            option_window = testCase.app.ov;
            pause(normal_pause_time);
            testCase.press(option_window.theme);
            theme_window = option_window.tbp;
            pause(normal_pause_time);
            testCase.press(theme_window.theme2);
            pause(normal_pause_time);
            testCase.press(theme_window.theme1);
            pause(normal_pause_time);
            close(theme_window.UIFigure);
            pause(normal_pause_time);
            testCase.press(option_window.choose);
            mode_window = option_window.mcv;
            pause(normal_pause_time);
            testCase.press(mode_window.Button);
            pause(normal_pause_time);
            close(mode_window.UIFigure);
            pause(normal_pause_time);
            close(option_window.UIFigure);
            
            playground = testCase.app;
            testCase.press(playground.soldier1);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [250, 250]);
            pause(normal_pause_time);
            testCase.press(playground.Machao);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [250, 400]);
            pause(normal_pause_time);
            testCase.press(playground.Huangzhong);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [350, 350]);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [350, 450]);
            pause(normal_pause_time);
            testCase.press(playground.soldier4);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [350, 150]);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [350, 250]);
            pause(normal_pause_time);
            testCase.press(playground.Guanyu);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [300, 150]);
            pause(normal_pause_time);
            testCase.press(playground.soldier3);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [250, 50]);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [350, 50]);
            testCase.press(playground.soldier2);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [150, 50]);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [250, 50]);
            pause(normal_pause_time);
            testCase.press(playground.Caocao);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [100, 100]);
            pause(normal_pause_time);
            testCase.press(playground.soldier1);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [150, 250]);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [50, 250]);
            testCase.press(playground.soldier4);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [250, 250]);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [150, 250]);
            pause(normal_pause_time);
            testCase.press(playground.Guanyu);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [300, 250]);
            pause(normal_pause_time);
            testCase.press(playground.soldier2);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [250, 150]);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [350, 150]);
            pause(normal_pause_time);
            testCase.press(playground.Caocao);
            pause(normal_pause_time);
            testCase.press(playground.UIFigure, [250, 100]);
            pause(longer_pause_time);
            close(playground.gameProcess.gameover_view.UIFigure);
            
            testCase.press(testCase.app.Option);
            option_window = testCase.app.ov;
            pause(normal_pause_time);
            testCase.press(option_window.resume);
            close(option_window.UIFigure);
            pause(longer_pause_time);
            % close(optionWindow);
%             testCase.choose(testCase.app.appetizer1Node);
%             pause(0.5)
%             testCase.press(testCase.app.SelectButton);
%             pause(0.5)
%             testCase.verifyEqual(testCase.app.OrderList.Data{1},testCase.app.appetizer1Node.Text);
%              testCase.verifyEqual(testCase.app.OrderList.Data{2},1);
%               testCase.verifyEqual(testCase.app.OrderList.Data{3},testCase.app.appetizer1Node.NodeData);
        end
        
    end
    
end