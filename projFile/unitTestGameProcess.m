classdef unitTestGameProcess < matlab.unittest.TestCase
    methods (Test)
        function testTransMatrix(testCase) % T1.2.1.1
            % State: Any
            % Input: Positions of all chesses
            % Expected Output: Corresponding matrix for the position
            gp = GameProcess;
            positions = {[105 305 190 190],[5 305 90 190],[305 305 90 190],...
                        [5 105 90 190],[305 105 90 190],[105 205 190 90],...
                        [5 5 90 90],[105 105 90 90],[205 105 90 90],[305 5 90 90]};
            od = gp.transMatrix(positions);
            testCase.verifyEqual(od, [2 1 1 3; 2 1 1 3; 4 6 6 5; 4 8 9 5; 7 0 0 10]);
        end
        
        function testGetCurrentChess(testCase) % T1.2.2.1
            % State: Any
            % Input: id of a chess, positions of all chesses
            % Expected Output: Chess position specified by id
            gp = GameProcess;
            id = 1;
            positions = {[105 305 190 190],[5 305 90 190],[305 305 90 190],...
                        [5 105 90 190],[305 105 90 190],[105 205 190 90],...
                        [5 5 90 90],[105 105 90 90],[205 105 90 90],[305 5 90 90]};
            od = gp.getCurrentChess(id, positions);
            testCase.verifyEqual(od, {[105 305 190 190]});
        end
        
        function testMove1(testCase) % T1.2.3.1
            % State: 2*2 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[5 105 190 190]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [105, 355];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [5 205 190 190]);
        end
        function testMove2(testCase) % T1.2.3.2
            % State: 2*2 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[105 305 190 190]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [205, 255];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [105 205 190 190]);
        end
        function testMove3(testCase) % T1.2.3.3
            % State: 2*2 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[105 305 190 190]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [55, 355];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [5 305 190 190]);
        end
        function testMove4(testCase) % T1.2.3.4
            % State: 2*2 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[105 305 190 190]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [355, 355];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [205 305 190 190]);
        end
        function testMove5(testCase) % T1.2.3.5
            % State: 2*2 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[105 305 190 190]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [205, 380];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [105 305 190 190]);
        end
        function testMove6(testCase) % T1.2.3.6
            % State: 1*2 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[105 205 190 90]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [205, 355];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [105 305 190 90]);
        end
        function testMove7(testCase) % T1.2.3.7
            % State: 1*2 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[105 205 190 90]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [205, 155];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [105 105 190 90]);
        end
        function testMove8(testCase) % T1.2.3.8
            % State: 1*2 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[105 205 190 90]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [55, 255];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [5 205 190 90]);
        end
        function testMove9(testCase) % T1.2.3.9
            % State: 1*2 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[105 205 190 90]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [355, 255];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [205 205 190 90]);
        end
        function testMove10(testCase) % T1.2.3.10
            % State: 1*2 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[105 205 190 90]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [205, 255];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [105 205 190 90]);
        end
        function testMove11(testCase) % T1.2.3.11
            % State: 2*1 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[5 105 90 190]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [105, 355];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [5 205 90 190]);
        end
        function testMove12(testCase) % T1.2.3.12
            % State: 2*1 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[5 105 90 190]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [55, 55];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [5 5 90 190]);
        end
        function testMove13(testCase) % T1.2.3.13
            % State: 2*1 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[305 105 90 190]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [255, 205];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [205 105 90 190]);
        end
        function testMove14(testCase) % T1.2.3.14
            % State: 2*1 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[5 105 90 190]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [155, 205];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [105 105 90 190]);
        end
        function testMove15(testCase) % T1.2.3.15
            % State: 2*1 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[5 105 90 190]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [105, 205];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [5 105 90 190]);
        end
        function testMove16(testCase) % T1.2.3.16
            % State: 1*1 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[205 105 90 90]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [255, 255];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [205 205 90 90]);
        end
        function testMove17(testCase) % T1.2.3.17
            % State: 1*1 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[205 105 90 90]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [255, 55];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [205 5 90 90]);
        end
        function testMove18(testCase) % T1.2.3.18
            % State: 1*1 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[205 105 90 90]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [155, 155];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [105 105 90 90]);
        end
        function testMove19(testCase) % T1.2.3.19
            % State: 1*1 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[205 105 90 90]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [355, 155];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [305 105 90 90]);
        end
        function testMove20(testCase) % T1.2.3.20
            % State: 1*1 Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[205 105 90 90]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [255, 155];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [205 105 90 90]);
        end
        function testMove21(testCase) % T1.2.3.21
            % State: Chess in one particular position
            % Input: The coordinate of the click point
            % Expected Output: The next coordinate of the chess
            gp = GameProcess;
            currentChess = {[205 105 90 90]};
            gp.chessDB = ChessDB;
            gp.chessDB.currentChess = currentChess;
            click_point = [0, 0];
            od = gp.move(click_point);
            testCase.verifyEqual(od, [205 105 90 90]);
        end
        
        function testJudge1(testCase) % T1.2.4.1
            % State: Chess in one particular position and try make illegal
            % movement
            % Input: None
            % Expected Output: The chess does not move
            gp = GameProcess;
            gp.chessDB = ChessDB;
            gp.chessDB.id = 2;
            gp.chessDB.nextPosition = [105 305 190 190];
            gp.chessDB.currentChess  = {[5 305 90 190]};
            gp.chessDB.position = {[105 305 190 190],[5 305 90 190],[305 305 90 190],...
                        [5 105 90 190],[305 105 90 190],[105 205 190 90],...
                        [5 5 90 90],[105 105 90 90],[205 105 90 90],[305 5 90 90]};
            gp.judge();
            testCase.verifyEqual(gp.chessDB.position(gp.chessDB.id), ...
                {[5 305 90 190]});
        end
        function testJudge2(testCase) % T1.2.4.2
            % State: Chess in one particular position and try to move to
            % itself
            % Input: None
            % Expected Output: The chess does not move
            gp = GameProcess;
            gp.chessDB = ChessDB;
            gp.chessDB.id = 2;
            gp.chessDB.nextPosition = [5 305 90 190];
            gp.chessDB.position = {[105 305 190 190],[5 305 90 190],[305 305 90 190],...
                        [5 105 90 190],[305 105 90 190],[105 205 190 90],...
                        [5 5 90 90],[105 105 90 90],[205 105 90 90],[305 5 90 90]};
            gp.judge();
            testCase.verifyEqual(gp.chessDB.position(gp.chessDB.id), ...
                {[5 305 90 190]});
        end
        function testJudge3(testCase) % T1.2.4.3
            % State: Chess in one particular position and try making a
            % legal movement
            % Input: None
            % Expected Output: The chess moves to the next position, the
            % step adds 1
            gp = GameProcess;
            gv = GameView;
            gp.gameview = gv;
            gp.chessDB = ChessDB;
            gp.chessDB.id = 7;
            gp.chessDB.step = 0;
            gp.chessDB.nextPosition = [105 5 90 90];
            gp.chessDB.position = {[105 305 190 190],[5 305 90 190],[305 305 90 190],...
                        [5 105 90 190],[305 105 90 190],[105 205 190 90],...
                        [5 5 90 90],[105 105 90 90],[205 105 90 90],[305 5 90 90]};
            gp.judge();
            close(gp.gameview.UIFigure);
            testCase.verifyEqual(gp.chessDB.position(gp.chessDB.id), ...
                {[105 5 90 90]});
            testCase.verifyEqual(gp.chessDB.step, 1);
        end
    end
end