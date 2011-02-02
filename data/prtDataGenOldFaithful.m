function DS = prtDataGenOldFaithful
% prtDataGenOldFaithful Load the classic Old Faithful dataset
%
%   DataSet = prtDataGenOldFaithful; Generates an unlabeled prtDataSetClass
%   containing the data from the Old Faithful geyser eruptions in terms of
%   eruption length, and waiting time between eruptions.
%
%   For more information on this data set please refer to the following URL
% 
%   http://stat.ethz.ch/R-manual/R-patched/library/datasets/html/faithful.html
%
%   Example:
%
%   ds = prtDataGenOldFaithful;
%   plot(ds)
%
%   See also: prtDataSetClass, prtDataGenBiModal, prtDataGenIris,
%   prtDataGenManual, prtDataGenMary, prtDataGenNoisySinc,
%   prtDataGenOldFaithful,prtDataGenProtate, prtDataGenSprial,
%   prtDataGenSpiral3Regress, prtDataGenUnimodal, prtDataGenSwissRoll,
%   prtDataGenUnimodal, prtDataGenXor



DS = prtDataSetStandard(getData(),'name','Old Faithful');
DS = DS.setFeatureNames({'Eruption time (m)','Waiting time (m)'});

end

function X = getData
X = [3.600000 79.000000;
    1.800000 54.000000;
    3.333000 74.000000;
    2.283000 62.000000;
    4.533000 85.000000;
    2.883000 55.000000;
    4.700000 88.000000;
    3.600000 85.000000;
    1.950000 51.000000;
    4.350000 85.000000;
    1.833000 54.000000;
    3.917000 84.000000;
    4.200000 78.000000;
    1.750000 47.000000;
    4.700000 83.000000;
    2.167000 52.000000;
    1.750000 62.000000;
    4.800000 84.000000;
    1.600000 52.000000;
    4.250000 79.000000;
    1.800000 51.000000;
    1.750000 47.000000;
    3.450000 78.000000;
    3.067000 69.000000;
    4.533000 74.000000;
    3.600000 83.000000;
    1.967000 55.000000;
    4.083000 76.000000;
    3.850000 78.000000;
    4.433000 79.000000;
    4.300000 73.000000;
    4.467000 77.000000;
    3.367000 66.000000;
    4.033000 80.000000;
    3.833000 74.000000;
    2.017000 52.000000;
    1.867000 48.000000;
    4.833000 80.000000;
    1.833000 59.000000;
    4.783000 90.000000;
    4.350000 80.000000;
    1.883000 58.000000;
    4.567000 84.000000;
    1.750000 58.000000;
    4.533000 73.000000;
    3.317000 83.000000;
    3.833000 64.000000;
    2.100000 53.000000;
    4.633000 82.000000;
    2.000000 59.000000;
    4.800000 75.000000;
    4.716000 90.000000;
    1.833000 54.000000;
    4.833000 80.000000;
    1.733000 54.000000;
    4.883000 83.000000;
    3.717000 71.000000;
    1.667000 64.000000;
    4.567000 77.000000;
    4.317000 81.000000;
    2.233000 59.000000;
    4.500000 84.000000;
    1.750000 48.000000;
    4.800000 82.000000;
    1.817000 60.000000;
    4.400000 92.000000;
    4.167000 78.000000;
    4.700000 78.000000;
    2.067000 65.000000;
    4.700000 73.000000;
    4.033000 82.000000;
    1.967000 56.000000;
    4.500000 79.000000;
    4.000000 71.000000;
    1.983000 62.000000;
    5.067000 76.000000;
    2.017000 60.000000;
    4.567000 78.000000;
    3.883000 76.000000;
    3.600000 83.000000;
    4.133000 75.000000;
    4.333000 82.000000;
    4.100000 70.000000;
    2.633000 65.000000;
    4.067000 73.000000;
    4.933000 88.000000;
    3.950000 76.000000;
    4.517000 80.000000;
    2.167000 48.000000;
    4.000000 86.000000;
    2.200000 60.000000;
    4.333000 90.000000;
    1.867000 50.000000;
    4.817000 78.000000;
    1.833000 63.000000;
    4.300000 72.000000;
    4.667000 84.000000;
    3.750000 75.000000;
    1.867000 51.000000;
    4.900000 82.000000;
    2.483000 62.000000;
    4.367000 88.000000;
    2.100000 49.000000;
    4.500000 83.000000;
    4.050000 81.000000;
    1.867000 47.000000;
    4.700000 84.000000;
    1.783000 52.000000;
    4.850000 86.000000;
    3.683000 81.000000;
    4.733000 75.000000;
    2.300000 59.000000;
    4.900000 89.000000;
    4.417000 79.000000;
    1.700000 59.000000;
    4.633000 81.000000;
    2.317000 50.000000;
    4.600000 85.000000;
    1.817000 59.000000;
    4.417000 87.000000;
    2.617000 53.000000;
    4.067000 69.000000;
    4.250000 77.000000;
    1.967000 56.000000;
    4.600000 88.000000;
    3.767000 81.000000;
    1.917000 45.000000;
    4.500000 82.000000;
    2.267000 55.000000;
    4.650000 90.000000;
    1.867000 45.000000;
    4.167000 83.000000;
    2.800000 56.000000;
    4.333000 89.000000;
    1.833000 46.000000;
    4.383000 82.000000;
    1.883000 51.000000;
    4.933000 86.000000;
    2.033000 53.000000;
    3.733000 79.000000;
    4.233000 81.000000;
    2.233000 60.000000;
    4.533000 82.000000;
    4.817000 77.000000;
    4.333000 76.000000;
    1.983000 59.000000;
    4.633000 80.000000;
    2.017000 49.000000;
    5.100000 96.000000;
    1.800000 53.000000;
    5.033000 77.000000;
    4.000000 77.000000;
    2.400000 65.000000;
    4.600000 81.000000;
    3.567000 71.000000;
    4.000000 70.000000;
    4.500000 81.000000;
    4.083000 93.000000;
    1.800000 53.000000;
    3.967000 89.000000;
    2.200000 45.000000;
    4.150000 86.000000;
    2.000000 58.000000;
    3.833000 78.000000;
    3.500000 66.000000;
    4.583000 76.000000;
    2.367000 63.000000;
    5.000000 88.000000;
    1.933000 52.000000;
    4.617000 93.000000;
    1.917000 49.000000;
    2.083000 57.000000;
    4.583000 77.000000;
    3.333000 68.000000;
    4.167000 81.000000;
    4.333000 81.000000;
    4.500000 73.000000;
    2.417000 50.000000;
    4.000000 85.000000;
    4.167000 74.000000;
    1.883000 55.000000;
    4.583000 77.000000;
    4.250000 83.000000;
    3.767000 83.000000;
    2.033000 51.000000;
    4.433000 78.000000;
    4.083000 84.000000;
    1.833000 46.000000;
    4.417000 83.000000;
    2.183000 55.000000;
    4.800000 81.000000;
    1.833000 57.000000;
    4.800000 76.000000;
    4.100000 84.000000;
    3.966000 77.000000;
    4.233000 81.000000;
    3.500000 87.000000;
    4.366000 77.000000;
    2.250000 51.000000;
    4.667000 78.000000;
    2.100000 60.000000;
    4.350000 82.000000;
    4.133000 91.000000;
    1.867000 53.000000;
    4.600000 78.000000;
    1.783000 46.000000;
    4.367000 77.000000;
    3.850000 84.000000;
    1.933000 49.000000;
    4.500000 83.000000;
    2.383000 71.000000;
    4.700000 80.000000;
    1.867000 49.000000;
    3.833000 75.000000;
    3.417000 64.000000;
    4.233000 76.000000;
    2.400000 53.000000;
    4.800000 94.000000;
    2.000000 55.000000;
    4.150000 76.000000;
    1.867000 50.000000;
    4.267000 82.000000;
    1.750000 54.000000;
    4.483000 75.000000;
    4.000000 78.000000;
    4.117000 79.000000;
    4.083000 78.000000;
    4.267000 78.000000;
    3.917000 70.000000;
    4.550000 79.000000;
    4.083000 70.000000;
    2.417000 54.000000;
    4.183000 86.000000;
    2.217000 50.000000;
    4.450000 90.000000;
    1.883000 54.000000;
    1.850000 54.000000;
    4.283000 77.000000;
    3.950000 79.000000;
    2.333000 64.000000;
    4.150000 75.000000;
    2.350000 47.000000;
    4.933000 86.000000;
    2.900000 63.000000;
    4.583000 85.000000;
    3.833000 82.000000;
    2.083000 57.000000;
    4.367000 82.000000;
    2.133000 67.000000;
    4.350000 74.000000;
    2.200000 54.000000;
    4.450000 83.000000;
    3.567000 73.000000;
    4.500000 73.000000;
    4.150000 88.000000;
    3.817000 80.000000;
    3.917000 71.000000;
    4.450000 83.000000;
    2.000000 56.000000;
    4.283000 79.000000;
    4.767000 78.000000;
    4.533000 84.000000;
    1.850000 58.000000;
    4.250000 83.000000;
    1.983000 43.000000;
    2.250000 60.000000;
    4.750000 75.000000;
    4.117000 81.000000;
    2.150000 46.000000;
    4.417000 90.000000;
    1.817000 46.000000;
    4.467000 74.000000;];
end