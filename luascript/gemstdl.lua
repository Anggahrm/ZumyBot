x = 10
y = 195
jumlah = 10 -- jumlah dl

function buydl()
SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..x.."|\ny|"..y.."|\nbuttonClicked|dlconvert")
end

for i = 1,jumlah do
buydl()
Sleep(100)
end