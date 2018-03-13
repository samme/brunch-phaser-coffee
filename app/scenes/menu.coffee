FONT = 'Futura,system-ui,sans-serif'

module.exports =

  key: 'menu'

  init: (data) ->
    @highScore = data.score or 0
    return

  create: ->
    sky = @add.image 400, 300, 'sky'
    sky.alpha = 0.25
    @add.text(400, 300, 'START',
      fill: 'white'
      fontFamily: FONT
      fontSize: 48)
      .setOrigin(0.5)
      .setShadow 0, 1, '#62F6FF', 10
    @add.text(400, 450, 'High Score: ' + @highScore,
      fill: '#FED141'
      fontFamily: FONT
      fontSize: 24)
      .setOrigin(0.5)
      .setShadow 0, 1, 'black', 5
    @input.on 'pointerup', @start, this
    return

  extend:

    highScore: 0

    start: ->
      @scene.start 'default', today: (new Date).toString()
      return
