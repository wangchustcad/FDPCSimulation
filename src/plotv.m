clc
close all
clear

figure(1)

i=1;
while(i<=7)
    clear v
    index=i-1;
    filename = sprintf("v%d00.mat",index);
%     varname = sprintf("p%d",index);
    load(filename);

    subplot(7,1,i);
    plot(v);
    title("");
    xlabel('t');
    ylabel('');
    ylim([-0.6,0.6])
    set(gca,'YTick',-0.6:0.6:0.6);
    set(gca,'YTickLabel',[-0.6,0,0.6]);
    set(gca,'YGrid','on');
%     gca.YAxis.Tick=0:0.5:1;
%     gca.YAxis.TickLabel=[0,0.5,1];
%     gca.YAxis.Grid='on';
    
    ax=gca;
    ax.YAxis.MinorTick='on';
    ax.YAxis.MinorTickValues= -0.6:0.2:0.6;
    ax.YMinorGrid = 'on';
    ax.MinorGridLineStyle='--';
    
    i=i+1;
end
suptitle('Velocity')
