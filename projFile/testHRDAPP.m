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
            % testCase.addTeardown(@delete,testCase.app);
        end
    end
    methods (Test)
        function test_SelectButtonPushed(testCase)
            % State: No order for the table and no dish selected
            % Input: Choose appetizer 1 and press select button
            % Expected Output: OrderList has appetizer 1's name, amount and
            % unit price
            
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