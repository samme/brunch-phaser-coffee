module.exports =

  key: 'default'

  init: (data) ->
    console.log 'init', data, this
    return

  create: ->
    sky = @add.image 400, 300, 'sky'
    sky.alpha = 0.5
    particles = @add.particles 'red'
    emitter = particles.createEmitter(
      speed: 100
      scale:
        start: 1
        end: 0
      blendMode: 'ADD')
    logo = @physics.add.image 400, 100, 'logo'
    logo.setVelocity 100, 200
    logo.setBounce 1, 1
    logo.setCollideWorldBounds true
    emitter.startFollow logo
    @input.keyboard.once 'keydown_Q', @quit, this
    return

  update: ->
    @score += 1
    return

  extend:

    score: 0

    quit: ->
      @scene.start 'menu', score: @score
      return
