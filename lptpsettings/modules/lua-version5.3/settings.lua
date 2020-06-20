ver="0.1"
maker="seth olivarez/oxmc"

function listmainmenu()
print("1. ")
print("")
print("")
print("")
end

computermodel=
print("Laptop Settings configerator version. " .. ver .. " by " .. maker .. " Running by using lua5.3")

choice = io.read()
if choice == "1" then
	print("options")
os.execute("/home/pi/.lptpsettings/modules/scripts/resetconfig.sh")
end