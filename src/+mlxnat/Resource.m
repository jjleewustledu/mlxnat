classdef Resource < handle & mlxnat.XnatType
	%% RESOURCE  

	%  $Revision$
 	%  was created 18-Oct-2018 16:44:45 by jjlee,
 	%  last modified $LastChangedDate$ and placed into repository /Users/jjlee/MATLAB-Drive/mlraichle/src/+mlraichle.
 	%% It was developed on Matlab 9.4.0.813654 (R2018a) for MACI64.  Copyright 2018 John Joowon Lee.
 	
    properties (Dependent)
        project
        subject
        session
 		scan
        tags
    end

	methods   
        
        %% GET
        
        function g = get.project(this)
            g = this.scan.project;
        end
        function g = get.subject(this)
            g = this.scan.subject;
        end
        function g = get.session(this)
            g = this.scan.session;
        end
        function g = get.scan(this)
            g = this.scan_;
        end
        function g = get.tags(this)
            g = [this.scan.tags this.tags_];
        end
        
        %%
        
        function dt = datetime(this)
            dt = datetime(this.scan);
        end
		  
 		function this = Resource(varargin)
 			%% RESOURCE
 			%  @param scan is mlraichle.Scan.
            %  @param resourceDetails.

 			this = this@mlxnat.XnatType(varargin{:});
            ip = inputParser;
            ip.KeepUnmatched = true;
            addParameter(ip, 'scan', '', @(x) ischar(x) || isa(x, 'mlraichle.Scan'));
            addParameter(ip, 'resourceDetails', []);
            parse(ip, varargin{:});
            this.scan_ = ip.Results.scan;
            this.resourceDetails_ = ip.Results.resourceDetails;
 		end
    end 
    
    %% PRIVATE
    
    properties (Access = private)
        scan_
        resourceDetails_
    end

	%  Created with Newcl by John J. Lee after newfcn by Frank Gonzalez-Morphy
 end

