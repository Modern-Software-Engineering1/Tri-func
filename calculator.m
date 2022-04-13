function varargout = calculator(varargin)
%CALCULATOR M-file for calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to calculator_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      CALCULATOR('CALLBACK') and CALCULATOR('CALLBACK',hObject,...) call the
%      local function named CALLBACK in CALCULATOR.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculator

% Last Modified by GUIDE v2.5 20-Mar-2022 14:45:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @calculator_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before calculator is made visible.
function calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for calculator
set(handles.edit1,'string','');
set(handles.edit2,'string','');

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculator_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton4.——“退一格”
function pushbutton4_Callback(hObject, eventdata, handles) 
    TextString=get(handles.edit1,'String');  %提取出输入框中的字符串
    Str=char(TextString);    %将字符串转换为字符存放在Str中
    TextLength=length(TextString);  %字符串长度
    TextString=Str(1:TextLength-1); %从尾部删除一个字符
    set(handles.edit1,'String',TextString) %将字符显示在输入框中
    guidata(hObject, handles); %更新数据
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.——“7”
function pushbutton6_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String');   %提取出输入框中的字符串
    TextString = strcat(TextString,'7');   %将字符'7'和输入框中的字符串连接
    set(handles.edit1,'String',TextString);  %将字符显示在输入框中
    guidata(hObject, handles); %更新数据
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7. ——“9”
function pushbutton7_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'9');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8. ——全部清除
function pushbutton8_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); 
    TextString = get(handles.edit2,'String');
    set(handles.edit1,'String',''); %设置输入框为空白
    set(handles.edit2,'String',''); %设置输出框为空白
    guidata(hObject, handles);
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9. ——“8”
function pushbutton9_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'8');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10. ——"sin"
function pushbutton10_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'SIN');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.——“4”
function pushbutton11_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'4');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.——“6”
function pushbutton12_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'6');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.  ——"cos"
function pushbutton13_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'COS');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton14.——“5”
function pushbutton14_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'5');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton15. ——“arcsin”
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'arcsin');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton16.  ——“1”
function pushbutton16_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'1');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton17. ——“3”
function pushbutton17_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'3');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);

% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton18. ——“arctan”
function pushbutton18_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'arctan');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);

% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton19.  ——“2”
function pushbutton19_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String');  %同字符'7'
    TextString = strcat(TextString,'2'); 
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton20.  ——“（”
function pushbutton20_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String');  %同字符'7'
    TextString = strcat(TextString,'(');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.  ——“-号”
function pushbutton21_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'-');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton22.  ——“小数点.”
function pushbutton22_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'.');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton23.  ——“）”
function pushbutton23_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,')');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton24.  ——“0”
function pushbutton24_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    TextString = strcat(TextString,'0');
    set(handles.edit1,'String',TextString);
    guidata(hObject, handles);
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton25. ——“=”
function pushbutton25_Callback(hObject, eventdata, handles)
    TextString = get(handles.edit1,'String'); %同字符'7'
    Result = eval(TextString); %计算输入框中的值 调用对应函数
    set(handles.edit2,'String',Result);
    guidata(hObject, handles);
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton28.  ——退出计算器
function pushbutton28_Callback(hObject, eventdata, handles)
    close(gcf); 
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)  %——输入框

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)  %  ——输出结果框

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in pushbutton31. ————角度转弧度函数
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    Str = get(handles.edit1,'String');
    if isempty(strfind(Str,'.')) pat='\d*'; %判断是否有小数点
    else pat='\d*\.\d*';
    end
    RadStrTemp=regexp(Str, pat, 'match'); %提取字符串中的数字
    RadStr=RadStrTemp{1}; %提取数字字符
    RadNum=str2num(RadStr); % 将数字字符转换为数字类型
    AngleNum=RadNum*(180/pi);  %弧度转角度
    AngleStr=num2str(AngleNum); %将数字类型转换为数字字符
    StrText=strrep(Str,RadStr,AngleStr); %将角度替换为弧度
    set(handles.edit1,'String',StrText); %更新输入框中的数据
    guidata(hObject, handles);
    
