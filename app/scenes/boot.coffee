module.exports =

  key: 'boot'

  init: (data) ->
    console.debug 'init', @scene.key, data, this
    return

  preload: ->
    @load.image 'sky', 'space3.png'
    @load.image 'logo', 'phaser3-logo.png'
    @load.on 'progress', @onLoadProgress, this
    @load.on 'complete', @onLoadComplete, this
    @createProgressBar()
    return

  create: ->
    @registry.set 'score', 0
    @scene.start 'menu'
    return

  extend:

    progressBar: null

    progressBarBgRect: null

    progressBarRect: null

    createProgressBar: ->
      {Rectangle} = Phaser.Geom
      {main} = @cameras
      @progressBarRect = new Rectangle 0, 0, 0.5 * main.width, 50
      Rectangle.CenterOn @progressBarRect, 0.5 * main.width, 0.5 * main.height
      @progressBarBgRect = Rectangle.Clone @progressBarRect
      @progressBar = @add.graphics()
      return

    onLoadComplete: (loader, totalComplete, totalFailed) ->
      console.debug 'complete', totalComplete
      console.debug 'failed', totalFailed
      @progressBar.destroy()
      return

    onLoadProgress: (progress) ->
      console.debug 'progress', progress
      color = if @load.totalFailed then 0xff2200 else 0xffffff
      @progressBarRect.width = progress * @progressBarBgRect
      @progressBar
        .clear()
        .fillStyle 0x222222
        .fillRectShape @progressBarBgRect
        .fillStyle color
        .fillRectShape @progressBarRect
      return
