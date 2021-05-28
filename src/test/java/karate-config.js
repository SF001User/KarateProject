function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  // This section is for declaring global variables that accessible anywhere
  var config = {
    env: env,
    batchName: 'Batch 21',
    library_url : 'https://library1.cybertekschool.com/rest/v1',
    librarian_username : 'librarian69@library',
    librarian_password : 'KNPXrm3S'
  }

  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}