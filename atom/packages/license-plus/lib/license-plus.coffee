module.exports =
  activate: ->
    atom.workspaceView.command "license:Android-Project", => @android()
    atom.workspaceView.command "license:Apache-2․0", => @apache2()
    atom.workspaceView.command "license:Artistic-2․0", => @artist2()
    atom.workspaceView.command "license:BSD", => @bsd()
    atom.workspaceView.command "license:CC0-1․0", => @cc010()
    atom.workspaceView.command "license:CC-BY-4․0", => @ccby40()
    atom.workspaceView.command "license:CC-BY-ND-4․0", => @ccbynd40()
    atom.workspaceView.command "license:CC-BY-SA-4․0", => @ccbysa40()
    atom.workspaceView.command "license:CC-BY-NC-4․0", => @ccbync40()
    atom.workspaceView.command "license:CC-BY-NC-ND-4․0", => @ccbyncnd40()
    atom.workspaceView.command "license:CC-BY-NC-SA-4․0", => @ccbyncsa40()
    atom.workspaceView.command "license:CDDL-1․0", => @cddl10()
    atom.workspaceView.command "license:Eclipse-1․0", => @eclipse10()
    atom.workspaceView.command "license:MIT", => @mit()
    atom.workspaceView.command "license:GPL-v2", => @gplv2()
    atom.workspaceView.command "license:GPL-v3", => @gplv3()
    atom.workspaceView.command "license:LGPL-v2․1", => @lgplv21()
    atom.workspaceView.command "license:LGPL-v3", => @lgplv3()
    atom.workspaceView.command "license:Mozilla", => @mozilla()
    atom.workspaceView.command "license:The-Unlicense", => @unlicense()

  android: ->
    @addLicense("android")

  apache2: ->
    @addLicense("apache20")

  artist2: ->
    @addLicense("artistic20")

  bsd: ->
    @addLicense("bsd2")

  cc010: ->
    @addLicense("cc010")

  ccby40: ->
    @addLicense("ccby40")

  ccbynd40: ->
    @addLicense("ccbynd40")

  ccbysa40: ->
    @addLicense("ccbysa40")

  ccbync40: ->
    @addLicense("ccbync40")

  ccbyncnd40: ->
    @addLicense("ccbyncnd40")

  ccbyncsa40: ->
    @addLicense("ccbyncsa40")

  ccbyncsa40: ->
    @addLicense("ccbyncsa40")

  cddl10: ->
    @addLicense("cddl10")

  eclipse10: ->
    @addLicense("eclipse10")

  mit: ->
    @addLicense("mit")

  gplv2: ->
    @addLicense("gplv2")

  gplv3: ->
    @addLicense("gplv3")

  lgplv21: ->
    @addLicense("lgplv21")

  lgplv3: ->
    @addLicense("lgplv3")

  mozilla: ->
    @addLicense("mozilla")

  unlicense: ->
    @addLicense("unlicense")


  addLicense: (name)->
    editor = atom.workspace.activePaneItem
    @getLicenseText name, (err, license)->
      editor.insertText(license)

  getLicenseText: (name, next) ->
    fs = require "fs"
    file = __dirname + '/licenses/' + name + ".txt"
    fs.readFile file, 'utf8', next
