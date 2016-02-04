{CompositeDisposable} = require 'atom'

LogView = null

module.exports = LanguageLog =
  config:
    showFilterBar:
      type: 'boolean'
      default: true
    tail:
      type: 'boolean'
      default: false

  activate: (state) ->
    @disposables = new CompositeDisposable
    @grammarDisposable = new CompositeDisposable

    @disposables.add atom.workspace.observeActivePaneItem (item) =>
      @itemUpdate(item)

  deactivate: ->
    @disposables.dispose()
    @logView?.destroy()
    @removeLogPanel()

  itemUpdate: (item) ->
    @grammarDisposable.dispose()
    return @removeLogPanel() unless item?.observeGrammar

    @grammarDisposable.add item.observeGrammar? (grammar) =>
      @removeLogPanel()
      @addLogPanel(item) if grammar.name is 'Log'

  addLogPanel: (textEditor) ->
    return unless atom.config.get 'language-log.showFilterBar'

    # Create new log view if opened log differs from previous
    unless @logView?.textEditor is textEditor
      LogView ?= require './log-view'
      @logView?.destroy()
      @logView = new LogView(textEditor)

    @logPanel = atom.workspace.addBottomPanel(item: @logView, className: 'log-panel')

  removeLogPanel: ->
    @logPanel?.destroy()
