//n=11;
//P=zeros(n);
//
//for i= 2:11;
//    P(i-1,i)=0.6;
//    P(i,i)=0.4;
//end
//
//P(1,1)=1;
//x = [0 0 0 0 0 0 0 0 0 0 1]';
//
//for t=1:600
//    x = P * x;
//    disp ([t x'])
//end


function y=go()
    Y = grand(1, 1, "def"); 
    if Y > 0.4 then
        y = s + 1;
    else
        y = s - 1;
    end
endfunction

s = 0;
for i=1:600
    if s < 10 then
      s = go();
    else
      break;
    end
end

disp(s)
