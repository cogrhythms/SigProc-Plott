

function [t,X,fs] = sort_out_timeseries(reg,fs)
    if length(reg) == 1
        X=reg{1}; if isvector(X); X=X(:); end
        t=1:size(X,1); t=t/fs;
    elseif length(reg) == 2
        t=reg{1}; 
        X=reg{2}; if isvector(X); X=X(:); end
        fs = 1./(mode(diff(t)));
        fs = fs(1);             % Take first entry if t is a matrix
    else
        fprintf('too many numerical inputs \n');
    end
end
