function hand=my_sur(fv,col,f,al,lig,vw)
% fv=vertices and faces
% col=surface color
% f=figure number
% al=alpha (1=>solid)
% lig=light 1=> yes
% vw=view(vw)
figure(f);
hand=patch(fv);
set(hand,'FaceColor',col,'EdgeColor','none');
daspect([1 1 1]);
lighting gouraud
if lig==1
%    camlight
%    camlight(90,0)
  camlight(0,-90)
  camlight(-180,20)
%    camlight(0,0)
end
axis tight
view(vw);
grid on
alpha(al)
