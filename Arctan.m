%% 
%%%%%%%%%       arctan函数求解过程          %%%%%%%%%%%%%%
%输入参数：数字，范围（-1，1）
%输出参数：arctan函数所求得的角度
%% 
function ArctanResult = Arctan(InputValue)
  if (InputValue > 1)
      msgbox('Out of range, please re-enter!');
  elseif (InputValue < -1)
      msgbox('Out of range, please re-enter!'); %输入超出取值范围，则提示重新输入。
  else
      Temp = InputValue;
      ArctanResult = InputValue; %arctan函数泰勒展开式的第一项
      i = 1;
      while (Abs(Temp) >= 1e-6) %当增量值小于最低精度时，则停止计算。
          Temp = (-1) * Temp * (2 * i - 1) * InputValue * InputValue / (2 * i + 1); %arctan函数泰勒展开式中对应的每一项
          ArctanResult = ArctanResult + Temp; %依次累加，得到arctan函数的泰勒展开式。
          i = i + 1;
      end
      ArctanResult = ConvertToAngle(ArctanResult);
      ArctanResult = roundn(ArctanResult, -2); %保留两位小数
  end
%% 
%取绝对值
  function AbsResult = Abs(x)
      if (x < 0)
          AbsResult = -x;
      else
          AbsResult = x;
      end
  end
%% 
%将弧度转换为角度
    function Angle = ConvertToAngle(x)
        Angle = x * (180 / pi);
    end
end