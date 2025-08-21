function Initialize()
    filePath = SKIN:MakePathAbsolute('quote.txt')
end

function Update()
    file = io.open(filePath, "r")
    quote = file:read()
    file:close()
    return quote
end
