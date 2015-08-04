describe "跟 Webber 的某天對話：", ->

  it "跟 Webber 說早安", (done) ->
    Webber.morning "Webber 早安", (result)->
      # Webeer 都說安安
      result.should.be.eql("安安").and.and.be.a.String
      done()

  it "請 Webber 喝咖啡", (done) ->
    Webber.coffee "Webber 你要不要喝咖啡？", (result)->
      # Webber 都會喝
      result.should.be.true().and.be.a.Boolean
      done()

  it "跟 Webber 借 10 元", (done) ->
    ntd = 10
    Webber.borrow ntd, (coco)->
      coco.should.be.eql(ntd).and.be.a.Number
      done()

  it "跟 Webber 借 100 元", (done) ->
    ntd = 100
    Webber.borrow ntd, (coco)->
      coco.should.be.eql(ntd).and.be.a.Number
      done()

  it "跟 Webber 借 1000 元，但是 Webber 錢不夠。", (done) ->
    ntd = 1000
    Webber.borrow ntd, (coco)->
      coco.should.not.be.eql(ntd).and.be.a.Number
      done()