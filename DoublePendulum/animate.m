function animate(k, v, t, x1, y1, x2, y2)
axis([-k k -k k])
figure;
tic
  for i = 1:v:numel(t)
   plot(0, 0,'k.',x1(i),y1(i),'b.',x2(i),y2(i),'r.','markersize',40);
    axis([-k k -k k])
    line([0 x1(i)], [0 y1(i)],'Linewidth',2);
    line([x1(i) x2(i)], [y1(i) y2(i)],'linewidth',2,'color','r');
   xlabel(['\it\bf X \rm        Animation time, s:  ',num2str(toc,3)],...
     'HorizontalAlignment', 'left');
   ylabel('\it\bf Y');
   title(['Double Pendulum       \it t \rm= ',num2str(t(i),3)],...
     'fontsize',13, 'HorizontalAlignment', 'left', 'Position',[-.4*k k 0])
    drawnow
  end
end