ZebraStripesView = require './zebra-stripes-view'
{CompositeDisposable} = require 'atom'

module.exports = ZebraStripes =
  zebraStripesView: null
  subscriptions: null

  config:
    enabled:
      title: 'Zebra Stripes'
      description: 'this switch will toggle the zebra stripe visual guides in the workspace'
      type: 'boolean'
      default: off
    active_on_open:
      title: 'Always start with zebra stripes enabled'
      description: 'always on when atom starts'
      type: 'boolean'
      default: off
    log_to_console:
      title: 'Log debugging messages to console'
      description: 'enable/disable debug output via the console'
      type: 'boolean'
      default: off

  activate: (state) ->
    @zebraStripesView = new ZebraStripesView(state.zebraStripesViewState)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register commands for this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'zebra-stripes:toggle': => @toggle()
    # listen for changes to the enabled flag in the settings panel
    @subscriptions.add atom.config.onDidChange 'zebra-stripes.enabled', (event) => @render(event)

  deactivate: ->
    @subscriptions.dispose()
    @zebraStripesView.destroy()

  serialize: ->
    zebraStripesViewState: @zebraStripesView.serialize()

  toggle: ->
    @zebraStripesView.toggle()

  render: (event) ->
    @zebraStripesView.render()
