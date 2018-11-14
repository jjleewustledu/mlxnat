classdef (Abstract) ProjectKit < handle
	%% PROJECTKIT is the AbstractFactory in an abstract factory pattern.
    %  For concrete factory subclasses see also:  {mlpowers, mlarbelaez, mlraichle, ....}.ProjectKit.  
    %  ProjectKit's abstract products are mlxnat.XnatType.
    %  For concrete products see also:  {mlpowers, mlarbelaez, mlraichle, ....}.{Project, Subject, Session, Scan,
    %  Assessor, Resource}.

	%  $Revision$
 	%  was created 18-Oct-2018 16:10:17 by jjlee,
 	%  last modified $LastChangedDate$ and placed into repository /Users/jjlee/MATLAB-Drive/mlxnat/src/+mlxnat.
 	%% It was developed on Matlab 9.4.0.813654 (R2018a) for MACI64.  Copyright 2018 John Joowon Lee.
 	
	properties
 		
 	end

	methods (Static)
        function obj = CreateProject(varargin)
            ip = inputParser;
            addParameter(ip, 'studyArm', '', @ischar);
            parse(ip, varargin{:});
            
            obj = [];
        end
        function obj = CreateSubject(varargin)
            ip = inputParser;
            addParameter(ip, 'project', [], @(x) isa(x, 'mlxnat.XnatType'));
            parse(ip, varargin{:});
            
            obj = [];
        end
        function obj = CreateSession(varargin)
            ip = inputParser;
            addParameter(ip, 'project', [], @(x) isa(x, 'mlxnat.XnatType'));
            parse(ip, varargin{:});
            
            obj = [];
        end
        function obj = CreateScan(varargin)
            ip = inputParser;
            addParameter(ip, 'id', '', @ischar);
            addParameter(ip, 'label', '', @ischar);
            addParameter(ip, 'integerId', [], @isnumeric);
            addParameter(ip, 'scanType', '', @ischar);
            parse(ip, varargin{:});
            
            obj = [];
        end
        function obj = CreateAssessor(varargin)
            ip = inputParser;
            addParameter(ip, 'id', '', @ischar);
            addParameter(ip, 'label', '', @ischar);
            parse(ip, varargin{:});
            
            obj = [];
        end
        function obj = CreateResource(varargin)
            ip = inputParser;
            addParameter(ip, 'id', '', @ischar);
            addParameter(ip, 'label', '', @ischar);
            addParameter(ip, 'integerId', [], @isnumeric);
            parse(ip, varargin{:});
            
            obj = [];
        end
    end
    
    %% PROTECTED
    
	methods (Access = protected)	  
 		function this = ProjectKit(varargin)
 		end
 	end 

	%  Created with Newcl by John J. Lee after newfcn by Frank Gonzalez-Morphy
 end

