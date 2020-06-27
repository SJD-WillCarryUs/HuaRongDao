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
        function testNextPosition1(testCase) % T1.2.3.1
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
    end
end