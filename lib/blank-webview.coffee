
BlankWebviewView = require './blank-webview-view'

module.exports = 
  activate: ->
    @view = new BlankWebviewView
    
    atom.commands.add 'atom-workspace', 'blank-webview:toggle', =>
      atom.workspace.addModalPanel item: @view.getElement()
