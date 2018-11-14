classdef Project < handle & mlxnat.XnatType
	%% PROJECT  

	%  $Revision$
 	%  was created 18-Oct-2018 16:43:38 by jjlee,
 	%  last modified $LastChangedDate$ and placed into repository /Users/jjlee/MATLAB-Drive/mlraichle/src/+mlraichle.
 	%% It was developed on Matlab 9.4.0.813654 (R2018a) for MACI64.  Copyright 2018 John Joowon Lee.
 	
    properties (Dependent)
        tags
    end

	methods 
        function g = get.tags(this)
            g = this.tags_;
        end
		  
 		function this = Project(varargin)
 			%% PROJECT
 			%  @param projectDetails.

 			this = this@mlxnat.XnatType(varargin{:});
            ip = inputParser;
            ip.KeepUnmatched = true;
            addParameter(ip, 'projectDetails', []);
            parse(ip, varargin{:});
            this.projectDetails_ = ip.Results.projectDetails;
 		end
 	end 
    
    %% PRIVATE
    
    properties (Access = private)
        projectDetails_
    end

	%  Created with Newcl by John J. Lee after newfcn by Frank Gonzalez-Morphy
 end

