###
Bootstrap
###
global.Sails = require("sails")
global.should = require("should")
global.request = require("supertest")
global.async = require('async')

#Utils = require('./utils'),
#Database = require('./database'),
#localConf = require('../../config/local');


###
After ALL the tests, lower sails
###
after (done) ->

  app.lower done()
