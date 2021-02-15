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
    while(i<=4)
        clear v
        subplot(5,2,i*2+j+1);

        filename = sprintf("v%d00%s.mat",i,tail);
        load(filename);
        plot(v);
        hold on;
        
        mfilename = sprintf("v%d00m%s.mat",i,tail);
        load(mfilename);
        plot(v);
        
        title('');
        xlabel('');        
        ylabel('');
        xlim([0,25]);
        ylim([-0.6,0.6]);
%         if(i==0 & j==0)
%             legend({'max M','min M'},'Location','northwest','Orientation','horizontal');
%         end
        
        set(gca,'YTick',-0.6:0.6:0.6);
        set(gca,'YTickLabel',[-0.6,0,0.6]);
        set(gca,'YGrid','on');
        if(i~=4)
            set(gca,'XTickLabel',[]);
        end
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
    i=0;
    j=j+1;
end
% suptitle('Velocity(m/s)')
