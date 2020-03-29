#!/usr/bin/env ruby

File.write "build/index.html", File.read("index.html")
  .sub(/<link.+\/style.css.+$/,   "<style>#{ File.read "style.css" }</style>")
  .sub(/<script.+\/script.js.+$/, "<script>#{ File.read "script.js" }</script>")
