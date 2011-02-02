classdef prtPreProcHistEq < prtPreProc
% prtPreProcHistEq   Histogram equalization pre-processing
%
    %   HISTEQ = prtPreProcHistEq creates a histogram equalization pre
    %   processing object. A prtPreProcHistEq object processes the input
    %   data
    %   so that the distribution of each feature is approximately uniform
    %   in the range [0,1].  
    % 
    %   prtPreProcHistEq has the following properties:
    %
    %   nSamples    - The number of samples to use when learning the
    %               histogtram of the training data.  The default is inf
    %               (which uses all the data), however for large data sets
    %               this can be slow.
    %
    %   A prtPreProcHistEq object also inherits all properties and functions from
    %   the prtAction class
    %
    %   Example:
    %
    %   dataSet = prtDataGenIris;              % Load a data set
    %   dataSet = dataSet.retainFeatures(1:2); % Use only the first 2
    %                                          % Features
    %   histEq = prtPreProcHistEq;             % Create the
    %                                          % prtPreProcHistEq Object
    %                        
    %   histEq = histEq.train(dataSet);        % Train the object
    %   dataSetNew = histEq.run(dataSet);      % Equalize the histogram
    % 
    %   % Plot
    %   subplot(2,1,1); plot(dataSet);
    %   title('Original Data');
    %   subplot(2,1,2); plot(dataSetNew);
    %   title('HistEq Data');
    %
    %   See Also: prtPreProc,
    %   prtOutlierRemoval,prtPreProcNstdOutlierRemove,
    %   prtOutlierRemovalMissingData,
    %   prtPreProcNstdOutlierRemoveTrainingOnly, prtOutlierRemovalNStd,
    %   prtPreProcPca, prtPreProcPls, prtPreProcHistEq,
    %   prtPreProcZeroMeanColumns, prtPreProcLda, prtPreProcZeroMeanRows,
    %   prtPreProcLogDisc, prtPreProcZmuv, prtPreProcMinMaxRows                    

    properties (SetAccess=private)
        name = 'Histogram Equalization'
        nameAbbreviation = 'HistEq'
    end
    
    properties
        nSamples = inf;  % The number of samples to process.
    end
    properties (SetAccess=private)
        % General Classifier Properties
        %binEdges = {};
        binEdges = [];
    end
    
    methods
        function obj = set.nSamples(obj,var)
            assert(prtUtilIsPositiveInteger(var),'Error, nSamples must be a positive integer');
            obj.nSamples = var;
        end
        function Obj = prtPreProcHistEq(varargin)
            % Allow for string, value pairs
            % There are no user settable options though.
            Obj = prtUtilAssignStringValuePairs(Obj,varargin{:});
        end
    end
    
    methods (Access = protected, Hidden = true)
        
        function Obj = trainAction(Obj,DataSet)
            
            if Obj.nSamples == inf
                Obj.nSamples = DataSet.nObservations;
                for dim = 1:DataSet.nFeatures
                    Obj.binEdges = sort(DataSet.getX);
                end
            else
                for dim = 1:DataSet.nFeatures
                    [~,Obj.binEdges(:,dim)] = hist(DataSet.getFeatures(dim),Obj.nSamples);
                end
            end
            
            Obj.binEdges = cat(1,-inf*ones(1,DataSet.nFeatures),Obj.binEdges);
            Obj.binEdges(end+1,:) = inf;
        end
        
        function DataSet = runAction(Obj,DataSet)
            
            X = zeros(DataSet.nObservations,DataSet.nFeatures);
            for index = 1:DataSet.nObservations
                
                %Find everywhere where any column is greater than binEdges
                %(centers)?
                [ii,jj] = find(bsxfun(@le,DataSet.getObservations(index,:),Obj.binEdges));
                %keyboard
                %The indices of gthe unique jj's are the first time the
                %gt test passed; these are the places we care about
                [uniqueJJ,firstInd] = unique(jj,'first');
                
                if length(uniqueJJ) < DataSet.nFeatures
                    nanInd = setdiff(1:DataSet.nFeatures,uniqueJJ);
                    X(index,nanInd) = nan;
                end
                
                if ~isempty(firstInd)
                    iiSelected = ii(firstInd);
                    X(index,uniqueJJ) = iiSelected';
                end
            end
            
            %Right now we have the histogram index, normalize this to be
            %between 0 and 1
            X = X./(size(Obj.binEdges,1)-2);  %-2, one for first, and one for last bin
            DataSet = DataSet.setObservations(X);
        end
        
    end
end