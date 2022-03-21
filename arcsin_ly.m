%%arcsin函数求解过程
function result = arcsin_ly(input)

if (input > 1)
    msgbox('error!!! Please Re-enter!');
elseif(input < -1)
    msgbox('error!!! Please Re-enter!');
else
    temp = input;
    result= input;
    n = 1;
    while(abs(temp) >= 1e-6)
        temp = temp * (2 * n - 1) * (2 * n - 1) * input * input / ((2 * n) * (2 * n + 1));
        n = n + 1;
        result = result + temp;
    end
    result = roundn(rad2deg(result),-2);
end 


