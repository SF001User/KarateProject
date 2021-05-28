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

  if (env == 'library2') {
    // customize
    // e.g. config.foo = 'bar';
    config.library_url = 'https://library2.cybertekschool.com/rest/v1'
    config.librarian_username = 'librarian570@library'
    config.librarian_password = '2gCucjjn'


  } else if (env == 'library3') {
    config.library_url = 'https://library3.cybertekschool.com/rest/v1'
    config.librarian_username = 'librarian11@library'
    config.librarian_password = 'shpUFwRF'
  }
  return config;
}