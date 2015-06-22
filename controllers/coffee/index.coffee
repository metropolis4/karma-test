module.exports =
  main: (req,res) ->
    res.render 'home'
  templates: (req,res) ->
    res.render 'templates/' + req.params.templateid
