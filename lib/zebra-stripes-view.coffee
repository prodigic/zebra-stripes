module.exports =
class ZebraStripesView

  workspace: atom.views.getView(atom.workspace)

  showStripes: 'zebra-stripes'
  enabled: 'zebra-stripes.enabled'

  constructor: (serializedState) ->
    @log "enabled: #{@enabled}", "initial: #{atom.config.get @enabled}"
    @render()

  # console logging with settings directed guard
  log: (messages...) ->
    if atom.config.get 'zebra-stripes.log_to_console'
      `console.log(...messages)`

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    workspace.classList.remove @showStripes

  # invert settings value
  toggle: ->
    atom.config.set @enabled , not atom.config.get @enabled

  # Update editor display to match settings value.
  render: ->
    if atom.config.get @enabled
      @workspace.classList.add @showStripes
    else
      @workspace.classList.remove @showStripes

    @log "stripes enabled: #{atom.config.get @enabled} , #{@enabled}"
