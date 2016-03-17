// Riot js
const riot = require('riot');
const mainTemplate = require('./app/tags/main.tag');
const debugTemplate = require('./app/tags/debug.tag');
const jQuery = require('jquery');
const ElectronSettings = require('electron-settings');

// Save the counter value
var settings = new ElectronSettings();

if ( !settings.get()['counter'] )
  settings.set('counter', 0);

riot.mount('main-template');

riot.mount('debug', {
  'processVersion' : process.versions.node,
  'chromeVersion' : process.versions.chrome,
  'electronVersion' : process.versions.electron});
