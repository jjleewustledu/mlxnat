classdef Scan < handle & mlxnat.XnatType
	%% SCAN  

	%  $Revision$
 	%  was created 18-Oct-2018 16:44:21 by jjlee,
 	%  last modified $LastChangedDate$ and placed into repository /Users/jjlee/MATLAB-Drive/mlraichle/src/+mlraichle.
 	%% It was developed on Matlab 9.4.0.813654 (R2018a) for MACI64.  Copyright 2018 John Joowon Lee.
 	
    properties (Dependent)
        project
        subject
 		session
        tags
    end

	methods 
        
        %% GET
        
        function g = get.project(this)
            g = this.session.project;
        end
        function g = get.subject(this)
            g = this.session.subject;
        end
        function g = get.session(this)
            g = this.session_;
        end
        function g = get.tags(this)
            g = [this.session.tags this.tags_];
        end
        
        %%
        
        function dt = datetime(this)
            if (isempty(this.scanDetails_))
                dt = NaT;
                return
            end
            dt = this.scanDetails_.datetime;
        end
		  
 		function this = Scan(varargin)
 			%% SCAN
 			%  @param session is mlraichle.Session.
            %  @param scanDetails.

 			this = this@mlxnat.XnatType(varargin{:});            
            ip = inputParser;
            ip.KeepUnmatched = true;
            addParameter(ip, 'session', '', @(x) ischar(x) || isa(x, 'mlraichle.Session'));
            addParameter(ip, 'scanDetails', []);
            parse(ip, varargin{:});
            this.session_ = ip.Results.session;
            this.scanDetails_ = ip.Results.scanDetails;
 		end
 	end 
    
    %% PROTECTED
    
    properties (Access = protected)
        session_
        scanDetails_
    end

	%  Created with Newcl by John J. Lee after newfcn by Frank Gonzalez-Morphy
 end

