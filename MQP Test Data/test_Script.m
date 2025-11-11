%% SDR recording script 
%% Common Air Route Surveillance Radar(CARSR on Bryant)
centerFrequency = 1325e6;% hz
sampleRate = 58e6; %pluto limit
rx = comm.SDRRTLReceiver('0',CenterFrequency = centerFrequency,...
    SampleRate = sampleRate,OutputDataType = 'int16');
% Initiate Data Capture
[data,metadata] = capture(rx,60,'Seconds',Filename = 'rxdata.bb');
release(rx);
scope = spectrumAnalyzer(SampleRate=sampleRate);
scope(data);
release(scope);

%% P25 VHF
centerFrequency = 150e6;% 136-174 hz
sampleRate = 58e6; %pluto limit
rx = comm.SDRRTLReceiver('0',CenterFrequency = centerFrequency,...
    SampleRate = sampleRate,OutputDataType = 'int16');
% Initiate Data Capture
[data,metadata] = capture(rx,60,'Seconds',Filename = 'rxdata.bb');
release(rx);
scope = spectrumAnalyzer(SampleRate=sampleRate);
scope(data);
release(scope);

%% P25 UHF
centerFrequency = 460e6;% 403-512,806-870 hz
sampleRate = 58e6; %pluto limit
rx = comm.SDRRTLReceiver('0',CenterFrequency = centerFrequency,...
    SampleRate = sampleRate,OutputDataType = 'int16');
% Initiate Data Capture
[data,metadata] = capture(rx,60,'Seconds',Filename = 'rxdata.bb');
release(rx);
scope = spectrumAnalyzer(SampleRate=sampleRate);
scope(data);
release(scope);

%% P25 700 MHz
centerFrequency = 760e6;% 746-806 hz
sampleRate = 58e6; %pluto limit
rx = comm.SDRRTLReceiver('0',CenterFrequency = centerFrequency,...
    SampleRate = sampleRate,OutputDataType = 'int16');
% Initiate Data Capture
[data,metadata] = capture(rx,60,'Seconds',Filename = 'rxdata.bb');
release(rx);
scope = spectrumAnalyzer(SampleRate=sampleRate);
scope(data);
release(scope);