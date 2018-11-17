classdef Session < handle & mlxnat.XnatType
	%% SESSION  

	%  $Revision$
 	%  was created 18-Oct-2018 16:44:16 by jjlee,
 	%  last modified $LastChangedDate$ and placed into repository /Users/jjlee/MATLAB-Drive/mlraichle/src/+mlraichle.
 	%% It was developed on Matlab 9.4.0.813654 (R2018a) for MACI64.  Copyright 2018 John Joowon Lee.
 	 	
    properties (Dependent)
        project
 		subject
        tags
    end

	methods 
        
        %% GET
        
        function g = get.project(this)
            g = this.subject.project;
        end
        function g = get.subject(this)
            g = this.subject_;
        end
        function g = get.tags(this)
            g = [this.subject.tags this.tags_];
        end
        
        %%
        
        function dt = datetime(this)
            if (isempty(this.sessionDetails_))
                dt = NaT;
                return
            end
            dt = this.sessionDetails_.datetime;
        end		  
		  
 		function this = Session(varargin)
 			%% SESSION
 			%  @param subject is mlraichle.Subject.
            %  @param sessionDetails.

 			this = this@mlxnat.XnatType(varargin{:});         
            ip = inputParser;
            ip.KeepUnmatched = true;
            addParameter(ip, 'subject', '', @(x) ischar(x) || isa(x, 'mlraichle.Subject'));
            addParameter(ip, 'sessionDetails', []);
            parse(ip, varargin{:});
            this.subject_ = ip.Results.subject;
            this.sessionDetails_ = ip.Results.sessionDetails;
 		end
 	end 
    
    %% PROTECTED
    
    properties (Access = protected)
        subject_
        sessionDetails_
    end

	%  Created with Newcl by John J. Lee after newfcn by Frank Gonzalez-Morphy
 end

