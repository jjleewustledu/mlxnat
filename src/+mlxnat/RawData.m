classdef RawData < handle & mlxnat.Resource
	%% RAWDATA  

	%  $Revision$
 	%  was created 14-Nov-2018 15:37:46 by jjlee,
 	%  last modified $LastChangedDate$ and placed into repository /Users/jjlee/MATLAB-Drive/mlxnat/src/+mlxnat.
 	%% It was developed on Matlab 9.4.0.813654 (R2018a) for MACI64.  Copyright 2018 John Joowon Lee.
 	
	properties
 		
 	end

	methods 
		  
 		function this = RawData(varargin)
 			%% RAWDATA
 			%  @param .

 			this = this@mlxnat.Resource(varargin{:});
 		end
 	end 

	%  Created with Newcl by John J. Lee after newfcn by Frank Gonzalez-Morphy
 end

