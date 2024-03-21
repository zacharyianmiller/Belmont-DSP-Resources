%% vocalConv.m
% Zachary Miller, Alek Weidman, John Sweeney
% 21 March 2024

clear; clc; close all;

[vocal,Fs] = audioread('Vocal.wav');
[IR_EQ] = audioread('IR_EQ.wav');
[IR_ModDelay] = audioread('IR_ModDelay.wav');

[PTVocal_EQ] = audioread('PTVocal_EQ.wav');
[PTVocal_ModDelay] = audioread('PTVocal_ModDelay.wav');

vocal_EQ = conv(vocal,IR_EQ);
vocal_EQ = vocal_EQ(1:1115330); % cut short
vocal_ModDelay = conv(vocal,IR_ModDelay);
vocal_ModDelay = vocal_ModDelay(1:1115330); % cut short

N = length(vocal); % length of all files

nullEQ = vocal_EQ - PTVocal_EQ; 
subplot(2,1,1); plot(nullEQ); title('EQ Null Test');
axis([0 N -1 1]);
nullDelay = vocal_ModDelay - PTVocal_ModDelay; 
subplot(2,1,2); plot(nullDelay); title('Delay Null Test');
axis([0 N -1 1]);