function fn() {
  return { someConfig: 'someValue' }
}

// Below needs to be investigated how it works
//function fn() {
//  karate.configure('connectTimeout', 5000);
//  karate.configure('readTimeout', 5000);
//  var port = karate.properties['demo.server.port'];
//  if (!port) {
//    port = karate.env == 'web' ? 8090 : 8081;
//  }
//  var protocol = 'http';
//  if (karate.properties['demo.server.https'] == 'true') {
//    protocol = 'https';
//    karate.configure('ssl', true);
//  }
//  var config = { demoBaseUrl: protocol + '://127.0.0.1:' + port };
//  if (karate.env == 'proxy') {
//    var proxyPort = karate.properties['demo.proxy.port'];
//    karate.configure('proxy', 'http://127.0.0.1:' + proxyPort);
//  }
//  if (env == 'dev') {
//      karate.configure('connectTimeout', 20000);
//       karate.configure('readTimeout', 2000000);
//  }
//  if (karate.env != 'mock' && karate.env != 'proxy' && karate.env != 'contract') {
//    // 'callSingle' is guaranteed to run only once even across all threads
//    var result = karate.callSingle('classpath:demo/headers/common-noheaders.feature', config);
//    // and it sets a variable called 'authInfo' used in headers-single.feature
//    config.authInfo = { authTime: result.time, authToken: result.token };
//  }
//  return config;
//}

