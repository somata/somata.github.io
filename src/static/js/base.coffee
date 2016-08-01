
window.chooseFormat = (format) ->
    console.log format
    document.getElementsByClassName('examples')[0].className = "examples #{format}"
    # if format == 'coffeescript'
    #     window.coffeescript = true
    # else
    #     window.coffeescript = false