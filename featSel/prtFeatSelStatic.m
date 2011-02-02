classdef prtFeatSelStatic < prtFeatSel %
    % prtFeatSelStatic  Static feature selection object.
    %
    %  FEATSEL = prtFeatSelStatic creates a static feature selection
    %  object. 
    %  
    %  FEATSEL = prtFeatSelStatic('selectedFeatures', FEATURES) creates a
    %  static feature selection object with the selectedFeatures parameter
    %  set to FEATURES.
    % 
    %  A static feature selction object selects the features specified by
    %  the selectedFeatures parameter.
    %
    %   Example:
    %   
    %   dataSet = prtDataGenIris;            % Load a data set with 4 features
    %   StaticFeatSel = prtFeatSelStatic; % Create a static feature
    %                                     % selection object.
    %   StaticFeatSel.selectedFeatures = [1 3];   % Choose the first and
    %                                             % third feature
    %   % Training is not necessary for a static feature selection object,
    %   % the following command has no effect.
    %   StaticFeatSel = StaticFeatSel.train(dataSet);  
    %   
    %   dataSetReduced = StaticFeatSel.run(dataSet);   %Run the feature
    %                                                  %selection
    %   explore(dataSetReduced);
    
    properties (SetAccess=private) 
        % Required by prtAction
        name = 'Static Feature Selection'
        nameAbbreviation = 'StaticFeatSel'
    end 
    
    properties 
        % General Classifier Properties
        selectedFeatures = nan   % The selected features
    end
    
    methods 
        function Obj = prtFeatSelStatic(varargin) 
            Obj.isCrossValidateValid = false;
            Obj = prtUtilAssignStringValuePairs(Obj,varargin{:});
        end
        
        function Obj = set.selectedFeatures(Obj,val)
            assert(isvector(val) && prtUtilIsPositiveInteger(val),'prt:prtFeatSelStatic:selectedFeatures','selectedFeatures must be vector of positive integers');
            
            uVals = unique(val);
            if numel(val) ~= numel(uVals)
                warning('prt:prtFeatSelStatic:selectedFeatures','selectedFeatures was set with repeated values. The redundant values have been ignored.')
            end
            
            Obj.selectedFeatures = uVals(:)';
        end
    end
    methods (Access=protected,Hidden=true)
        
        function Obj = trainAction(Obj,~)
            if isnan(Obj.selectedFeatures)
                error('Manually set selectedFeatures field of prtFeatSelStatic to succesfully train and run');
            end
        end
        
        function DataSet = runAction(Obj,DataSet)
            if isnan(Obj.selectedFeatures)
                error('prt:prtFeatSelStatic','Manually set selectedFeatures field of prtFeatSelStatic to succesfully train and run');
            end
            DataSet = DataSet.retainFeatures(Obj.selectedFeatures);
        end
    end
end
