classdef GameProcess < handle
 
    properties
        chessDB
        gameview
    end
    
    methods
        function board = transMatrix(process,position)
            % transMatrix 函数可以将棋盘布局转换为一个4*5的矩阵，空出来的地方为0            
            board = zeros(5,4);

            %曹操
            item = position{1};
            y = (item(1)-5)/100+1;
            x = (item(2)-5)/100+1;
            board(5-x:6-x,y:y+1) = [1,1;1,1];

            %关羽
            item = position{6};
            y = (item(1)-5)/100+1;
            x = (item(2)-5)/100+1;
            board(6-x,y:y+1) = [1,1];

            %张飞、黄忠、赵云、马超
            for i = 2:5
                item = position{i};
                y = (item(1)-5)/100+1;
                x = (item(2)-5)/100+1;
                board(5-x:6-x,y) = [1;1];
            end

            %士兵
            for i = 7:10
                item = position{i};
                y = (item(1)-5)/100+1;
                x = (item(2)-5)/100+1;
                board(6-x,y) = 1;
            end
        end

        function currentchess = getCurrentChess(process,id,position)
            % 此函数将获得当前选择的滑块的位置坐标
            currentchess = position(id);
        end
        
        function nextPosition = move(process,clickPoint)
            currentChess = process.chessDB.currentChess{1};
            if (1<clickPoint(1)&&clickPoint(1)<399)&&(1<clickPoint(2)&&clickPoint(2)<499)
                %曹操移动
                if currentChess(3)==190 && currentChess(4)==190
                    %向上移动
                    if clickPoint(1)-currentChess(1) >0 && clickPoint(1)-currentChess(1) <200 ...
                        && clickPoint(2)-currentChess(2)>200 && clickPoint(2)-currentChess(2)<300       
                        nextPosition=[currentChess(1) currentChess(2)+100 currentChess(3) currentChess(4)];
                    %向下移动
                    elseif clickPoint(1)-currentChess(1)>0 && clickPoint(1)-currentChess(1)<200 ...
                        && clickPoint(2)-currentChess(2)<0 && clickPoint(2)-currentChess(2)>-100      
                        nextPosition=[currentChess(1) currentChess(2)-100 currentChess(3) currentChess(4)];
                    %向左移动
                    elseif clickPoint(1)-currentChess(1)>-100&&clickPoint(1)-currentChess(1)<0 ... 
                        && clickPoint(2)-currentChess(2)>0&&clickPoint(2)-currentChess(2)<200     
                        nextPosition=[currentChess(1)-100 currentChess(2) currentChess(3) currentChess(4)];
                    %向右移动
                    elseif clickPoint(1)-currentChess(1)>200&&clickPoint(1)-currentChess(1)<300 ...
                        && clickPoint(2)-currentChess(2)>0 && clickPoint(2)-currentChess(2)<200      
                        nextPosition=[currentChess(1)+100 currentChess(2) currentChess(3) currentChess(4)];
                    else
                        nextPosition = [currentChess(1) currentChess(2) currentChess(3) currentChess(4)];
                    end

                %关羽移动
                elseif currentChess(3)==190 && currentChess(4)==90
                    %向上移动
                    if clickPoint(1)-currentChess(1) >0 && clickPoint(1)-currentChess(1) <200 ...
                        && clickPoint(2)-currentChess(2)>100 && clickPoint(2)-currentChess(2)<200       
                        nextPosition=[currentChess(1) currentChess(2)+100 currentChess(3) currentChess(4)];
                    %向下移动
                    elseif clickPoint(1)-currentChess(1)>0 && clickPoint(1)-currentChess(1)<200 ...
                        && clickPoint(2)-currentChess(2)<0 && clickPoint(2)-currentChess(2)>-100      
                        nextPosition=[currentChess(1) currentChess(2)-100 currentChess(3) currentChess(4)];
                    %向左移动
                    elseif clickPoint(1)-currentChess(1)>-100&&clickPoint(1)-currentChess(1)<0 ... 
                        && clickPoint(2)-currentChess(2)>0&&clickPoint(2)-currentChess(2)<100     
                        nextPosition=[currentChess(1)-100 currentChess(2) currentChess(3) currentChess(4)];
                    %向右移动
                    elseif clickPoint(1)-currentChess(1)>200&&clickPoint(1)-currentChess(1)<300 ...
                        && clickPoint(2)-currentChess(2)>0 && clickPoint(2)-currentChess(2)<100      
                        nextPosition=[currentChess(1)+100 currentChess(2) currentChess(3) currentChess(4)];
                    else
                        nextPosition = [currentChess(1) currentChess(2) currentChess(3) currentChess(4)];
                    end

                %张飞赵云马超黄忠移动
                elseif currentChess(3)==90 && currentChess(4)==190
                    %向上移动
                    if clickPoint(1)-currentChess(1) >0 && clickPoint(1)-currentChess(1) <200 ...
                        && clickPoint(2)-currentChess(2)>200 && clickPoint(2)-currentChess(2)<300       
                        nextPosition=[currentChess(1) currentChess(2)+100 currentChess(3) currentChess(4)];
                    %向下移动
                    elseif clickPoint(1)-currentChess(1)>0 && clickPoint(1)-currentChess(1)<100 ...
                        && clickPoint(2)-currentChess(2)<0 && clickPoint(2)-currentChess(2)>-100      
                        nextPosition=[currentChess(1) currentChess(2)-100 currentChess(3) currentChess(4)];
                    %向左移动
                    elseif clickPoint(1)-currentChess(1)>-100 && clickPoint(1)-currentChess(1)<0 ... 
                        && clickPoint(2)-currentChess(2)>0&&clickPoint(2)-currentChess(2)<200   
                        nextPosition=[currentChess(1)-100 currentChess(2) currentChess(3) currentChess(4)];
                    %向右移动
                    elseif clickPoint(1)-currentChess(1)>100 && clickPoint(1)-currentChess(1)<200 ... 
                        && clickPoint(2)-currentChess(2)>0&&clickPoint(2)-currentChess(2)<200   
                        nextPosition=[currentChess(1)+100 currentChess(2) currentChess(3) currentChess(4)];
                    else
                        nextPosition = [currentChess(1) currentChess(2) currentChess(3) currentChess(4)];
                    end

                %士兵移动
                elseif currentChess(3)==90 && currentChess(4)==90
                    %向上移动
                    if clickPoint(1)-currentChess(1) >0 && clickPoint(1)-currentChess(1) <100 ...
                        && clickPoint(2)-currentChess(2)>100 && clickPoint(2)-currentChess(2)<200       
                        nextPosition=[currentChess(1) currentChess(2)+100 currentChess(3) currentChess(4)];
                    %向下移动
                    elseif clickPoint(1)-currentChess(1)>0 && clickPoint(1)-currentChess(1)<100 && clickPoint(2)-currentChess(2)<0 && clickPoint(2)-currentChess(2)>-100
                        nextPosition=[currentChess(1) currentChess(2)-100 currentChess(3) currentChess(4)];
                    %向左移动
                    elseif clickPoint(1)-currentChess(1)>-100&&clickPoint(1)-currentChess(1)<0 ... 
                        && clickPoint(2)-currentChess(2)>0&&clickPoint(2)-currentChess(2)<100     
                        nextPosition=[currentChess(1)-100 currentChess(2) currentChess(3) currentChess(4)];
                    %向右移动
                    elseif clickPoint(1)-currentChess(1)>100&&clickPoint(1)-currentChess(1)<200 ...
                        && clickPoint(2)-currentChess(2)>0 && clickPoint(2)-currentChess(2)<100      
                        nextPosition=[currentChess(1)+100 currentChess(2) currentChess(3) currentChess(4)];
                    else
                        nextPosition = [currentChess(1) currentChess(2) currentChess(3) currentChess(4)];
                    end
                end
            end
        end
        
        function judge(process)
            % 此函数将判断滑块的移动是否符合规则
            process.chessDB.position{process.chessDB.id}=process.chessDB.nextPosition;
            board = process.transMatrix(process.chessDB.position);
            if sum(board(:)==0) ~= 2
                process.chessDB.position(process.chessDB.id)=process.chessDB.currentChess;
            else
                if isequal(board,process.chessDB.currentLocate)
                else
                    process.chessDB.step = process.chessDB.step + 1;
                    process.gameview.StepButton.Text=num2str(process.chessDB.step);
                    switch process.chessDB.id
                        case 1
                            process.gameview.Caocao.Position = process.chessDB.nextPosition;
                        case 2
                            process.gameview.Zhangfei.Position = process.chessDB.nextPosition;
                        case 3
                            process.gameview.Zhaoyun.Position = process.chessDB.nextPosition;
                        case 4
                            process.gameview.Machao.Position = process.chessDB.nextPosition;
                        case 5
                            process.gameview.Huangzhong.Position = process.chessDB.nextPosition;
                        case 6
                            process.gameview.Guanyu.Position = process.chessDB.nextPosition;
                        case 7
                            process.gameview.soldier1.Position = process.chessDB.nextPosition;
                        case 8
                            process.gameview.soldier4.Position = process.chessDB.nextPosition;
                        case 9
                            process.gameview.soldier2.Position = process.chessDB.nextPosition;
                        case 10
                            process.gameview.soldier3.Position = process.chessDB.nextPosition;
                    end
                    if process.chessDB.nextPosition(3:4)==[190 190]
                        if process.chessDB.nextPosition(1:2)==[105 5]
                            gameover();
                        end
                    end
                end
            end
        end
    end
end

