%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TRANSITIONPROB.m
%
% DESCRIPTION
%   Given a pitchers rest level, and innings played, returns the
%   probability of a pitcher reaching a given state
%
% AUTHOR
%   Trevor Squires
%
% INPUT
%   src - initial rest level
%   action - innings played
%   dest - final rest level
%
% OUTPUT
%   probability - probability of starting in state src and ending in state
%   dest
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [probability] = transitionProb(src,action,dest)
if action == 0
    P = [0 0 1; 0 0 1; 0 0 1];
elseif action == 1 || action == 2
    P = [0.1 0.1 0.8; 0 0.1 0.9; 0 0 1];
elseif action == 3 || action == 4 || action == 5
    P = [0.2 0.2 0.6; 0.1 0.2 0.7; 0 0.2 0.8];
elseif action == 9
    P = [1 0 0; 1 0 0; 1 0 0];
else
    P = [1 0 0; 0.95 0.05 0; 0.7 0.3 0];
end

probability = P(src+1,dest+1);
end