classdef GameProcess < handle
 
    properties
        chessDB
        gameview
        gameover_view
    end
    
    methods
        function board = transMatrix(~,position)
            % translate the board into a 4*5 matrix           
            board = zeros(5,4);

            %2*2
            item = position{1};
            y = (item(1)-5)/100+1;
            x = (item(2)-5)/100+1;
            board(5-x:6-x,y:y+1) = [1,1;1,1];

            %1*2
            item = position{6};
            y = (item(1)-5)/100+1;
            x = (item(2)-5)/100+1;
            board(6-x,y:y+1) = [6,6];

            %2*1
            for i = 2:5
                item = position{i};
                y = (item(1)-5)/100+1;
                x = (item(2)-5)/100+1;
                board(5-x:6-x,y) = [i;i];
            end

            %1*1
            for i = 7:10
                item = position{i};
                y = (item(1)-5)/100+1;
                x = (item(2)-5)/100+1;
                board(6-x,y) = i;
            end
        end

        function currentchess = getCurrentChess(~,id,position)
            % get the position of the chess 
            currentchess = position(id);
        end
        
        function nextPosition = move(process,clickPoint)
            currentChess = process.chessDB.currentChess{1};
            if (1<clickPoint(1)&&clickPoint(1)<399)&&(1<clickPoint(2)&&clickPoint(2)<499)
                %2*2
                if currentChess(3)==190 && currentChess(4)==190
                    %up
                    if clickPoint(1)-currentChess(1) >0 && clickPoint(1)-currentChess(1) <200 ...
                        && clickPoint(2)-currentChess(2)>200 && clickPoint(2)-currentChess(2)<300       
                        nextPosition=[currentChess(1) currentChess(2)+100 currentChess(3) currentChess(4)];
                    %down
                    elseif clickPoint(1)-currentChess(1)>0 && clickPoint(1)-currentChess(1)<200 ...
                        && clickPoint(2)-currentChess(2)<0 && clickPoint(2)-currentChess(2)>-100      
                        nextPosition=[currentChess(1) currentChess(2)-100 currentChess(3) currentChess(4)];
                    %left
                    elseif clickPoint(1)-currentChess(1)>-100&&clickPoint(1)-currentChess(1)<0 ... 
                        && clickPoint(2)-currentChess(2)>0&&clickPoint(2)-currentChess(2)<200     
                        nextPosition=[currentChess(1)-100 currentChess(2) currentChess(3) currentChess(4)];
                    %right
                    elseif clickPoint(1)-currentChess(1)>200&&clickPoint(1)-currentChess(1)<300 ...
                        && clickPoint(2)-currentChess(2)>0 && clickPoint(2)-currentChess(2)<200      
                        nextPosition=[currentChess(1)+100 currentChess(2) currentChess(3) currentChess(4)];
                    else
                        nextPosition = [currentChess(1) currentChess(2) currentChess(3) currentChess(4)];
                    end

                %1*2
                elseif currentChess(3)==190 && currentChess(4)==90
                    %up
                    if clickPoint(1)-currentChess(1) >0 && clickPoint(1)-currentChess(1) <200 ...
                        && clickPoint(2)-currentChess(2)>100 && clickPoint(2)-currentChess(2)<200       
                        nextPosition=[currentChess(1) currentChess(2)+100 currentChess(3) currentChess(4)];
                    %down
                    elseif clickPoint(1)-currentChess(1)>0 && clickPoint(1)-currentChess(1)<200 ...
                        && clickPoint(2)-currentChess(2)<0 && clickPoint(2)-currentChess(2)>-100      
                        nextPosition=[currentChess(1) currentChess(2)-100 currentChess(3) currentChess(4)];
                    %left
                    elseif clickPoint(1)-currentChess(1)>-100&&clickPoint(1)-currentChess(1)<0 ... 
                        && clickPoint(2)-currentChess(2)>0&&clickPoint(2)-currentChess(2)<100     
                        nextPosition=[currentChess(1)-100 currentChess(2) currentChess(3) currentChess(4)];
                    %right
                    elseif clickPoint(1)-currentChess(1)>200&&clickPoint(1)-currentChess(1)<300 ...
                        && clickPoint(2)-currentChess(2)>0 && clickPoint(2)-currentChess(2)<100      
                        nextPosition=[currentChess(1)+100 currentChess(2) currentChess(3) currentChess(4)];
                    else
                        nextPosition = [currentChess(1) currentChess(2) currentChess(3) currentChess(4)];
                    end

                %2*1
                elseif currentChess(3)==90 && currentChess(4)==190
                    %up
                    if clickPoint(1)-currentChess(1) >0 && clickPoint(1)-currentChess(1) <200 ...
                        && clickPoint(2)-currentChess(2)>200 && clickPoint(2)-currentChess(2)<300       
                        nextPosition=[currentChess(1) currentChess(2)+100 currentChess(3) currentChess(4)];
                    %up
                    elseif clickPoint(1)-currentChess(1)>0 && clickPoint(1)-currentChess(1)<100 ...
                        && clickPoint(2)-currentChess(2)<0 && clickPoint(2)-currentChess(2)>-100      
                        nextPosition=[currentChess(1) currentChess(2)-100 currentChess(3) currentChess(4)];
                    %up
                    elseif clickPoint(1)-currentChess(1)>-100 && clickPoint(1)-currentChess(1)<0 ... 
                        && clickPoint(2)-currentChess(2)>0&&clickPoint(2)-currentChess(2)<200   
                        nextPosition=[currentChess(1)-100 currentChess(2) currentChess(3) currentChess(4)];
                    %up
                    elseif clickPoint(1)-currentChess(1)>100 && clickPoint(1)-currentChess(1)<200 ... 
                        && clickPoint(2)-currentChess(2)>0&&clickPoint(2)-currentChess(2)<200   
                        nextPosition=[currentChess(1)+100 currentChess(2) currentChess(3) currentChess(4)];
                    else
                        nextPosition = [currentChess(1) currentChess(2) currentChess(3) currentChess(4)];
                    end

                %1*1
                elseif currentChess(3)==90 && currentChess(4)==90
                    %up
                    if clickPoint(1)-currentChess(1) >0 && clickPoint(1)-currentChess(1) <100 ...
                        && clickPoint(2)-currentChess(2)>100 && clickPoint(2)-currentChess(2)<200       
                        nextPosition=[currentChess(1) currentChess(2)+100 currentChess(3) currentChess(4)];
                    %down
                    elseif clickPoint(1)-currentChess(1)>0 && clickPoint(1)-currentChess(1)<100 && clickPoint(2)-currentChess(2)<0 && clickPoint(2)-currentChess(2)>-100
                        nextPosition=[currentChess(1) currentChess(2)-100 currentChess(3) currentChess(4)];
                    %left
                    elseif clickPoint(1)-currentChess(1)>-100&&clickPoint(1)-currentChess(1)<0 ... 
                        && clickPoint(2)-currentChess(2)>0&&clickPoint(2)-currentChess(2)<100     
                        nextPosition=[currentChess(1)-100 currentChess(2) currentChess(3) currentChess(4)];
                    %right
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
            % judge whether the move is legal
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
                            process.gameover_view = gameover;
                        end
                    end
                end
            end
        end
           
    end
end


