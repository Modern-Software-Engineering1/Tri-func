%*********************** 测试函数  ***********************
%测试方法：
%1000个定义范围内随机数分别输入 自定义计算函数 和 MATLAB自带库函数，求绝对值误差
%准确率定义：绝对值误差小于1e-2的数占总数的百分比
%错误率定义：绝对值误差大于1e-2的数占总数的百分比
clc ;
clear;
close all;
input_sin = randi([0,360],1,1000);%sin，cos函数输入
input_arcsin = randi([-1,1],1,1000);%arcsin函数输入
input_arctan = randi([-128,127],1,1000);%arctan函数输入

error_sin=ones(1,1000) * 0;
error_cos=ones(1,1000) * 0;
error_arcsin=ones(1,1000) * 0;
error_arctan=ones(1,1000) * 0;
standard_sin = 0;
exceed_sin = 0;
standard_cos = 0;
exceed_cos = 0;
standard_arcsin = 0;
exceed_arcsin = 0;
standard_arctan = 0;
exceed_arctan = 0;

%sin
for i=1:1000
    systemresult= sind(input_sin(i));%MATLAB自带库函数
    fuctionresult = feature_sin(input_sin(i));%自定义计算函数
    error_sin(i) = abs(systemresult-fuctionresult);%求绝对值误差
    if error_sin(i) <= 1e-2%误差精度判断
        standard_sin=standard_sin+1;
    else
        exceed_sin=exceed_sin+1;
    end
end    
fprintf('sin准确率%.2f%%',standard_sin/10);
fprintf('  sin错误率%.2f%%',exceed_sin/10);
fprintf('\n ');

%cos
for i=1:1000
    systemresult = cosd(input_sin(i));
    fuctionresult = lu_cos(input_sin(i));
    error_cos(i) = abs(systemresult-fuctionresult);
    if error_cos(i) <= 1e-2
        standard_cos=standard_cos+1;
    else
        exceed_cos=exceed_cos+1;
    end
end    
fprintf('cos准确率%.2f%%',standard_cos/10);
fprintf('  cos错误率%.2f%%',exceed_cos/10);
fprintf('\n ');

%arcsin
for i=1:1000
    systemresult = asind(input_arcsin(i));
    fuctionresult = arcsin(input_arcsin(i));
    error_arcsin(i) = abs(systemresult-fuctionresult);
    if error_arcsin(i) <= 1e-2
        standard_arcsin=standard_arcsin+1;
    else
        exceed_arcsin=exceed_arcsin+1;
    end
end    
fprintf('arcsin准确率%.2f%%',standard_arcsin/10);
fprintf('  arcsin错误率%.2f%%',exceed_arcsin/10);
fprintf('\n ');

%arctan
for i=1:1000
    systemresult = atand(input_arctan(i));
    fuctionresult = Arctan(input_arctan(i));
    error_arctan(i) = abs(systemresult-fuctionresult);
    if error_arctan(i) <= 1e-2
        standard_arctan=standard_arctan+1;
    else
        exceed_arctan=exceed_arctan+1;
    end
end    
fprintf('arctan准确率%.2f%%',standard_arctan/10);
fprintf('  arctan错误率%.2f%%',exceed_arctan/10);
