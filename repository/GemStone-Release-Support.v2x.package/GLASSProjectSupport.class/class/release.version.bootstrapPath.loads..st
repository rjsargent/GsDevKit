bootstrap
release: configurationClass version: versionString bootstrapPath: bootstrapPath loads: anArray
	"GLASSProjectSupport
		release: ConfigurationOfGLASS
		version: '1.0-beta.0' 
		bootstrapPath: '/export/foos2/users/dhenrich/2.0/g_gss64bit/fast50/gs/product/seaside/bootstrap' 
		loads: #('Seaside Dev') "

	"Used for generating a custom bootstrap setup - use with GLASSBootstrapProjectSupport"
	^(self new)
		loads: anArray;
		release: configurationClass 
			version: versionString 
			path: bootstrapPath 
			repositoryPath: bootstrapPath, '/repository' 
			packingListPath: nil;
		yourself
