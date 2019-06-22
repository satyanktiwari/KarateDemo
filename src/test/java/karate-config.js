function() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	myVarName: 'someValue'
  }
  if (env == 'dev') {
    karate.configure('connectTimeout', 20000);
     karate.configure('readTimeout', 20000);
  } if (karate.env != 'mock' && karate.env != 'proxy' && karate.env != 'contract') {
        // 'callSingle' is guaranteed to run only once even across all threads
//        var result = karate.callSingle('classpath:demo/headers/common-noheaders.feature', config);
//        // and it sets a variable called 'authInfo' used in headers-single.feature
//        config.authInfo = { authTime: result.time, authToken: result.token };
      }
  karate.configure('connectTimeout', 30000);
  karate.configure('readTimeout', 30000);
    return config;
}