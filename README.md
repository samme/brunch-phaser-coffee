Brunch with Phaser 3 (CoffeeScript)
====================

A [Brunch](http://brunch.io) skeleton for making games with [Phaser 3](http://phaser.io/phaser3) and [CoffeeScript][1]. ([Why Brunch?](http://brunch.io/docs/why-brunch))

    brunch new <project> -s samme/brunch-phaser-coffee

This is the CoffeeScript variant of [brunch-phaser](https://github.com/samme/brunch-phaser).

Get started
-----------

- Install (if you don't have them):
  - [Node.js](https://nodejs.org)
  - [Brunch](http://brunch.io): `npm install -g brunch`
- Run:
  - `brunch new <project> -s samme/brunch-phaser-coffee`
  - `npm run start` or `brunch watch --server` watches the project with continuous rebuild.
  - `npm run build` or `brunch build --production` builds a minified project for production.
- Make:
  - Write your code in [app](app).
  - Put game assets in [assets](app/static/assets).

Phaser
------

Phaser is managed through [npm](https://docs.npmjs.com/cli/npm).

    npm ls --production

Update with:

    npm update

### Other builds

See the `npm.static` entry in [brunch-config](./brunch-config.coffee).

Add NPM packages
----------------

    npm install -S <package-name>

and in your code:

```coffee
require 'package-name'
```

Add other libraries
-------------------

Add the unminified script to [vendor](vendor).

Plugins
-------

```shell
# List
npm list --dev --depth=0

# Add (http://brunch.io/plugins)
npm install -D plugin-name
```

### Settings

- [coffee-script-brunch](https://www.npmjs.com/package/coffee-script-brunch#configuration)
- [uglify-js-brunch](https://www.npmjs.com/package/uglify-js-brunch#usage)
  - [minify options](https://www.npmjs.com/package/uglify-js#minify-options)

[1]: http://coffeescript.org
