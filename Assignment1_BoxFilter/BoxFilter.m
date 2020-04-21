% Function {out parameter}={function name}(in parameter}
%
% input parameter definition
% im = input image
% sizeofkernel = Size of Kernel
%
% output parameter definition
% output = output image
%
function [output]=BoxFilter(im, sizeofkernel)

    kernel = ones(sizeofkernel);
    kernel = kernel / sum(sum(kernel));
    center = round(sizeofkernel/2);
    
    [height, width] = size(im);
    [heightofKernel, widthofKernel] = size(kernel);
    
    output = zeros(height, width);
    
    for y = center:(height - (center - 1))
        for x = center:(width - (center - 1))
            
            for i = 1:heightofKernel
                for j = 1:widthofKernel
                    output(y,x) = output(y,x) + kernel(i,j)*im(y+(i-center), x+(j-center));
                end
            end
        end
    end
    


    % kernel generation part
    % kernel = ones(sizeofkernel); 
    % [ksizey,ksizex] = size(kernel);
    % kernel = kernel / (ksizey*ksizex);
    %fprintf('sum of kernel coefficient is %d', sum(sum(kernel)));
    % center is the anchor point of the kernel 
    % e.g., 5x5 -> center = 3
    %       3x3 -> center = 2
	%
	% fill the following "center" code
	% center = ?????
	% write your own code here
    
    % [height, width]=size(im);
    
    % output = zeros(height, width);
    % F(x,y)
	% fill the following four for routine
	% write your own code here
    
end