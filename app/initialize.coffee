window.game = new Phaser.Game
  width: 800
  height: 600
  # zoom: 1
  # resolution: 1
  # type: Phaser.AUTO
  # parent: null
  # canvas: null
  # canvasStyle: null
  # seed: null
  title: '☕️ Brunch with Phaser'
  url: 'https://github.com/samme/brunch-phaser'
  version: '0.0.1'
  # input:
  #   keyboard: on
  #   mouse: on
  #   touch: on
  #   gamepad: off
  # disableContextMenu: off
  # banner: off
  banner:
    # hidePhaser: off
    text: 'white'
    background: [
      '#e54661'
      '#ffa644'
      '#998a2f'
      '#2c594f'
      '#002d40'
    ]
  # fps:
  #   min: 10
  #   target: 60
  #   forceSetTimeout: off
  # pixelArt: off
  # transparent: off
  # clearBeforeRender: on
  # backgroundColor: 0x000000
  loader:
    # baseURL: ''
    path: 'assets/'
    maxParallelDownloads: 6
    # crossOrigin: 'anonymous'
    # timeout: 0
  physics:
    default: 'arcade'
    arcade:
      gravity:
        y: 180
  scene: [
    require('scenes/boot')
    require('scenes/default')
    require('scenes/menu')
  ]
