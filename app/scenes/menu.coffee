FONT = 'Futura,system-ui,sans-serif'

module.exports =

  key: 'menu'

  init: (data) ->
    console.debug 'init', @scene.key, data, this
    return

  create: ->
    sky = @add.image 400, 300, 'sky'
    sky.alpha = 0.5
    @add.text(400, 300, 'START',
      fill: 'white'
      fontFamily: FONT
      fontSize: 48)
      .setOrigin 0.5
      .setShadow 0, 1, '#62F6FF', 10
    @add.text(400, 450, "Last Score: #{@registry.get 'score'}",
      fill: '#FED141'
      fontFamily: FONT
      fontSize: 24)
      .setOrigin 0.5
      .setShadow 0, 1, 'black', 5
    @input.on 'pointerdown', @start, this
    return

  extend:

    start: ->
      @scene.start 'default'
      return
