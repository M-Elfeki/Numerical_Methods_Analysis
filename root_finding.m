function varargout = root_finding(varargin)
% ROOT_FINDING MATLAB code for root_finding.fig
%      ROOT_FINDING, by itself, creates a new ROOT_FINDING or raises the existing
%      singleton*.
%
%      H = ROOT_FINDING returns the handle to a new ROOT_FINDING or the handle to
%      the existing singleton*.
%
%      ROOT_FINDING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROOT_FINDING.M with the given input arguments.
%
%      ROOT_FINDING('Property','Value',...) creates a new ROOT_FINDING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before root_finding_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to root_finding_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help root_finding

% Last Modified by GUIDE v2.5 26-Jun-2014 07:55:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @root_finding_OpeningFcn, ...
                   'gui_OutputFcn',  @root_finding_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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


% --- Executes just before root_finding is made visible.
function root_finding_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to root_finding (see VARARGIN)

% Choose default command line output for root_finding
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes root_finding wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = root_finding_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)

    str = get(hObject, 'String');
    value = get(hObject, 'Value');
    switch str{value};
        case {'Bisection', 'False-Position'}
            set(handles.edit5, 'Visible', 'On');
            set(handles.text5, 'Visible', 'On');
            set (handles.text4, 'string', 'X_u');
            set (handles.text5, 'string', 'X_l');
        case {'Fixed-Point','Newton-Raphson'}
            set(handles.edit5, 'Visible', 'Off');
            set(handles.text5, 'Visible', 'Off');
            set (handles.text4, 'string', 'X_0');
        case {'Secant'}
            set(handles.edit5, 'Visible', 'On');
            set(handles.text5, 'Visible', 'On');
            set (handles.text4, 'string', 'X_0');
            set (handles.text5, 'string', 'X_1');     
    end


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
    str = get(handles.popupmenu1, 'String');
    value = get(handles.popupmenu1, 'Value');
    str_1 = get(handles.edit1,'String');%expression
    str_3 = get(handles.edit2,'String');%error
    str_2 = get(handles.edit3,'String');%Max_Iter
    str_4 = get(handles.edit4,'String');%X_u
    str_5 = get(handles.edit5,'String');%X_l
    
    tic;
    hold off;
    switch str{value};
        case 'Bisection'
            [errorFlag, root, eps] = bisection(str_1, str2double(str_4), str2double(str_5),str2double(str_2),str2double(str_3));
            if(size(errorFlag)>0)
                set(handles.text6, 'String', errorFlag);
                return;
            end
            I=[1:1:length(root)];
            I = transpose(I);
            root = transpose(root);
            eps = transpose(eps);
            complexData = [I root eps];
            t = toc;
            table = uitable('ColumnName', {'Iteration Number' 'Root' 'Error'}, 'Position',...
                [310 40 320 150],'Data',complexData,'ColumnWidth',{90});
            set(table,'Data' , complexData);
            start = root(end) - 10;
            ends = root(end)  + 10;
            x=linspace(start, ends, 1000);
            
            str_1 = strrep(str_1, '^', '.^');
            str_1 = strrep(str_1, '*', '.*');
            str_1 = strrep(str_1, '/', './');
            sss = strcat('abcdef=', str_1, ';');
            eval(sss);
            
            plot(handles.axes1, x, abcdef,'Color','blue');
            hold on;
            plot(root(length(root)), 0, 'o', 'MarkerSize', 10,'Color','red');
            grid on;
            set(handles.text8, 'String', strcat('Root = ',num2str(root(length(root)))));
            set(handles.text9, 'String', strcat('Time = ',num2str(t), ' s'));
            shr = get(handles.edit1, 'String');
            set(handles.text6, 'String', strcat('y = ',shr));
            error = abs((str2double(str_4) - str2double(str_5))/(power(2,(length(root)*root(length(root))))));
            set(handles.text7, 'String', strcat('Theoratical Error = ',num2str(error)));
        case 'False-Position'
            [errorFlag, root, eps] = falsePosition(str_1, str2double(str_4), str2double(str_5),str2double(str_2),str2double(str_3));
            if(size(errorFlag)>0)
                set(handles.text6, 'String', errorFlag);
                return;
            end
            I=[1:1:length(root)];
            I = transpose(I);
            root = transpose(root);
            eps = transpose(eps);
            complexData = [I root eps];
            t = toc;
            table = uitable('ColumnName', {'Iteration Number' 'Root' 'Error'}, 'Position',...
                [310 40 320 150],'Data',complexData,'ColumnWidth',{90});
            set(table,'Data' , complexData);
            start = root(end) - 10;
            ends = root(end)  + 10;
            
            x = linspace(start, ends, 1000);
            str_1 = strrep(str_1, '^', '.^');
            str_1 = strrep(str_1, '*', '.*');
            str_1 = strrep(str_1, '/', './');
            sss = strcat('abcdef=', str_1, ';');
            eval(sss);
            plot(handles.axes1, x, abcdef,'Color','blue');
            
            hold on;
            plot(root(length(root)), 0, 'o', 'MarkerSize', 10,'Color','red');
            grid on;
            set(handles.text8, 'String', strcat('Root = ',num2str(root(length(root)))));
            set(handles.text9, 'String', strcat('Time = ',num2str(t), ' s'));
            shr = get(handles.edit1, 'String');
            set(handles.text6, 'String', strcat('y = ',shr));
        case 'Fixed-Point'
            [errorFlag, root, eps] = fixedPoint(str_1, str2double(str_4), ...
                         str2double(str_2),str2double(str_3));
            if(size(errorFlag)>0)
                set(handles.text6, 'String', errorFlag);
                return;
            end
            I=[1:1:length(root)];
            I = transpose(I);
            root = transpose(root);
            eps = transpose(eps);
            complexData = [I root eps];
            t = toc;
            table = uitable('ColumnName', {'Iteration Number' 'Root' 'Error'}, 'Position',...
                [310 40 320 150],'Data',complexData,'ColumnWidth',{90});
            set(table,'Data' , complexData);
            start = root(end) - 10;
            ends = root(end)  + 10;
            x = linspace(start, ends, 1000);
            
   
            str_1 = strrep(str_1, '^', '.^');
            str_1 = strrep(str_1, '*', '.*');
            str_1 = strrep(str_1, '/', './');
            
            sss = strcat('abcdef=', str_1, ';');
             
            eval (sss);
            
            plot(handles.axes1, x, abcdef,'Color','red');
            hold on;
            plot(handles.axes1,x, x,'Color','blue');
            hold on;
            idx = find(abcdef-x<0.00000001,1);
            plot(x(idx), abcdef(idx), 'o', 'MarkerSize', 10,'Color','black');
            grid on;
            
            set(handles.text8, 'String', strcat('Root = ',num2str(root(length(root)))));
            set(handles.text9, 'String', strcat('Time = ',num2str(t), ' s'));
            shr = get(handles.edit1, 'String');
            set(handles.text6, 'String', strcat('y = ',shr));
        case 'Newton-Raphson'
            [errorFlag, root, eps] = newtonRaphson(str_1, str2double(str_4), ...
                         str2double(str_2),str2double(str_3));
            if(size(errorFlag)>0)
                set(handles.text6, 'String', errorFlag);
                return;
            end
            I=[1:1:length(root)];
            I = transpose(I);
            root = transpose(root);
            eps = transpose(eps);
            complexData = [I root eps];
            t = toc;
            table = uitable('ColumnName', {'Iteration Number' 'Root' 'Error'}, 'Position',...
                [310 40 320 150],'Data',complexData,'ColumnWidth',{90});
            set(table,'Data' , complexData);
            start = root(end) - 10;
            ends = root(end)  + 10;
            x = linspace(start, ends, 1000);
            str_1 = strrep(str_1, '^', '.^');
            str_1 = strrep(str_1, '*', '.*');
            str_1 = strrep(str_1, '/', './');
            sss = strcat('abcdef=', str_1, ';');
            eval(sss);
            plot(handles.axes1, x, abcdef,'Color','blue');
            hold on;
            plot(root(length(root)), 0, 'o', 'MarkerSize', 10,'Color','red');
            grid on;
            set(handles.text8, 'String', strcat('Root = ',num2str(root(length(root)))));
            set(handles.text9, 'String', strcat('Time = ',num2str(t), ' s'));
            shr = get(handles.edit1, 'String');
            set(handles.text6, 'String', strcat('y = ',shr));
        case 'Secant'
            [errorFlag, root, eps] = secant(str_1, str2double(str_4), str2double(str_5), ...
                         str2double(str_2),str2double(str_3));
            if(size(errorFlag)>0)
                set(handles.text6, 'String', errorFlag);
                return;
            end
            I=[1:1:length(root)];
            I = transpose(I);
            root = transpose(root);
            eps = transpose(eps);
            complexData = [I root eps];
            t = toc;
            table = uitable('ColumnName', {'Iteration Number' 'Root' 'Error'}, 'Position',...
                [310 40 320 150],'Data',complexData,'ColumnWidth',{90});
            set(table,'Data' , complexData);
            start = root(end) - 10;
            ends = root(end)  + 10;
            x = linspace(start, ends, 1000);
            str_1 = strrep(str_1, '^', '.^');
            str_1 = strrep(str_1, '*', '.*');
            str_1 = strrep(str_1, '/', './');
            sss = strcat('abcdef=', str_1, ';');
            eval(sss);
            plot(handles.axes1, x, abcdef,'Color','blue');
            hold on;
            plot(root(length(root)), 0, 'o', 'MarkerSize', 10,'Color','red');
            grid on;
            set(handles.text8, 'String', strcat('Root = ',num2str(root(length(root)))));
            set(handles.text9, 'String', strcat('Time = ',num2str(t), ' s'));
            shr = get(handles.edit1, 'String');
            set(handles.text6, 'String', strcat('y = ',shr));
    end    
    set(handles.edit1, 'String', '0');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
try
filename = uigetfile;
C = textread(filename, '%s', 'delimiter', ',','whitespace', '');
if (length(C) < 6 || length(C)>6)
    set(handles.text6, 'String', 'Invalid File Format');
    return;
end
 
method = char(C(6));
str_1 = char(C(1));
str_3 = char(C(2));
str_2 = char(C(3));
str_4 = char(C(4));
str_5 = char(C(5));
disp(method);
tic;
hold off;
    switch method
        case 'Bisection'
            [errorFlag, root, eps] = bisection(str_1, str2double(str_4), str2double(str_5),str2double(str_3),str2double(str_2));
            if(size(errorFlag)>0)
                set(handles.text6, 'String', errorFlag);
                return;
            end
            I=[1:1:length(root)];
            I = transpose(I);
            root = transpose(root);
            eps = transpose(eps);
            complexData = [I root eps];
            t = toc;
            table = uitable('ColumnName', {'Iteration Number' 'Root' 'Error'}, 'Position',...
                [310 40 320 150],'Data',complexData,'ColumnWidth',{90});
            set(table,'Data' , complexData);
            start = root(end) - 10;
            ends = root(end)  + 10;
            x = linspace(start, ends, 1000);
            str_1 = strrep(str_1, '^', '.^');
            str_1 = strrep(str_1, '*', '.*');
            str_1 = strrep(str_1, '/', './');
            sss = strcat('abcdef=', str_1, ';');
            eval(sss);
            plot(handles.axes1, x, abcdef,'Color','blue');
            hold on;
            plot(root(length(root)), 0, 'o', 'MarkerSize', 10,'Color','red');
            grid on;
            set(handles.text8, 'String', strcat('Root = ',num2str(root(length(root)))));
            set(handles.text9, 'String', strcat('Time = ',num2str(t), ' s'));
            shr = get(handles.edit1, 'String');
            set(handles.text6, 'String', strcat('y = ',str_1));
            error = (str2double(str_4) - str2double(str_5))/(power(2,(length(root)*root(length(root)))));
            set(handles.text7, 'String', strcat('Theoratical Error = ',num2str(error)));
        case 'False-Position'
            [errorFlag, root, eps] = falsePosition(str_1, str2double(str_4), str2double(str_5),str2double(str_2),str2double(str_3));
            if(size(errorFlag)>0)
                set(handles.text6, 'String', errorFlag);
                return;
            end
            I=[1:1:length(root)];
            I = transpose(I);
            root = transpose(root);
            eps = transpose(eps);
            complexData = [I root eps];
            t = toc;
            table = uitable('ColumnName', {'Iteration Number' 'Root' 'Error'}, 'Position',...
                [310 40 320 150],'Data',complexData,'ColumnWidth',{90});
            set(table,'Data' , complexData);
            
            start = root(end) - 10;
            ends = root(end)  + 10;
            x = linspace(start, ends, 1000);
            str_1 = strrep(str_1, '^', '.^');
            str_1 = strrep(str_1, '*', '.*');
            str_1 = strrep(str_1, '/', './');
            sss = strcat('abcdef=', str_1, ';');
            eval(sss);
            plot(handles.axes1, x, abcdef,'Color','blue');
            hold on;
            plot(root(length(root)), 0, 'o', 'MarkerSize', 10,'Color','red');
            grid on;
            
            set(handles.text8, 'String', strcat('Root = ',num2str(root(length(root)))));
            set(handles.text9, 'String', strcat('Time = ',num2str(t), ' s'));
            shr = get(handles.edit1, 'String');
            set(handles.text6, 'String', strcat('y = ',str_1));
        case 'Fixed-Point'
            [errorFlag, root, eps] = fixedPoint(str_1, str2double(str_4), ...
                         str2double(str_2),str2double(str_3));
            if(size(errorFlag)>0)
                set(handles.text6, 'String', errorFlag);
                return;
            end
            I=[1:1:length(root)];
            I = transpose(I);
            root = transpose(root);
            eps = transpose(eps);
            complexData = [I root eps];
            t = toc;
            table = uitable('ColumnName', {'Iteration Number' 'Root' 'Error'}, 'Position',...
                [310 40 320 150],'Data',complexData,'ColumnWidth',{90});
            set(table,'Data' , complexData);
            start = root(end) - 10;
            ends = root(end)  + 10;
            
            x = linspace(start, ends, 1000);
            
   
            str_1 = strrep(str_1, '^', '.^');
            str_1 = strrep(str_1, '*', '.*');
            str_1 = strrep(str_1, '/', './');
            
            sss = strcat('abcdef=', str_1, ';');
             
            eval (sss);
            
            plot(handles.axes1, x, abcdef,'Color','red');
            hold on;
            plot(handles.axes1,x, x,'Color','blue');
            hold on;
            idx = find(abcdef-x<0.00000001,1);
            plot(x(idx), abcdef(idx), 'o', 'MarkerSize', 10,'Color','black');
            grid on;
            
            set(handles.text8, 'String', strcat('Root = ',num2str(root(length(root)))));
            set(handles.text9, 'String', strcat('Time = ',num2str(t), ' s'));
            shr = get(handles.edit1, 'String');
            set(handles.text6, 'String', strcat('y = ',str_1));
        case 'Newton-Raphson'
            [errorFlag, root, eps] = newtonRaphson(str_1, str2double(str_4), ...
                         str2double(str_2),str2double(str_3));
            if(size(errorFlag)>0)
                set(handles.text6, 'String', errorFlag);
                return;
            end
            I=[1:1:length(root)];
            I = transpose(I);
            root = transpose(root);
            eps = transpose(eps);
            complexData = [I root eps];
            t = toc;
            table = uitable('ColumnName', {'Iteration Number' 'Root' 'Error'}, 'Position',...
                [310 40 320 150],'Data',complexData,'ColumnWidth',{90});
            set(table,'Data' , complexData);
            start = root(end) - 10;
            ends = root(end)  + 10;
            x = linspace(start, ends, 1000);
            str_1 = strrep(str_1, '^', '.^');
            str_1 = strrep(str_1, '*', '.*');
            str_1 = strrep(str_1, '/', './');
            sss = strcat('abcdef=', str_1, ';');
            eval(sss);
            plot(handles.axes1, x, abcdef,'Color','blue');
            hold on;
            plot(root(length(root)), 0, 'o', 'MarkerSize', 10,'Color','red');
            grid on;
            set(handles.text8, 'String', strcat('Root = ',num2str(root(length(root)))));
            set(handles.text9, 'String', strcat('Time = ',num2str(t), ' s'));
            shr = get(handles.edit1, 'String');
            set(handles.text6, 'String', strcat('y = ',str_1));
        case 'Secant'
            [errorFlag, root, eps] = secant(str_1, str2double(str_4), str2double(str_5), ...
                         str2double(str_2),str2double(str_3));
            if(size(errorFlag)>0)
                set(handles.text6, 'String', errorFlag);
                return;
            end
            I=[1:1:length(root)];
            I = transpose(I);
            root = transpose(root);
            eps = transpose(eps);
            complexData = [I root eps];
            t = toc;
            table = uitable('ColumnName', {'Iteration Number' 'Root' 'Error'}, 'Position',...
                [310 40 320 150],'Data',complexData,'ColumnWidth',{90});
            set(table,'Data' , complexData);
            start = root(end) - 10;
            ends = root(end)  + 10;
            x = linspace(start, ends, 1000);
            str_1 = strrep(str_1, '^', '.^');
            str_1 = strrep(str_1, '*', '.*');
            str_1 = strrep(str_1, '/', './');
            sss = strcat('abcdef=', str_1, ';');
            eval(sss);
            plot(handles.axes1, x, abcdef,'Color','blue');
            hold on;
            plot(root(length(root)), 0, 'o', 'MarkerSize', 10,'Color','red');
            grid on;
            set(handles.text8, 'String', strcat('Root = ',num2str(root(length(root)))));
            set(handles.text9, 'String', strcat('Time = ',num2str(t), ' s'));
            set(handles.text6, 'String', strcat('y = ',str_1));
        end    
        set(handles.edit1, 'String', '0');
catch
    set(handles.text6, 'String', 'Invalid File Format');
end