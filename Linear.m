function Linear(x)
N = str2double(x);
if(x<1)
    fprintf('Error: Number of Equations is invalid.');
end

f = figure('Visible','off','Position',[360,500,450,285]);
set(f,'Name','Simple GUI');
movegui(f,'center');
set(f,'Visible','on');
i=1;
for i=1:N
    columneditable(i) = true;
    columnformat(i) = cellstr('numeric');
    col(i) = cellstr(strcat('A', int2str(i)));
end
i = i+1;
col(i) = cellstr('<HTML><FONT color="red">B</FONT></HTML>');
columnformat(i) = cellstr('numeric');
columneditable(i) = true;
table = uitable('Parent', f,'ColumnName', col, 'Position', [0 0 450 250],'Data',zeros(N, N+1),'ColumnWidth',{50},...
    'ColumnEditable', columneditable, 'ColumnFormat', columnformat);
uicontrol('Style','popupmenu','String',{'Gauss-Pivoting','Gauss-Jordan','LU-Decomposition'},'Position',[80,280,120,25],'Callback',{@popup_menu_Callback});
uicontrol('Style','pushbutton','String','Solve','Position',[220 280 160 25], 'Callback',{@solvebutton_Callback});
uicontrol('Style','pushbutton','String','Load Data From File','Position',[80 250 300 25], 'Callback',{@loadbutton_Callback});

current_method = 'gp';

    function popup_menu_Callback(source,eventdata) 
      str = get(source, 'String');
      val = get(source,'Value');
      switch str{val};
      case 'Gauss-Pivoting' 
         current_method = 'gp';
      case 'Gauss-Jordan' 
         current_method = 'gj';
      case 'LU-Decomposition'
         current_method = 'lu';
      end
    end
    
    function solvebutton_Callback(source,eventdata) 
        A = get(table, 'data');
        B = A(:,end);
        A(:,end) = [];
        X=[];
        t = 0;
        switch current_method
            case 'gp'
                [X, t] = GaussPivot(A, B);
            case 'gj'
                [X, t] = GaussJordan(A, B);
            case 'lu'
                [X, t] = LUDecomp(A, B);
        end
        if(length(X)<1)
            return;
        end
        Solution(X, t);
    end

    function loadbutton_Callback(source,eventdata) 
       try
        filename = uigetfile;
        C = dlmread(filename,',');
        i_1=1;
        for i_1=1:(length(C)-1)
            columneditable_1(i_1) = true;
            columnformat_1(i_1) = cellstr('numeric');
            col_1(i_1) = cellstr(strcat('A', int2str(i_1)));
        end
        i_1 = i_1+1;
        col_1(i_1) = cellstr('<HTML><FONT color="red">B</FONT></HTML>');
        columnformat_1(i_1) = cellstr('numeric');
        columneditable_1(i_1) = true;
        table = uitable('ColumnName', col_1, 'Position', [0 0 450 250],'Data',C,'ColumnWidth',{50},...
            'ColumnEditable', columneditable_1, 'ColumnFormat', columnformat_1);
       catch err
                 msgbox('Invalid File','Error');
        end
    end
end