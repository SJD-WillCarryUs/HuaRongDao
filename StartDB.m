classdef StartDB < handle
    %PositionDB 里面记录了开局的其实位置
    
    
    properties (Access = public)
        mode
        startPosition
        diyPosition
    end
    
    methods (Access = public)
        function position = getStartPosition(process)
           switch process.mode
               case 'hengdaolima'
                   position = {[105 305 190 190],[5 305 90 190],[305 305 90 190],...
                        [5 105 90 190],[305 105 90 190],[105 205 190 90],...
                        [5 5 90 90],[105 105 90 90],[205 105 90 90],[305 5 90 90]};
               case 'qitoubingjin'
                   position = {[105 305 190 190],[5 305 90 190],[305 305 90 190],...
                        [5 5 90 190],[305 5 90 190],[105 105 190 90],...
                        [5 205 90 90],[105 205 90 90],[205 205 90 90],[305 205 90 90]};
               case 'bingfensanlu'
                   position = {[105 305 190 190],[5 205 90 190],[305 205 90 190],...
                        [5 5 90 190],[305 5 90 190],[105 205 190 90],...
                        [5 405 90 90],[305 405 90 90],[105 105 90 90],[205 105 90 90]};
               case 'weierbujian'
                   position = {[105 305 190 190],[5 305 90 190],[5 105 90 190],...
                        [105 5 90 190],[205 5 90 190],[105 205 190 90],...
                        [305 105 90 90],[305 205 90 90],[305 305 90 90],[305 405 90 90]};
               case 'jiezuxiandeng'
                   position = {[105 305 190 190],[5 5 90 190],[105 5 90 190],...
                        [205 5 90 190],[305 5 90 190],[105 205 190 90],...
                        [5 405 90 90],[5 305 90 90],[305 305 90 90],[305 405 90 90]};
               case 'diy'
                   position = process.diyPosition;
           end  
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 此处显示有关此方法的摘要
            %   此处显示详细说明
            outputArg = obj.Property1 + inputArg;
        end
    end
end

