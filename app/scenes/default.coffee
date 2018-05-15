module.exports =

  key: 'default'

  init: (data) ->
    console.debug 'init', @scene.key, data, this
    @score = 0
    @events.on 'shutdown', @shutdown, this
    return

  create: ->
    @add.image 400, 300, 'sky'
    logo = @physics.add.image 400, 100, 'logo'
    logo.setVelocity 100, 200
    logo.setBounce 1, 1
    logo.setCollideWorldBounds true
    @input.keyboard.once 'keydown_Q', @quit, this
    return

  update: ->
    @score += 1
    return

  extend:

    score: 0

    quit: ->
      @scene.start 'menu'
      return
    
    shutdown: ->
      @registry.set 'score', @score
      return
