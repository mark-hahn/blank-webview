
module.exports =
class BlankWebviewView
  constructor: ->
    @element = document.createElement('div')
    @element.classList.add('blank-webview')

    webview = document.createElement('webview')
    webview.setAttribute 'style', 'width: 100%; height: 100%'
    webview.setAttribute 'src',   
      'file:///c:/Users/Administrator/.atom/packages/web-browser/www/sample.html'
    @element.appendChild(webview)
    
    setTimeout ->
      console.log 'webview.getUrl', webview.getUrl()
    , 3000

  getElement: -> @element

  