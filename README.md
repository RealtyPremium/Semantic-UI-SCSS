# Semantic-UI-SCSS

[![Donate](http://i.imgur.com/sMi7BNV.png)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=NMYPWP6VCWGKN)



### What this is

This is the much needed Semantic UI SCSS port. Based on bootstrap-sass's converter.

### How to use

You need to have ruby installed on your system.

Just clone this repo to your local environment and run this from your command line:

`rake convert`

That's it!!

The converter will automatically fetch the latest files from the Semantic UI repo and convert the LESS fils on the fly :)

After executing the rake task, you should see a new folder called `semantic`, inside which you will have sub-folders containing the converted SCSS files.


At present, the converter only converts the LESS files.

### Roadmap

##### TODO:

* Clone fonts from the source repo.
* Clone images from the source repo.
* Clone/convert JS from the source repo.
* Add automatic Compass conversion.
* SASS port.
