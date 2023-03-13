function Image(images)
    if images.classes:find('media',1) then
      local f = io.open("Ranger-notes-kallipos/" .. images.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local caption = pandoc.utils.stringify(doc.meta.caption) 
      local username = pandoc.utils.stringify(doc.meta.username)
      local am = pandoc.utils.stringify(doc.meta.am)
      local content = "> " .. caption .. "  \n>" .. " Ονοματεπώνυμο:" .. username .. "  \n>" .. " Αριθμός Μητρώου:" .. am
      return pandoc.RawInline('markdown',content)
    end
end
