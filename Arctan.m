%% 
%%%%%%%%%       arctan����������          %%%%%%%%%%%%%%
%������������֣���Χ��-1��1��
%���������arctan��������õĽǶ�
%% 
function ArctanResult = Arctan(InputValue)
  if (InputValue > 1)
      msgbox('Out of range, please re-enter!');
  elseif (InputValue < -1)
      msgbox('Out of range, please re-enter!'); %���볬��ȡֵ��Χ������ʾ�������롣
  else
      Temp = InputValue;
      ArctanResult = InputValue; %arctan����̩��չ��ʽ�ĵ�һ��
      i = 1;
      while (Abs(Temp) >= 1e-6) %������ֵС����;���ʱ����ֹͣ���㡣
          Temp = (-1) * Temp * (2 * i - 1) * InputValue * InputValue / (2 * i + 1); %arctan����̩��չ��ʽ�ж�Ӧ��ÿһ��
          ArctanResult = ArctanResult + Temp; %�����ۼӣ��õ�arctan������̩��չ��ʽ��
          i = i + 1;
      end
      ArctanResult = ConvertToAngle(ArctanResult);
      ArctanResult = roundn(ArctanResult, -2); %������λС��
  end
%% 
%ȡ����ֵ
  function AbsResult = Abs(x)
      if (x < 0)
          AbsResult = -x;
      else
          AbsResult = x;
      end
  end
%% 
%������ת��Ϊ�Ƕ�
    function Angle = ConvertToAngle(x)
        Angle = x * (180 / pi);
    end
end