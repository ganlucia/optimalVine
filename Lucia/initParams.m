function params = initParams()
params = [];

params.gridWidth = 10;
params.gridHeight = 10;
params.radStep = deg2rad(30);
params.nGridPoints = 6; % originally 30

params.widthStep = params.gridWidth/(params.nGridPoints-1);
params.heightStep = params.gridHeight/(params.nGridPoints-1);
params.nRadPoints = round(2*pi/params.radStep+1);

params.successRad = 0.75; % success radius

pSuccess = 0.8;
pFail = (1-pSuccess)/2;
% symmetric
params.Pturns = [pSuccess pFail pFail; pFail pSuccess pFail; pFail pFail pSuccess];
% asymmetric
% params.Pturns = [pSuccess 2*pFail 0; pFail pSuccess pFail; 0 2*pFail pSuccess];

params.deadBandRad = deg2rad(30);
params.actuatorSpacing = params.gridWidth/10;
params.nActuators = 15/params.actuatorSpacing; % total length = 15
end