% Omar Farrag
% Worksheet 4, Work for Problem 1
% Note: this file name is note labeled Problem 1, but this is all the work
% that corresponds to answering/doing problem 1 on Worksheet 4

function [U1,V1] = myQuiver(x0,x1,y0,y1,h,dy,dx,scale)

% Part a: Setting up the meshGrid
X = x0:h:x1;
Y = y0:h:y1;
[X,Y] = meshgrid(X,Y);

% Parts b and c: We assume that we define U and V as matrices as follows
U = dx(X,Y);
V = dy(X,Y);
 
% Part d: We create the matrix L that essentially gives the lengths of the vectors
% U and V
L = sqrt((U.*U)+(V.*V));

% Part e
U1 = U./L;
V1 = V./L;
 
% Part f: Plotting the slope field
quiver(X,Y,U1,V1,scale)
xlim ([x0,x1]);
ylim ([y0,y1]);
 
% line 29 attends to part g where we set up the x domain and y range
end 