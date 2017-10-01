function Update()
	netshcom = "netsh wlan show interfaces >"
	n = os.tmpname()
	os.execute(netshcom .. n)
	myline = ""
	for line in io.lines (n) do
		if string.find(line,"BSSID") then
			myline = line
		end
	end
	os.remove(n)
	return myline
end