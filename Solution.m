function Solution(X, t)
f = figure('Visible','off','Position',[360,500,182,285]);
set(f,'Name','Simple GUI');
movegui(f,'center');
set(f,'Visible','on');
str = strcat('Elapsed Time = ',num2str(t),' Seconds');
uicontrol('Style','text','String',str,'Position',[0 280 180 20]);
uitable('Parent', f,'ColumnName', ['X'], 'Position', [0 75 180 200],'Data',X,'ColumnWidth',{100},'ColumnEditable', false);

end