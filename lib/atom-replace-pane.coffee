module.exports =
  activate: ->
    atom.workspace.onDidOpen (event) ->
      if pane = atom.workspace.getActivePane()
        items = atom.workspace.getPaneItems();
        items.forEach (item) ->
          if event.item != item
            item.save()
            pane.destroyItem(item)
