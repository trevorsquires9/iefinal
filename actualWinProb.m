%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ACTUALWINPROB.m
%
% DESCRIPTION
%   Returns win probability of each pitcher under any state given the win
%   probability in a medium state
%
% AUTHOR
%   Trevor Squires
%
% INPUT
%   winProb - vector of win probabilities under medium rest
%   state - vector of state of pitchers
%   action - innings played per pitcher
% OUTPUT
%   actualWinProb - win probabity of each pitcher given his rest state
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [actualWinProb] = actualWinProb(winProb,state,action)
actualWinProb = zeros(1,length(state));
for i = 1:length(state)
    if state(i) == 0
        actualWinProb(i) = 1/(action(i)+1)*winProb(i);
    elseif state(i) == 1
        actualWinProb(i) = 1/(max(action(i)-3,1))*winProb(i);
    else
        actualWinProb(i) = 1/(max(action(i)-6,1))*winProb(i);
    end
end