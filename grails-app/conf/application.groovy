// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.logout.postOnly = false
//grails.plugin.springsecurity.password.algorithm = 'SHA-256'
//grails.plugin.springsecurity.password.hash.iterations = 1
grails.plugin.springsecurity.successHandler.defaultTargetUrl = '/customer/index'
grails.plugin.springsecurity.userLookup.userDomainClassName = 'bloging.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'bloging.UserRole'
grails.plugin.springsecurity.authority.className = 'bloging.Role'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']],
	[pattern: '/welcome/**' , access:    ['permitAll']],
	[pattern: '/user/*' , 		access:  ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]

