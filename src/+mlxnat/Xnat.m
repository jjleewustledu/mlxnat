classdef Xnat 
	%% XNAT specifies a class for data structured for XNAT (xnat.org).  The XNAT data hierarchy is:
    %  Project -> Subject -> Session;
    %  Session -> {Scan, Assessor};
    %  {Project, Subject, Session, Scan, Assessor} -> Resource.
    %  
    %  See also sections "Deriving values" and "XNAT object properties" in 
    %  "Command - Container Service - XNAT Documentation Wiki - Container Service - XNAT Documentation Wiki - JJL.pdf"
    %  in /Users/jjlee/MATLAB-Drive/mlpipeline/doc

	%  $Revision$
 	%  was created 17-Dec-2018 13:27:10 by jjlee,
 	%  last modified $LastChangedDate$ and placed into repository /Users/jjlee/MATLAB-Drive/mlxnat/src/+mlxnat.
 	%% It was developed on Matlab 9.4.0.813654 (R2018a) for MACI64.  Copyright 2018 John Joowon Lee.
 	
	properties (Dependent)
        project
        subject
        session
        scan
        resource
        assessor 		
 	end

	methods 
        
        %% GET/SET
        
        function g = get.project(this)
            g = this.project_;
        end
        function g = get.subject(this)
            g = this.subject_;
        end
        function g = get.session(this)
            g = this.session_;
        end
        function g = get.scan(this)
            g = this.scan_;
        end
        function g = get.resource(this)
            g = this.resource_;
        end
        function g = get.assessor(this)
            g = this.assessor_;
        end
		  
 		function this = Xnat(varargin)
 			%% XNAT
 			%  @param .

            this.project_  = [];
            this.subject_  = [];
            this.session_  = [];
            this.scan_     = [];
            this.resource_ = [];
            this.assessor_ = [];
 		end
    end 
    
    %% PROTECTED
    
    properties (Access = protected)
        projectKit_
        
        project_
        subject_
        session_
        scan_
        resource_
        assessor_
    end

	%  Created with Newcl by John J. Lee after newfcn by Frank Gonzalez-Morphy
 end

