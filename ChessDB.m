classdef ChessDB < handle
    %UNTITLED5 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties (Access = public)
        step % 当前移动的步数
        position % 当前布局信息，为一个大小为10的数组 
        id
        currentLocate % 当前布局信息转换为一个矩阵
        currentChess % 当前选中的要移动的滑块
        nextPosition % 选中滑块的下一个位置
    end
    
    methods
    
    end
end

