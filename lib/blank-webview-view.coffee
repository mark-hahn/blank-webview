
module.exports =
class BlankWebviewView
  constructor: ->
    @element = document.createElement('div')
    @element.classList.add('blank-webview')

    page1 = document.createElement('webview')
    page1.classList.add 'page1'
    page1.setAttribute 'style', 'width: 100%; height: 100%'
    page1.setAttribute 'src',   'http://atom.io'
    @element.appendChild(page1)
    
    page2 = document.createElement('webview')
    page2.classList.add 'page2'
    page2.setAttribute 'style', 'width: 100%; height: 100%; display: none'
    @element.appendChild(page2)
    
    @element.querySelector('.page1').addEventListener 'new-window', (e) ->
      page1.setAttribute 'style', 'display: none'
      page2.setAttribute 'style', 'display: block'
      page2.setAttribute 'src',   'http://google.com'
      
      setTimeout ->
        page2.setAttribute 'style', 'display: none'
        page1.setAttribute 'style', 'display: block'
      , 5000

  getElement: -> @element

  