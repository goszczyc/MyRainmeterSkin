function Initialize()
    filePath = SKIN:MakePathAbsolute('quote.txt')
end

function Update()
    file = io.open(filePath, "r")
    file:read("*line")
    local author = file:read("*line")
    file:close()
    return author
end
