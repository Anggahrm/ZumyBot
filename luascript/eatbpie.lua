function inventory(id)
for _, item in pairs(GetInventory()) do
if item.id == id then
return item.amount
end end
return 0
end

function zumz(txt)
SendPacket(2,"action|input\ntext|"..txt)
end

function zums()
  if inventory(406) == 5 then
SendPacket(2, "action|dialog_return\ndialog_name|item_search\n406|1")
end
while inventory(406) > 5 do
SendPacketRaw (false , {type = 3 , value = 406 , x = GetLocal().posX , y = GetLocal().posY , px = GetLocal().posX//32 , py = GetLocal().posY//32 })
Sleep(100) -- Reduce Crash??
end 
end 

zumz("`1ZUMY GANTENG")                
LogToConsole("\n\n`2THIS SCRIPT IS FREE!!\n`b MAU JOIN GROUP WA?\n`wWA : 082137857069\n\n")
while true do
  zums()
  end
  