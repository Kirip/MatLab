% worksheet 7 problem 1 part 1-4
function [t,v] = forward_euler_refactor(f,tspan, ic, nsteps)

t0=tspan(1);
h=(tspan(length(tspan))-tspan(1))/nsteps;
v=zeros(nsteps+1,length(ic));
t=zeros(nsteps+1,1);
v(1,:)=ic;
t(1)=t0;
    for i=2:(nsteps+1)
     t(i)=t(i-1)+h;
     v(i,:)=v(i-1,:)+h.*f(t(i-1),v(i-1,:))';
    end

  end
