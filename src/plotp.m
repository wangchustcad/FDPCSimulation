clc
close all
clear

figure(1)

i=1;
while(i<=7)
    clear p
    index=i-1;
    filename = sprintf("p%d00.mat",index);
%     varname = sprintf("p%d",index);
    load(filename);

    subplot(7,1,i);
    plot(p);
    title("");
    xlabel('t');
    ylabel('');
    set(gca,'YTick',0:0.5:1);
    set(gca,'YTickLabel',[0,0.5,1]);
    set(gca,'YGrid','on');
%     gca.YAxis.Tick=0:0.5:1;
%     gca.YAxis.TickLabel=[0,0.5,1];
%     gca.YAxis.Grid='on';
    
    ax=gca;
    ax.YAxis.MinorTick='on';
    ax.YAxis.MinorTickValues= 0:0.25:1;
    ax.YMinorGrid = 'on';
    ax.MinorGridLineStyle='--';
    
    
    i=i+1;
end
suptitle('Position')
