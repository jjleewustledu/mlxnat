classdef Subject < handle & mlxnat.XnatType
	%% SUBJECT  

	%  $Revision$
 	%  was created 18-Oct-2018 16:44:08 by jjlee,
 	%  last modified $LastChangedDate$ and placed into repository /Users/jjlee/MATLAB-Drive/mlraichle/src/+mlraichle.
 	%% It was developed on Matlab 9.4.0.813654 (R2018a) for MACI64.  Copyright 2018 John Joowon Lee.
 	
    properties (Dependent)
        project
        tags
    end

	methods 
        function g = get.project(this)
            g = this.project_;
        end
        function g = get.tags(this)
            g = [this.project.tags this.tags_];
        end
        
        %%
		  
 		function this = Subject(varargin)
 			%% SUBJECT
 			%  @param project is mlraichle.Project.
            %  @param subjectDetails.

 			this = this@mlxnat.XnatType(varargin{:});
            ip = inputParser;
            ip.KeepUnmatched = true;
            addParameter(ip, 'project', '', @(x) ischar(x) || isa(x, 'mlraichle.Project'));
            addParameter(ip, 'subjectDetails', []);
            parse(ip, varargin{:});
            this.project_ = ip.Results.project;
            this.subjectDetails_ = ip.Results.subjectDetails;
 		end
 	end 
    
    %% PRIVATE
    
    properties (Access = private)
        project_
        subjectDetails_
    end

	%  Created with Newcl by John J. Lee after newfcn by Frank Gonzalez-Morphy
 end

