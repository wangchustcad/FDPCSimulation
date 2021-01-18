clc
close all
clear all

figure(1)
i=0;
j=0;

while(j<=1)
    tail='';
    if(j==1)
        tail='k';
    end
    while(i<5)
        clear p
    
        subplot(5,2,i*2+j+1);

        filename = sprintf("p%d00%s.mat",i,tail);
        load(filename);
        plot(p);
        hold on;

        mfilename = sprintf("p%d00m1%s.mat",i,tail);
        load(mfilename);
        plot(p);

        title("");
        xlabel('');
        ylabel('');
        xlim([0,25]);
        ylim([0,1]);
        if(i~=4)
            set(gca,'XTickLabel',[]);
        end
        
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
    j=j+1;
    i=0;
end
% suptitle('Position(m)')
