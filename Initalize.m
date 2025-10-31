function [runTests,outputArg2] = run_SDR(inputArg2)
% This function takes in files and allows users to select which algorithms
% to run
% returns: 
%     struct runTests = 1/0 for which algorithms to run. should then be passed to 
%         run_MQP to actually be ran 
%     struct runSystem = 1/0 for which device to run. should then be passed to 
%         run_MQP to actually be ran 

clc; clear; close all 

% fileLocation = "C:\Users\Ann\Documents\MQP Test Data\";
% fileName = fopen(fileLocation, 'r'); 
% [fileData,numDatapoints] = fscanf(fileName, '%i'); 
% 

% SDR Functions
runFFT = 1;
runBandNorm = 1; 
% runSDR = 0; % for later system test

% MCU Functions
runProtocolFilter = 0; 
runAoA = 0;
runCFAR = 0;
runPathfinding = 0;
runBeamforming = 0; 
runNoiseReduction = 0;
% runMCU = 0; % for later system test


runTests = struct('runFFT', runFFT,'runBandNorm',runBandNorm, ...
    'runProtocolFilter',runProtocolFilter,'runAoA',runAoA,'runCFAR', ...
    runCFAR,'runPathfinding',runPathfinding, 'runBeamforming', ...
    runBeamforming,'runNoiseReduction',runNoiseReduction)

% runSystemTests = struct('runSDR',runSDR, 'runMCU', runMCU);

end