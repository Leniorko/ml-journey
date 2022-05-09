% Basic operations
5+6
3-2
5*8
1/2
2^6
1==2
1~=2
1 && 0
1 || 0
xor(1,0)

a = 3; % semicolon supressing output
b = 'hi';
b
c = (3>=1);
c
a = pi;
a
disp(sprintf('2 decimals: %0.2f', a))
format long
a
format short
a

A = [1 2; 3 4; 5 6]
A = [1 2;
3 4;
5 6]
v = [1; 2; 3]
v = 1:0.1:2
v = 1:6

ones(2,3)
C = 2 * ones(2,3)
w = ones(1, 3)
w = zeros(1, 3)
w = rand(1, 3)
rand(3, 3)

w = randn(1, 3)

w = -6 + sqrt(10) * (randn(1, 10000));
%hist(w)
%hist(w, 50)

eye(4)
eye(6)

% Moving data around
size(A)
sz = size(A);
size(sz)
size(A,1) % Rows
size(A,2) % COlumns
length(v)
length(A)

% pwd current dir
% cd for changing 

% load filename.dat - to load file
% who - command to list variables in workspace
% whos - variables with sizes
% clear variableName - clear variable or without name to clear all
% save filename.ext varName - save var to filename
%  by default saves in binary. Add -ascii to save in text
a_32 = A(3,2)
a_2x = A(2, :) % : - every element in chosen row/column 
a_x2 = A(:, 2)
a_13_x = A([1 3], :) % takes 1 and 3 row and every column

A(:, 2) = [10; 11; 12]
A = [A, [100; 101; 102]] % append column vector to right

A(:) % put all elements in one single vector

A = [1 2; 3 4; 5 6];
B = [11 12; 13 14; 15 16];
C = [A B] % matrix concatination columns
C = [A; B] % matrix concatination rows

% Computing on data
C = [1 1; 2 2]
AC = A * C
A_B = A .* B % multiply each A element with corresponding B element
A .^2 % elementvise square
v = [1;2;3]
1 ./ v % elementvise inverse
log(v)
exp(v) % e^x for each value
abs(v)
v + ones(length(v), 1) % v + 1 - same
A' % transpose
a = [1 15 2 0.5]
val = max(a)
[val ind] = max(a)
max(A)
a < 3 % elementvise
find(a<3)

A = magic(3)
[r,c] = find(A>=7) % return row and column of corresponding element
sum(a)
prod(a) % product - multiplication of every element
floor(a)
ceil(a)

max(A, [], 1) % columnvise maximum
max(A, [], 2) % rowvise maximum


A = magic(9)
sum(A, 1)
sum(A, 2)
A .* eye(9)
sum(sum(A .* eye(9)))
flipud(eye(9))

A = magic(3)
pinv(A) % inverse of A

% plotting data
t = [0:0.01:0.98];
y1 = sin(2*pi*4*t);
% hold on; % display one port one on top another
%subplot(1,2, 1); % divides place onto rows x columns. Wait's for y plot
% figure(1); % display plot in window 1
%plot(t, y1);
y2 = cos(2*pi*4*t); % divides place onto rows x columns. Wait's for y plot
% figure(2)
%subplot(1, 2, 2)
%plot(t, y2, 'r'); % display one plot in window 2
% xlabel('time')
% ylabel('values')
% legend('sin', 'cosine')
% title('my plot')
% to save plot use: print -dpng 'myPlot.png'
% clf clears graph output

%A = magic(5)
%imagesc(magic(15)), colorbar, colormap gray; # display colormap of vector

% Flow control
v = zeros(10, 1)
for i = 1:10,
  v(i) = 2^i;
endfor;
v
i = 1
while i <= 5,
  v(i) = 100;
  i+=1
endwhile
v

i = 1
while true,
  v(i) = 999;
  i = i+1
  if i == 6,
    break
  endif
endwhile
v
v(1) = 2;
if v(1) == 1,
  disp('one')
elseif v(1) == 2,
  disp('two')
else
  disp('other number')
endif

function y = squareThisNumber(x)
  y = x^2;
endfunction

squareThisNumber(5)
% addpath('path') to add searchpath for functions

function [y1 y2] = squareAndCubeThisNumber(x)
  y1 = x^2;
  y2 = x^3;
endfunction
[a,b] = squareAndCubeThisNumber(5)

X = [1 1; 1 2; 1 3]
y = [1; 2; 3]
theta = [0; 1]
function J = costFunction(X, y, theta)
  m = size(X, 1);
  predictions = X*theta;
  sqrErrors = (predictions - y) .^ 2;
  J = 1/(2*m) * sum(sqrErrors);
endfunction

res = costFunction(X, y, theta)

% Vectorization
% I have no idea. I have really little understanding of this section.