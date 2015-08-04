

coco = 500
# coco = 50
# coco = 5000

exports.morning = (text, cb) ->
  return cb "安安" if text is "Webber 早安"
  return cb "..."

exports.coffee = (text, cb) ->
  return cb true if text is "Webber 你要不要喝咖啡？"
  return cb "..."

exports.borrow = (ntd, cb) ->
  return cb ntd if ntd <= coco
  return cb 0