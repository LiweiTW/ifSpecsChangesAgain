global.Sails = require("sails")
global.should = require("should")
global.request = require("supertest")
global.async = require('async')

###
Before ALL the test bootstrap the server
###
before (done) ->
  # Lift Sails and start the server
  Sails.lift
    environment: "test"
    hooks:
      grunt:false


    port: Math.floor(Math.random()*90000) + 10000

    models:
    # #   connection: "testMysql"
      migrate: "drop"

  , (error, sails) ->
    global.app = sails
    done error, sails
    return

  return
