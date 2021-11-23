% MAE 509 LMI for Ellipsoidal Inequaltiy
% BY: Margav Patel
% ASU ID: 1222768521

clc;
clear; 
close all;

%variables
P = sdpvar(2);
Q = sdpvar(2);
R = sdpvar(2);
S = sdpvar(2,2);

%Data available
X = [12 13;
     32 52];
XC = [1;
      0];
%LMIs
Q=ones(2); 
R=P; 
S=(X-XC)';

LMI1=[Q S;
     S' P]>=0;
LMI2=[P==P'>=0];
LMIs = [LMI1, LMI2];
optimize (LMIs)

%Result
PP=value(P)
