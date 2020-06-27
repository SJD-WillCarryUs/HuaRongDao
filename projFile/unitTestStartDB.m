classdef unitTestStartDB < matlab.unittest.TestCase
    methods (Test)
        function testGetStartPosition1(testCase) % T1.1.1.1
            % State: mode = 'hengdaolima'
            % Input: None
            % Expected Output: Corresponding position in StartDB
            db = StartDB;
            db.mode = 'hengdaolima';
            od = db.getStartPosition();
            testCase.verifyEqual(od,{[105 305 190 190],[5 305 90 190],[305 305 90 190],...
                        [5 105 90 190],[305 105 90 190],[105 205 190 90],...
                        [5 5 90 90],[105 105 90 90],[205 105 90 90],[305 5 90 90]});
        end
        function testGetStartPosition2(testCase) % T1.1.1.2
            % State: mode = 'qitoubingjin'
            % Input: None
            % Expected Output: Corresponding position in StartDB
            db = StartDB;
            db.mode = 'qitoubingjin';
            od = db.getStartPosition();
            testCase.verifyEqual(od,{[105 305 190 190],[5 305 90 190],[305 305 90 190],...
                        [5 5 90 190],[305 5 90 190],[105 105 190 90],...
                        [5 205 90 90],[105 205 90 90],[205 205 90 90],[305 205 90 90]});
        end
        function testGetStartPosition3(testCase) % T1.1.1.3
            % State: mode = 'bingfensanlu'
            % Input: None
            % Expected Output: Corresponding position in StartDB
            db = StartDB;
            db.mode = 'bingfensanlu';
            od = db.getStartPosition();
            testCase.verifyEqual(od,{[105 305 190 190],[5 205 90 190],[305 205 90 190],...
                        [5 5 90 190],[305 5 90 190],[105 205 190 90],...
                        [5 405 90 90],[305 405 90 90],[105 105 90 90],[205 105 90 90]});
        end
        function testGetStartPosition4(testCase) % T1.1.1.4
            % State: mode = 'weierbujian'
            % Input: None
            % Expected Output: Corresponding position in StartDB
            db = StartDB;
            db.mode = 'weierbujian';
            od = db.getStartPosition();
            testCase.verifyEqual(od,{[105 305 190 190],[5 305 90 190],[5 105 90 190],...
                        [105 5 90 190],[205 5 90 190],[105 205 190 90],...
                        [305 105 90 90],[305 205 90 90],[305 305 90 90],[305 405 90 90]});
        end
        function testGetStartPosition5(testCase) % T1.1.1.5
            % State: mode = 'jiezuxiandeng'
            % Input: None
            % Expected Output: Corresponding position in StartDB
            db = StartDB;
            db.mode = 'jiezuxiandeng';
            od = db.getStartPosition();
            testCase.verifyEqual(od,{[105 305 190 190],[5 5 90 190],[105 5 90 190],...
                        [205 5 90 190],[305 5 90 190],[105 205 190 90],...
                        [5 405 90 90],[5 305 90 90],[305 305 90 90],[305 405 90 90]});
        end
        function testGetStartPosition6(testCase) % T1.1.1.6
            % State: mode = 'test'
            % Input: None
            % Expected Output: Corresponding position in StartDB
            db = StartDB;
            db.mode = 'test';
            od = db.getStartPosition();
            testCase.verifyEqual(od,{[5 105 190 190],[5 305 90 190],[105 305 90 190],...
                        [305 305 90 190],[305 105 90 190],[205 5 190 90],...
                        [205 305 90 90],[205 105 90 90],[5 5 90 90],[105 5 90 90]});
        end
        function testGetStartPosition7(testCase) % T1.1.1.7
            % State: mode = 'diy', diyPosition = position matrix
            % Input: None
            % Expected Output: Same as diyPosition
            db = StartDB;
            db.mode = 'diy';
            db.diyPosition = {[5 105 190 190],[5 305 90 190],[105 305 90 190],...
                        [305 305 90 190],[305 105 90 190],[205 5 190 90],...
                        [205 305 90 90],[205 105 90 90],[5 5 90 90],[105 5 90 90]};
            od = db.getStartPosition();
            testCase.verifyEqual(od,{[5 105 190 190],[5 305 90 190],[105 305 90 190],...
                        [305 305 90 190],[305 105 90 190],[205 5 190 90],...
                        [205 305 90 90],[205 105 90 90],[5 5 90 90],[105 5 90 90]});
        end
    end
end