postcss = require 'postcss'
$ = require 'cheerio'

css = postcss.parse('a::before {
    width: 10px;
    height: 10px;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
}')

vendorProperty = []

removeDupes = (arr)->
  uniqueNames =[]
  $.each arr, (i, el)->
    uniqueNames.push(el) if $.inArray(el, uniqueNames) is -1
  uniqueNames



contenter = postcss (css) ->
    css.eachRule (rule) ->
      rule.decls.forEach (declaration, i) ->

        regex = /(-webkit-.*?)|(-khtml-.*?)|(-ms-.*?)|(-moz-.*?)|(-o-.*?)/

        match = declaration.prop.match(regex)
        if match?
          m = declaration.prop.replace(regex,"")
          #This automatically removes dupes
          vendorProperty["@include #{m}"] = "(#{declaration.value})"
          #Remove the vendor prefixed property
          rule.decls.splice(i,1)


      rule.decls.forEach (declaration, i) ->
        #if it exists in array
        if declaration in vendorProperty
          rule.decls.splice(i,1)

      #rule.decls.concat vendorProperty

      rule.decls.forEach (declaration, i) ->
        console.log declaration.prop

      vendorProperty = null
      #console.log rule.decls

fixed = contenter.process(css).css
