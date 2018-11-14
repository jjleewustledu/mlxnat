classdef (Abstract) XnatType < handle
	%% XNATTYPE  

	%  $Revision$
 	%  was created 18-Oct-2018 16:17:52 by jjlee,
 	%  last modified $LastChangedDate$ and placed into repository /Users/jjlee/MATLAB-Drive/mlxnat/src/+mlxnat.
 	%% It was developed on Matlab 9.4.0.813654 (R2018a) for MACI64.  Copyright 2018 John Joowon Lee.
 	
	properties (Abstract)
 		tags
 	end

	methods 
		  
 		function this = XnatType(varargin)
 			%% XNATTYPE
 			%  @param tags is cell | char | string.

            ip = inputParser;
            ip.KeepUnmatched = true;
            addParameter(ip, 'tags', {}, @(x) iscell(x) || ischar(x) || isstring(x));
            parse(ip, varargin{:});
            this.tags_ = ip.Results.tags;
            if (~iscell(this.tags_))
                this.tags_ = {this.tags_};
            end 			
 		end
    end 
    
    %% PROTECTED
    
    properties (Access = protected)
        tags_
    end

	%  Created with Newcl by John J. Lee after newfcn by Frank Gonzalez-Morphy
 end

