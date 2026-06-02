local a=cloneref or(function(...)return...end)

local b=delfolder or deletefolder
local c=delfile or deletefile
local d=makefolder
local e=writefile
local f=readfile

local g=setmetatable({},{
__index=function(g,h)
rawset(g,h,a(game:GetService(h)))
return rawget(g,h)
end
})

local h=g.MarketplaceService
local i=g.UserInputService
local j=g.TweenService
local k=g.HttpService
local l=g.RunService
local m=g.Players

local n=l.Heartbeat

local o=m.LocalPlayer
local p=o:GetMouse()

local q=(gethui or function()return g.CoreGui end)()

local r={
Darker={
Colors={
Background=ColorSequence.new{
ColorSequenceKeypoint.new(0.00,Color3.fromRGB(25,25,25)),
ColorSequenceKeypoint.new(0.50,Color3.fromRGB(32.5,32.5,32.5)),
ColorSequenceKeypoint.new(1.00,Color3.fromRGB(25,25,25))
},
Primary=Color3.fromRGB(220,220,220),
OnPrimary=Color3.fromRGB(180,180,180),
ScrollBar=Color3.fromRGB(200,200,200),
Stroke=Color3.fromRGB(45,45,45),

Error=Color3.fromRGB(255,102,102),
Icons=Color3.fromRGB(232,233,235),

JoinButton=Color3.fromRGB(37,128,69),
Link=Color3.fromRGB(40,150,255),

Dialog={
Background=Color3.fromRGB(28,28,28)
},
Buttons={
Holding=Color3.fromRGB(34,34,34),
Default=Color3.fromRGB(28,28,30)
},
Border={
Holding=Color3.fromRGB(60,60,60),
Default=Color3.fromRGB(38,38,38),
},
Text={
Default=Color3.fromRGB(255,255,255),
Dark=Color3.fromRGB(200,200,200),
Darker=Color3.fromRGB(175,175,175),
},
Slider={
SliderBar=Color3.fromRGB(230,230,230),
SliderNumber=Color3.fromRGB(232,233,235),
},
Dropdown={
Holder=Color3.fromRGB(30,30,30),
}
},
Icons={
Error="rbxassetid://10709752996",
Button="rbxassetid://10709791437",
Close="rbxassetid://10747384394",
TextBox="rbxassetid://15637081879",
Search="rbxassetid://10734943674",
Keybind="rbxassetid://10734982144",
Dropdown={
Open="rbxassetid://10709791523",
Close="rbxassetid://10709790948"
}
},
Font={
Normal=Enum.Font.BuilderSans,
Medium=Enum.Font.BuilderSansMedium,
Bold=Enum.Font.BuilderSansBold,
ExtraBold=Enum.Font.BuilderSansExtraBold,
SliderValue=Enum.Font.FredokaOne
},
BackgroundTransparency=0.03
}
}

for s,t in r do
t.Name=s
end

local s={
Information={
Version="v2.0.1",
GitHubOwner="tlredz"
},
Default={
Theme="Darker",
UISize=UDim2.fromOffset(550,380),
TabSize=160
},

Themes=r,

Connections={},
Options={},
Tabs={}
}

s.Info=s.Information
s.Save=s.Default

s.Icons=(function()
return{
["accessibility"]="rbxassetid://10709751939",
["activity"]="rbxassetid://10709752035",
["airvent"]="rbxassetid://10709752131",
["airplay"]="rbxassetid://10709752254",
["alarmcheck"]="rbxassetid://10709752405",
["alarmclock"]="rbxassetid://10709752630",
["alarmclockoff"]="rbxassetid://10709752508",
["alarmminus"]="rbxassetid://10709752732",
["alarmplus"]="rbxassetid://10709752825",
["album"]="rbxassetid://10709752906",
["alertcircle"]="rbxassetid://10709752996",
["alertoctagon"]="rbxassetid://10709753064",
["alerttriangle"]="rbxassetid://10709753149",
["aligncenter"]="rbxassetid://10709753570",
["aligncenterhorizontal"]="rbxassetid://10709753272",
["aligncentervertical"]="rbxassetid://10709753421",
["alignendhorizontal"]="rbxassetid://10709753692",
["alignendvertical"]="rbxassetid://10709753808",
["alignhorizontaldistributecenter"]="rbxassetid://10747779791",
["alignhorizontaldistributeend"]="rbxassetid://10747784534",
["alignhorizontaldistributestart"]="rbxassetid://10709754118",
["alignhorizontaljustifycenter"]="rbxassetid://10709754204",
["alignhorizontaljustifyend"]="rbxassetid://10709754317",
["alignhorizontaljustifystart"]="rbxassetid://10709754436",
["alignhorizontalspacearound"]="rbxassetid://10709754590",
["alignhorizontalspacebetween"]="rbxassetid://10709754749",
["alignjustify"]="rbxassetid://10709759610",
["alignleft"]="rbxassetid://10709759764",
["alignright"]="rbxassetid://10709759895",
["alignstarthorizontal"]="rbxassetid://10709760051",
["alignstartvertical"]="rbxassetid://10709760244",
["alignverticaldistributecenter"]="rbxassetid://10709760351",
["alignverticaldistributeend"]="rbxassetid://10709760434",
["alignverticaldistributestart"]="rbxassetid://10709760612",
["alignverticaljustifycenter"]="rbxassetid://10709760814",
["alignverticaljustifyend"]="rbxassetid://10709761003",
["alignverticaljustifystart"]="rbxassetid://10709761176",
["alignverticalspacearound"]="rbxassetid://10709761324",
["alignverticalspacebetween"]="rbxassetid://10709761434",
["anchor"]="rbxassetid://10709761530",
["angry"]="rbxassetid://10709761629",
["annoyed"]="rbxassetid://10709761722",
["aperture"]="rbxassetid://10709761813",
["apple"]="rbxassetid://10709761889",
["archive"]="rbxassetid://10709762233",
["archiverestore"]="rbxassetid://10709762058",
["armchair"]="rbxassetid://10709762327",
["arrowbigdown"]="rbxassetid://10747796644",
["arrowbigleft"]="rbxassetid://10709762574",
["arrowbigright"]="rbxassetid://10709762727",
["arrowbigup"]="rbxassetid://10709762879",
["arrowdown"]="rbxassetid://10709767827",
["arrowdowncircle"]="rbxassetid://10709763034",
["arrowdownleft"]="rbxassetid://10709767656",
["arrowdownright"]="rbxassetid://10709767750",
["arrowleft"]="rbxassetid://10709768114",
["arrowleftcircle"]="rbxassetid://10709767936",
["arrowleftright"]="rbxassetid://10709768019",
["arrowright"]="rbxassetid://10709768347",
["arrowrightcircle"]="rbxassetid://10709768226",
["arrowup"]="rbxassetid://10709768939",
["arrowupcircle"]="rbxassetid://10709768432",
["arrowupdown"]="rbxassetid://10709768538",
["arrowupleft"]="rbxassetid://10709768661",
["arrowupright"]="rbxassetid://10709768787",
["asterisk"]="rbxassetid://10709769095",
["atsign"]="rbxassetid://10709769286",
["award"]="rbxassetid://10709769406",
["axe"]="rbxassetid://10709769508",
["axis3d"]="rbxassetid://10709769598",
["baby"]="rbxassetid://10709769732",
["backpack"]="rbxassetid://10709769841",
["baggageclaim"]="rbxassetid://10709769935",
["banana"]="rbxassetid://10709770005",
["banknote"]="rbxassetid://10709770178",
["barchart"]="rbxassetid://10709773755",
["barchart2"]="rbxassetid://10709770317",
["barchart3"]="rbxassetid://10709770431",
["barchart4"]="rbxassetid://10709770560",
["barcharthorizontal"]="rbxassetid://10709773669",
["barcode"]="rbxassetid://10747360675",
["baseline"]="rbxassetid://10709773863",
["bath"]="rbxassetid://10709773963",
["battery"]="rbxassetid://10709774640",
["batterycharging"]="rbxassetid://10709774068",
["batteryfull"]="rbxassetid://10709774206",
["batterylow"]="rbxassetid://10709774370",
["batterymedium"]="rbxassetid://10709774513",
["beaker"]="rbxassetid://10709774756",
["bed"]="rbxassetid://10709775036",
["beddouble"]="rbxassetid://10709774864",
["bedsingle"]="rbxassetid://10709774968",
["beer"]="rbxassetid://10709775167",
["bell"]="rbxassetid://10709775704",
["bellminus"]="rbxassetid://10709775241",
["belloff"]="rbxassetid://10709775320",
["bellplus"]="rbxassetid://10709775448",
["bellring"]="rbxassetid://10709775560",
["bike"]="rbxassetid://10709775894",
["binary"]="rbxassetid://10709776050",
["bitcoin"]="rbxassetid://10709776126",
["bluetooth"]="rbxassetid://10709776655",
["bluetoothconnected"]="rbxassetid://10709776240",
["bluetoothoff"]="rbxassetid://10709776344",
["bluetoothsearching"]="rbxassetid://10709776501",
["bold"]="rbxassetid://10747813908",
["bomb"]="rbxassetid://10709781460",
["bone"]="rbxassetid://10709781605",
["book"]="rbxassetid://10709781824",
["bookopen"]="rbxassetid://10709781717",
["bookmark"]="rbxassetid://10709782154",
["bookmarkminus"]="rbxassetid://10709781919",
["bookmarkplus"]="rbxassetid://10709782044",
["bot"]="rbxassetid://10709782230",
["box"]="rbxassetid://10709782497",
["boxselect"]="rbxassetid://10709782342",
["boxes"]="rbxassetid://10709782582",
["briefcase"]="rbxassetid://10709782662",
["brush"]="rbxassetid://10709782758",
["bug"]="rbxassetid://10709782845",
["building"]="rbxassetid://10709783051",
["building2"]="rbxassetid://10709782939",
["bus"]="rbxassetid://10709783137",
["cake"]="rbxassetid://10709783217",
["calculator"]="rbxassetid://10709783311",
["calendar"]="rbxassetid://10709789505",
["calendarcheck"]="rbxassetid://10709783474",
["calendarcheck2"]="rbxassetid://10709783392",
["calendarclock"]="rbxassetid://10709783577",
["calendardays"]="rbxassetid://10709783673",
["calendarheart"]="rbxassetid://10709783835",
["calendarminus"]="rbxassetid://10709783959",
["calendaroff"]="rbxassetid://10709788784",
["calendarplus"]="rbxassetid://10709788937",
["calendarrange"]="rbxassetid://10709789053",
["calendarsearch"]="rbxassetid://10709789200",
["calendarx"]="rbxassetid://10709789407",
["calendarx2"]="rbxassetid://10709789329",
["camera"]="rbxassetid://10709789686",
["cameraoff"]="rbxassetid://10747822677",
["car"]="rbxassetid://10709789810",
["carrot"]="rbxassetid://10709789960",
["cast"]="rbxassetid://10709790097",
["charge"]="rbxassetid://10709790202",
["check"]="rbxassetid://10709790644",
["checkcircle"]="rbxassetid://10709790387",
["checkcircle2"]="rbxassetid://10709790298",
["checksquare"]="rbxassetid://10709790537",
["chefhat"]="rbxassetid://10709790757",
["cherry"]="rbxassetid://10709790875",
["chevrondown"]="rbxassetid://10709790948",
["chevronfirst"]="rbxassetid://10709791015",
["chevronlast"]="rbxassetid://10709791130",
["chevronleft"]="rbxassetid://10709791281",
["chevronright"]="rbxassetid://10709791437",
["chevronup"]="rbxassetid://10709791523",
["chevronsdown"]="rbxassetid://10709796864",
["chevronsdownup"]="rbxassetid://10709791632",
["chevronsleft"]="rbxassetid://10709797151",
["chevronsleftright"]="rbxassetid://10709797006",
["chevronsright"]="rbxassetid://10709797382",
["chevronsrightleft"]="rbxassetid://10709797274",
["chevronsup"]="rbxassetid://10709797622",
["chevronsupdown"]="rbxassetid://10709797508",
["chrome"]="rbxassetid://10709797725",
["circle"]="rbxassetid://10709798174",
["circledot"]="rbxassetid://10709797837",
["circleellipsis"]="rbxassetid://10709797985",
["circleslashed"]="rbxassetid://10709798100",
["citrus"]="rbxassetid://10709798276",
["clapperboard"]="rbxassetid://10709798350",
["clipboard"]="rbxassetid://10709799288",
["clipboardcheck"]="rbxassetid://10709798443",
["clipboardcopy"]="rbxassetid://10709798574",
["clipboardedit"]="rbxassetid://10709798682",
["clipboardlist"]="rbxassetid://10709798792",
["clipboardsignature"]="rbxassetid://10709798890",
["clipboardtype"]="rbxassetid://10709798999",
["clipboardx"]="rbxassetid://10709799124",
["clock"]="rbxassetid://10709805144",
["clock1"]="rbxassetid://10709799535",
["clock10"]="rbxassetid://10709799718",
["clock11"]="rbxassetid://10709799818",
["clock12"]="rbxassetid://10709799962",
["clock2"]="rbxassetid://10709803876",
["clock3"]="rbxassetid://10709803989",
["clock4"]="rbxassetid://10709804164",
["clock5"]="rbxassetid://10709804291",
["clock6"]="rbxassetid://10709804435",
["clock7"]="rbxassetid://10709804599",
["clock8"]="rbxassetid://10709804784",
["clock9"]="rbxassetid://10709804996",
["cloud"]="rbxassetid://10709806740",
["cloudcog"]="rbxassetid://10709805262",
["clouddrizzle"]="rbxassetid://10709805371",
["cloudfog"]="rbxassetid://10709805477",
["cloudhail"]="rbxassetid://10709805596",
["cloudlightning"]="rbxassetid://10709805727",
["cloudmoon"]="rbxassetid://10709805942",
["cloudmoonrain"]="rbxassetid://10709805838",
["cloudoff"]="rbxassetid://10709806060",
["cloudrain"]="rbxassetid://10709806277",
["cloudrainwind"]="rbxassetid://10709806166",
["cloudsnow"]="rbxassetid://10709806374",
["cloudsun"]="rbxassetid://10709806631",
["cloudsunrain"]="rbxassetid://10709806475",
["cloudy"]="rbxassetid://10709806859",
["clover"]="rbxassetid://10709806995",
["code"]="rbxassetid://10709810463",
["code2"]="rbxassetid://10709807111",
["codepen"]="rbxassetid://10709810534",
["codesandbox"]="rbxassetid://10709810676",
["coffee"]="rbxassetid://10709810814",
["cog"]="rbxassetid://10709810948",
["coins"]="rbxassetid://10709811110",
["columns"]="rbxassetid://10709811261",
["command"]="rbxassetid://10709811365",
["compass"]="rbxassetid://10709811445",
["component"]="rbxassetid://10709811595",
["conciergebell"]="rbxassetid://10709811706",
["connection"]="rbxassetid://10747361219",
["contact"]="rbxassetid://10709811834",
["contrast"]="rbxassetid://10709811939",
["cookie"]="rbxassetid://10709812067",
["copy"]="rbxassetid://10709812159",
["copyleft"]="rbxassetid://10709812251",
["copyright"]="rbxassetid://10709812311",
["cornerdownleft"]="rbxassetid://10709812396",
["cornerdownright"]="rbxassetid://10709812485",
["cornerleftdown"]="rbxassetid://10709812632",
["cornerleftup"]="rbxassetid://10709812784",
["cornerrightdown"]="rbxassetid://10709812939",
["cornerrightup"]="rbxassetid://10709813094",
["cornerupleft"]="rbxassetid://10709813185",
["cornerupright"]="rbxassetid://10709813281",
["cpu"]="rbxassetid://10709813383",
["croissant"]="rbxassetid://10709818125",
["crop"]="rbxassetid://10709818245",
["cross"]="rbxassetid://10709818399",
["crosshair"]="rbxassetid://10709818534",
["crown"]="rbxassetid://10709818626",
["cupsoda"]="rbxassetid://10709818763",
["curlybraces"]="rbxassetid://10709818847",
["currency"]="rbxassetid://10709818931",
["database"]="rbxassetid://10709818996",
["delete"]="rbxassetid://10709819059",
["diamond"]="rbxassetid://10709819149",
["dice1"]="rbxassetid://10709819266",
["dice2"]="rbxassetid://10709819361",
["dice3"]="rbxassetid://10709819508",
["dice4"]="rbxassetid://10709819670",
["dice5"]="rbxassetid://10709819801",
["dice6"]="rbxassetid://10709819896",
["dices"]="rbxassetid://10723343321",
["diff"]="rbxassetid://10723343416",
["disc"]="rbxassetid://10723343537",
["divide"]="rbxassetid://10723343805",
["dividecircle"]="rbxassetid://10723343636",
["dividesquare"]="rbxassetid://10723343737",
["dollarsign"]="rbxassetid://10723343958",
["download"]="rbxassetid://10723344270",
["downloadcloud"]="rbxassetid://10723344088",
["droplet"]="rbxassetid://10723344432",
["droplets"]="rbxassetid://10734883356",
["drumstick"]="rbxassetid://10723344737",
["edit"]="rbxassetid://10734883598",
["edit2"]="rbxassetid://10723344885",
["edit3"]="rbxassetid://10723345088",
["egg"]="rbxassetid://10723345518",
["eggfried"]="rbxassetid://10723345347",
["electricity"]="rbxassetid://10723345749",
["electricityoff"]="rbxassetid://10723345643",
["equal"]="rbxassetid://10723345990",
["equalnot"]="rbxassetid://10723345866",
["eraser"]="rbxassetid://10723346158",
["euro"]="rbxassetid://10723346372",
["expand"]="rbxassetid://10723346553",
["externallink"]="rbxassetid://10723346684",
["eye"]="rbxassetid://10723346959",
["eyeoff"]="rbxassetid://10723346871",
["factory"]="rbxassetid://10723347051",
["fan"]="rbxassetid://10723354359",
["fastforward"]="rbxassetid://10723354521",
["feather"]="rbxassetid://10723354671",
["figma"]="rbxassetid://10723354801",
["file"]="rbxassetid://10723374641",
["filearchive"]="rbxassetid://10723354921",
["fileaudio"]="rbxassetid://10723355148",
["fileaudio2"]="rbxassetid://10723355026",
["fileaxis3d"]="rbxassetid://10723355272",
["filebadge"]="rbxassetid://10723355622",
["filebadge2"]="rbxassetid://10723355451",
["filebarchart"]="rbxassetid://10723355887",
["filebarchart2"]="rbxassetid://10723355746",
["filebox"]="rbxassetid://10723355989",
["filecheck"]="rbxassetid://10723356210",
["filecheck2"]="rbxassetid://10723356100",
["fileclock"]="rbxassetid://10723356329",
["filecode"]="rbxassetid://10723356507",
["filecog"]="rbxassetid://10723356830",
["filecog2"]="rbxassetid://10723356676",
["filediff"]="rbxassetid://10723357039",
["filedigit"]="rbxassetid://10723357151",
["filedown"]="rbxassetid://10723357322",
["fileedit"]="rbxassetid://10723357495",
["fileheart"]="rbxassetid://10723357637",
["fileimage"]="rbxassetid://10723357790",
["fileinput"]="rbxassetid://10723357933",
["filejson"]="rbxassetid://10723364435",
["filejson2"]="rbxassetid://10723364361",
["filekey"]="rbxassetid://10723364605",
["filekey2"]="rbxassetid://10723364515",
["filelinechart"]="rbxassetid://10723364725",
["filelock"]="rbxassetid://10723364957",
["filelock2"]="rbxassetid://10723364861",
["fileminus"]="rbxassetid://10723365254",
["fileminus2"]="rbxassetid://10723365086",
["fileoutput"]="rbxassetid://10723365457",
["filepiechart"]="rbxassetid://10723365598",
["fileplus"]="rbxassetid://10723365877",
["fileplus2"]="rbxassetid://10723365766",
["filequestion"]="rbxassetid://10723365987",
["filescan"]="rbxassetid://10723366167",
["filesearch"]="rbxassetid://10723366550",
["filesearch2"]="rbxassetid://10723366340",
["filesignature"]="rbxassetid://10723366741",
["filespreadsheet"]="rbxassetid://10723366962",
["filesymlink"]="rbxassetid://10723367098",
["fileterminal"]="rbxassetid://10723367244",
["filetext"]="rbxassetid://10723367380",
["filetype"]="rbxassetid://10723367606",
["filetype2"]="rbxassetid://10723367509",
["fileup"]="rbxassetid://10723367734",
["filevideo"]="rbxassetid://10723373884",
["filevideo2"]="rbxassetid://10723367834",
["filevolume"]="rbxassetid://10723374172",
["filevolume2"]="rbxassetid://10723374030",
["filewarning"]="rbxassetid://10723374276",
["filex"]="rbxassetid://10723374544",
["filex2"]="rbxassetid://10723374378",
["files"]="rbxassetid://10723374759",
["film"]="rbxassetid://10723374981",
["filter"]="rbxassetid://10723375128",
["fingerprint"]="rbxassetid://10723375250",
["flag"]="rbxassetid://10723375890",
["flagoff"]="rbxassetid://10723375443",
["flagtriangleleft"]="rbxassetid://10723375608",
["flagtriangleright"]="rbxassetid://10723375727",
["flame"]="rbxassetid://10723376114",
["flashlight"]="rbxassetid://10723376471",
["flashlightoff"]="rbxassetid://10723376365",
["flaskconical"]="rbxassetid://10734883986",
["flaskround"]="rbxassetid://10723376614",
["fliphorizontal"]="rbxassetid://10723376884",
["fliphorizontal2"]="rbxassetid://10723376745",
["flipvertical"]="rbxassetid://10723377138",
["flipvertical2"]="rbxassetid://10723377026",
["flower"]="rbxassetid://10747830374",
["flower2"]="rbxassetid://10723377305",
["focus"]="rbxassetid://10723377537",
["folder"]="rbxassetid://10723387563",
["folderarchive"]="rbxassetid://10723384478",
["foldercheck"]="rbxassetid://10723384605",
["folderclock"]="rbxassetid://10723384731",
["folderclosed"]="rbxassetid://10723384893",
["foldercog"]="rbxassetid://10723385213",
["foldercog2"]="rbxassetid://10723385036",
["folderdown"]="rbxassetid://10723385338",
["folderedit"]="rbxassetid://10723385445",
["folderheart"]="rbxassetid://10723385545",
["folderinput"]="rbxassetid://10723385721",
["folderkey"]="rbxassetid://10723385848",
["folderlock"]="rbxassetid://10723386005",
["folderminus"]="rbxassetid://10723386127",
["folderopen"]="rbxassetid://10723386277",
["folderoutput"]="rbxassetid://10723386386",
["folderplus"]="rbxassetid://10723386531",
["foldersearch"]="rbxassetid://10723386787",
["foldersearch2"]="rbxassetid://10723386674",
["foldersymlink"]="rbxassetid://10723386930",
["foldertree"]="rbxassetid://10723387085",
["folderup"]="rbxassetid://10723387265",
["folderx"]="rbxassetid://10723387448",
["folders"]="rbxassetid://10723387721",
["forminput"]="rbxassetid://10723387841",
["forward"]="rbxassetid://10723388016",
["frame"]="rbxassetid://10723394389",
["framer"]="rbxassetid://10723394565",
["frown"]="rbxassetid://10723394681",
["fuel"]="rbxassetid://10723394846",
["functionsquare"]="rbxassetid://10723395041",
["gamepad"]="rbxassetid://10723395457",
["gamepad2"]="rbxassetid://10723395215",
["gauge"]="rbxassetid://10723395708",
["gavel"]="rbxassetid://10723395896",
["gem"]="rbxassetid://10723396000",
["ghost"]="rbxassetid://10723396107",
["gift"]="rbxassetid://10723396402",
["giftcard"]="rbxassetid://10723396225",
["gitbranch"]="rbxassetid://10723396676",
["gitbranchplus"]="rbxassetid://10723396542",
["gitcommit"]="rbxassetid://10723396812",
["gitcompare"]="rbxassetid://10723396954",
["gitfork"]="rbxassetid://10723397049",
["gitmerge"]="rbxassetid://10723397165",
["gitpullrequest"]="rbxassetid://10723397431",
["gitpullrequestclosed"]="rbxassetid://10723397268",
["gitpullrequestdraft"]="rbxassetid://10734884302",
["glass"]="rbxassetid://10723397788",
["glass2"]="rbxassetid://10723397529",
["glasswater"]="rbxassetid://10723397678",
["glasses"]="rbxassetid://10723397895",
["globe"]="rbxassetid://10723404337",
["globe2"]="rbxassetid://10723398002",
["grab"]="rbxassetid://10723404472",
["graduationcap"]="rbxassetid://10723404691",
["grape"]="rbxassetid://10723404822",
["grid"]="rbxassetid://10723404936",
["griphorizontal"]="rbxassetid://10723405089",
["gripvertical"]="rbxassetid://10723405236",
["hammer"]="rbxassetid://10723405360",
["hand"]="rbxassetid://10723405649",
["handmetal"]="rbxassetid://10723405508",
["harddrive"]="rbxassetid://10723405749",
["hardhat"]="rbxassetid://10723405859",
["hash"]="rbxassetid://10723405975",
["haze"]="rbxassetid://10723406078",
["headphones"]="rbxassetid://10723406165",
["heart"]="rbxassetid://10723406885",
["heartcrack"]="rbxassetid://10723406299",
["hearthandshake"]="rbxassetid://10723406480",
["heartoff"]="rbxassetid://10723406662",
["heartpulse"]="rbxassetid://10723406795",
["helpcircle"]="rbxassetid://10723406988",
["hexagon"]="rbxassetid://10723407092",
["highlighter"]="rbxassetid://10723407192",
["history"]="rbxassetid://10723407335",
["home"]="rbxassetid://10723407389",
["hourglass"]="rbxassetid://10723407498",
["icecream"]="rbxassetid://10723414308",
["image"]="rbxassetid://10723415040",
["imageminus"]="rbxassetid://10723414487",
["imageoff"]="rbxassetid://10723414677",
["imageplus"]="rbxassetid://10723414827",
["import"]="rbxassetid://10723415205",
["inbox"]="rbxassetid://10723415335",
["indent"]="rbxassetid://10723415494",
["indianrupee"]="rbxassetid://10723415642",
["infinity"]="rbxassetid://10723415766",
["info"]="rbxassetid://10723415903",
["inspect"]="rbxassetid://10723416057",
["italic"]="rbxassetid://10723416195",
["japaneseyen"]="rbxassetid://10723416363",
["joystick"]="rbxassetid://10723416527",
["key"]="rbxassetid://10723416652",
["keyboard"]="rbxassetid://10723416765",
["lamp"]="rbxassetid://10723417513",
["lampceiling"]="rbxassetid://10723416922",
["lampdesk"]="rbxassetid://10723417016",
["lampfloor"]="rbxassetid://10723417131",
["lampwalldown"]="rbxassetid://10723417240",
["lampwallup"]="rbxassetid://10723417356",
["landmark"]="rbxassetid://10723417608",
["languages"]="rbxassetid://10723417703",
["laptop"]="rbxassetid://10723423881",
["laptop2"]="rbxassetid://10723417797",
["lasso"]="rbxassetid://10723424235",
["lassoselect"]="rbxassetid://10723424058",
["laugh"]="rbxassetid://10723424372",
["layers"]="rbxassetid://10723424505",
["layout"]="rbxassetid://10723425376",
["layoutdashboard"]="rbxassetid://10723424646",
["layoutgrid"]="rbxassetid://10723424838",
["layoutlist"]="rbxassetid://10723424963",
["layouttemplate"]="rbxassetid://10723425187",
["leaf"]="rbxassetid://10723425539",
["library"]="rbxassetid://10723425615",
["lifebuoy"]="rbxassetid://10723425685",
["lightbulb"]="rbxassetid://10723425852",
["lightbulboff"]="rbxassetid://10723425762",
["linechart"]="rbxassetid://10723426393",
["link"]="rbxassetid://10723426722",
["link2"]="rbxassetid://10723426595",
["link2off"]="rbxassetid://10723426513",
["list"]="rbxassetid://10723433811",
["listchecks"]="rbxassetid://10734884548",
["listend"]="rbxassetid://10723426886",
["listminus"]="rbxassetid://10723426986",
["listmusic"]="rbxassetid://10723427081",
["listordered"]="rbxassetid://10723427199",
["listplus"]="rbxassetid://10723427334",
["liststart"]="rbxassetid://10723427494",
["listvideo"]="rbxassetid://10723427619",
["listx"]="rbxassetid://10723433655",
["loader"]="rbxassetid://10723434070",
["loader2"]="rbxassetid://10723433935",
["locate"]="rbxassetid://10723434557",
["locatefixed"]="rbxassetid://10723434236",
["locateoff"]="rbxassetid://10723434379",
["lock"]="rbxassetid://10723434711",
["login"]="rbxassetid://10723434830",
["logout"]="rbxassetid://10723434906",
["luggage"]="rbxassetid://10723434993",
["magnet"]="rbxassetid://10723435069",
["mail"]="rbxassetid://10734885430",
["mailcheck"]="rbxassetid://10723435182",
["mailminus"]="rbxassetid://10723435261",
["mailopen"]="rbxassetid://10723435342",
["mailplus"]="rbxassetid://10723435443",
["mailquestion"]="rbxassetid://10723435515",
["mailsearch"]="rbxassetid://10734884739",
["mailwarning"]="rbxassetid://10734885015",
["mailx"]="rbxassetid://10734885247",
["mails"]="rbxassetid://10734885614",
["map"]="rbxassetid://10734886202",
["mappin"]="rbxassetid://10734886004",
["mappinoff"]="rbxassetid://10734885803",
["maximize"]="rbxassetid://10734886735",
["maximize2"]="rbxassetid://10734886496",
["medal"]="rbxassetid://10734887072",
["megaphone"]="rbxassetid://10734887454",
["megaphoneoff"]="rbxassetid://10734887311",
["meh"]="rbxassetid://10734887603",
["menu"]="rbxassetid://10734887784",
["messagecircle"]="rbxassetid://10734888000",
["messagesquare"]="rbxassetid://10734888228",
["mic"]="rbxassetid://10734888864",
["mic2"]="rbxassetid://10734888430",
["micoff"]="rbxassetid://10734888646",
["microscope"]="rbxassetid://10734889106",
["microwave"]="rbxassetid://10734895076",
["milestone"]="rbxassetid://10734895310",
["minimize"]="rbxassetid://10734895698",
["minimize2"]="rbxassetid://10734895530",
["minus"]="rbxassetid://10734896206",
["minuscircle"]="rbxassetid://10734895856",
["minussquare"]="rbxassetid://10734896029",
["monitor"]="rbxassetid://10734896881",
["monitoroff"]="rbxassetid://10734896360",
["monitorspeaker"]="rbxassetid://10734896512",
["moon"]="rbxassetid://10734897102",
["morehorizontal"]="rbxassetid://10734897250",
["morevertical"]="rbxassetid://10734897387",
["mountain"]="rbxassetid://10734897956",
["mountainsnow"]="rbxassetid://10734897665",
["mouse"]="rbxassetid://10734898592",
["mousepointer"]="rbxassetid://10734898476",
["mousepointer2"]="rbxassetid://10734898194",
["mousepointerclick"]="rbxassetid://10734898355",
["move"]="rbxassetid://10734900011",
["move3d"]="rbxassetid://10734898756",
["movediagonal"]="rbxassetid://10734899164",
["movediagonal2"]="rbxassetid://10734898934",
["movehorizontal"]="rbxassetid://10734899414",
["movevertical"]="rbxassetid://10734899821",
["music"]="rbxassetid://10734905958",
["music2"]="rbxassetid://10734900215",
["music3"]="rbxassetid://10734905665",
["music4"]="rbxassetid://10734905823",
["navigation"]="rbxassetid://10734906744",
["navigation2"]="rbxassetid://10734906332",
["navigation2off"]="rbxassetid://10734906144",
["navigationoff"]="rbxassetid://10734906580",
["network"]="rbxassetid://10734906975",
["newspaper"]="rbxassetid://10734907168",
["octagon"]="rbxassetid://10734907361",
["option"]="rbxassetid://10734907649",
["outdent"]="rbxassetid://10734907933",
["package"]="rbxassetid://10734909540",
["package2"]="rbxassetid://10734908151",
["packagecheck"]="rbxassetid://10734908384",
["packageminus"]="rbxassetid://10734908626",
["packageopen"]="rbxassetid://10734908793",
["packageplus"]="rbxassetid://10734909016",
["packagesearch"]="rbxassetid://10734909196",
["packagex"]="rbxassetid://10734909375",
["paintbucket"]="rbxassetid://10734909847",
["paintbrush"]="rbxassetid://10734910187",
["paintbrush2"]="rbxassetid://10734910030",
["palette"]="rbxassetid://10734910430",
["palmtree"]="rbxassetid://10734910680",
["paperclip"]="rbxassetid://10734910927",
["partypopper"]="rbxassetid://10734918735",
["pause"]="rbxassetid://10734919336",
["pausecircle"]="rbxassetid://10735024209",
["pauseoctagon"]="rbxassetid://10734919143",
["pentool"]="rbxassetid://10734919503",
["pencil"]="rbxassetid://10734919691",
["percent"]="rbxassetid://10734919919",
["personstanding"]="rbxassetid://10734920149",
["phone"]="rbxassetid://10734921524",
["phonecall"]="rbxassetid://10734920305",
["phoneforwarded"]="rbxassetid://10734920508",
["phoneincoming"]="rbxassetid://10734920694",
["phonemissed"]="rbxassetid://10734920845",
["phoneoff"]="rbxassetid://10734921077",
["phoneoutgoing"]="rbxassetid://10734921288",
["piechart"]="rbxassetid://10734921727",
["piggybank"]="rbxassetid://10734921935",
["pin"]="rbxassetid://10734922324",
["pinoff"]="rbxassetid://10734922180",
["pipette"]="rbxassetid://10734922497",
["pizza"]="rbxassetid://10734922774",
["plane"]="rbxassetid://10734922971",
["play"]="rbxassetid://10734923549",
["playcircle"]="rbxassetid://10734923214",
["plus"]="rbxassetid://10734924532",
["pluscircle"]="rbxassetid://10734923868",
["plussquare"]="rbxassetid://10734924219",
["podcast"]="rbxassetid://10734929553",
["pointer"]="rbxassetid://10734929723",
["poundsterling"]="rbxassetid://10734929981",
["power"]="rbxassetid://10734930466",
["poweroff"]="rbxassetid://10734930257",
["printer"]="rbxassetid://10734930632",
["puzzle"]="rbxassetid://10734930886",
["quote"]="rbxassetid://10734931234",
["radio"]="rbxassetid://10734931596",
["radioreceiver"]="rbxassetid://10734931402",
["rectanglehorizontal"]="rbxassetid://10734931777",
["rectanglevertical"]="rbxassetid://10734932081",
["recycle"]="rbxassetid://10734932295",
["redo"]="rbxassetid://10734932822",
["redo2"]="rbxassetid://10734932586",
["refreshccw"]="rbxassetid://10734933056",
["refreshcw"]="rbxassetid://10734933222",
["refrigerator"]="rbxassetid://10734933465",
["regex"]="rbxassetid://10734933655",
["repeat"]="rbxassetid://10734933966",
["repeat1"]="rbxassetid://10734933826",
["reply"]="rbxassetid://10734934252",
["replyall"]="rbxassetid://10734934132",
["rewind"]="rbxassetid://10734934347",
["rocket"]="rbxassetid://10734934585",
["rockingchair"]="rbxassetid://10734939942",
["rotate3d"]="rbxassetid://10734940107",
["rotateccw"]="rbxassetid://10734940376",
["rotatecw"]="rbxassetid://10734940654",
["rss"]="rbxassetid://10734940825",
["ruler"]="rbxassetid://10734941018",
["russianruble"]="rbxassetid://10734941199",
["sailboat"]="rbxassetid://10734941354",
["save"]="rbxassetid://10734941499",
["scale"]="rbxassetid://10734941912",
["scale3d"]="rbxassetid://10734941739",
["scaling"]="rbxassetid://10734942072",
["scan"]="rbxassetid://10734942565",
["scanface"]="rbxassetid://10734942198",
["scanline"]="rbxassetid://10734942351",
["scissors"]="rbxassetid://10734942778",
["screenshare"]="rbxassetid://10734943193",
["screenshareoff"]="rbxassetid://10734942967",
["scroll"]="rbxassetid://10734943448",
["search"]="rbxassetid://10734943674",
["send"]="rbxassetid://10734943902",
["separatorhorizontal"]="rbxassetid://10734944115",
["separatorvertical"]="rbxassetid://10734944326",
["server"]="rbxassetid://10734949856",
["servercog"]="rbxassetid://10734944444",
["servercrash"]="rbxassetid://10734944554",
["serveroff"]="rbxassetid://10734944668",
["settings"]="rbxassetid://10734950309",
["settings2"]="rbxassetid://10734950020",
["share"]="rbxassetid://10734950813",
["share2"]="rbxassetid://10734950553",
["sheet"]="rbxassetid://10734951038",
["shield"]="rbxassetid://10734951847",
["shieldalert"]="rbxassetid://10734951173",
["shieldcheck"]="rbxassetid://10734951367",
["shieldclose"]="rbxassetid://10734951535",
["shieldoff"]="rbxassetid://10734951684",
["shirt"]="rbxassetid://10734952036",
["shoppingbag"]="rbxassetid://10734952273",
["shoppingcart"]="rbxassetid://10734952479",
["shovel"]="rbxassetid://10734952773",
["showerhead"]="rbxassetid://10734952942",
["shrink"]="rbxassetid://10734953073",
["shrub"]="rbxassetid://10734953241",
["shuffle"]="rbxassetid://10734953451",
["sidebar"]="rbxassetid://10734954301",
["sidebarclose"]="rbxassetid://10734953715",
["sidebaropen"]="rbxassetid://10734954000",
["sigma"]="rbxassetid://10734954538",
["signal"]="rbxassetid://10734961133",
["signalhigh"]="rbxassetid://10734954807",
["signallow"]="rbxassetid://10734955080",
["signalmedium"]="rbxassetid://10734955336",
["signalzero"]="rbxassetid://10734960878",
["siren"]="rbxassetid://10734961284",
["skipback"]="rbxassetid://10734961526",
["skipforward"]="rbxassetid://10734961809",
["skull"]="rbxassetid://10734962068",
["slack"]="rbxassetid://10734962339",
["slash"]="rbxassetid://10734962600",
["slice"]="rbxassetid://10734963024",
["sliders"]="rbxassetid://10734963400",
["slidershorizontal"]="rbxassetid://10734963191",
["smartphone"]="rbxassetid://10734963940",
["smartphonecharging"]="rbxassetid://10734963671",
["smile"]="rbxassetid://10734964441",
["smileplus"]="rbxassetid://10734964188",
["snowflake"]="rbxassetid://10734964600",
["sofa"]="rbxassetid://10734964852",
["sortasc"]="rbxassetid://10734965115",
["sortdesc"]="rbxassetid://10734965287",
["speaker"]="rbxassetid://10734965419",
["sprout"]="rbxassetid://10734965572",
["square"]="rbxassetid://10734965702",
["star"]="rbxassetid://10734966248",
["starhalf"]="rbxassetid://10734965897",
["staroff"]="rbxassetid://10734966097",
["stethoscope"]="rbxassetid://10734966384",
["sticker"]="rbxassetid://10734972234",
["stickynote"]="rbxassetid://10734972463",
["stopcircle"]="rbxassetid://10734972621",
["stretchhorizontal"]="rbxassetid://10734972862",
["stretchvertical"]="rbxassetid://10734973130",
["strikethrough"]="rbxassetid://10734973290",
["subscript"]="rbxassetid://10734973457",
["sun"]="rbxassetid://10734974297",
["sundim"]="rbxassetid://10734973645",
["sunmedium"]="rbxassetid://10734973778",
["sunmoon"]="rbxassetid://10734973999",
["sunsnow"]="rbxassetid://10734974130",
["sunrise"]="rbxassetid://10734974522",
["sunset"]="rbxassetid://10734974689",
["superscript"]="rbxassetid://10734974850",
["swissfranc"]="rbxassetid://10734975024",
["switchcamera"]="rbxassetid://10734975214",
["sword"]="rbxassetid://10734975486",
["swords"]="rbxassetid://10734975692",
["syringe"]="rbxassetid://10734975932",
["table"]="rbxassetid://10734976230",
["table2"]="rbxassetid://10734976097",
["tablet"]="rbxassetid://10734976394",
["tag"]="rbxassetid://10734976528",
["tags"]="rbxassetid://10734976739",
["target"]="rbxassetid://10734977012",
["tent"]="rbxassetid://10734981750",
["terminal"]="rbxassetid://10734982144",
["terminalsquare"]="rbxassetid://10734981995",
["textcursor"]="rbxassetid://10734982395",
["textcursorinput"]="rbxassetid://10734982297",
["thermometer"]="rbxassetid://10734983134",
["thermometersnowflake"]="rbxassetid://10734982571",
["thermometersun"]="rbxassetid://10734982771",
["thumbsdown"]="rbxassetid://10734983359",
["thumbsup"]="rbxassetid://10734983629",
["ticket"]="rbxassetid://10734983868",
["timer"]="rbxassetid://10734984606",
["timeroff"]="rbxassetid://10734984138",
["timerreset"]="rbxassetid://10734984355",
["toggleleft"]="rbxassetid://10734984834",
["toggleright"]="rbxassetid://10734985040",
["tornado"]="rbxassetid://10734985247",
["toybrick"]="rbxassetid://10747361919",
["train"]="rbxassetid://10747362105",
["trash"]="rbxassetid://10747362393",
["trash2"]="rbxassetid://10747362241",
["treedeciduous"]="rbxassetid://10747362534",
["treepine"]="rbxassetid://10747362748",
["trees"]="rbxassetid://10747363016",
["trendingdown"]="rbxassetid://10747363205",
["trendingup"]="rbxassetid://10747363465",
["triangle"]="rbxassetid://10747363621",
["trophy"]="rbxassetid://10747363809",
["truck"]="rbxassetid://10747364031",
["tv"]="rbxassetid://10747364593",
["tv2"]="rbxassetid://10747364302",
["type"]="rbxassetid://10747364761",
["umbrella"]="rbxassetid://10747364971",
["underline"]="rbxassetid://10747365191",
["undo"]="rbxassetid://10747365484",
["undo2"]="rbxassetid://10747365359",
["unlink"]="rbxassetid://10747365771",
["unlink2"]="rbxassetid://10747397871",
["unlock"]="rbxassetid://10747366027",
["upload"]="rbxassetid://10747366434",
["uploadcloud"]="rbxassetid://10747366266",
["usb"]="rbxassetid://10747366606",
["user"]="rbxassetid://10747373176",
["usercheck"]="rbxassetid://10747371901",
["usercog"]="rbxassetid://10747372167",
["userminus"]="rbxassetid://10747372346",
["userplus"]="rbxassetid://10747372702",
["userx"]="rbxassetid://10747372992",
["users"]="rbxassetid://10747373426",
["utensils"]="rbxassetid://10747373821",
["utensilscrossed"]="rbxassetid://10747373629",
["venetianmask"]="rbxassetid://10747374003",
["verified"]="rbxassetid://10747374131",
["vibrate"]="rbxassetid://10747374489",
["vibrateoff"]="rbxassetid://10747374269",
["video"]="rbxassetid://10747374938",
["videooff"]="rbxassetid://10747374721",
["view"]="rbxassetid://10747375132",
["voicemail"]="rbxassetid://10747375281",
["volume"]="rbxassetid://10747376008",
["volume1"]="rbxassetid://10747375450",
["volume2"]="rbxassetid://10747375679",
["volumex"]="rbxassetid://10747375880",
["wallet"]="rbxassetid://10747376205",
["wand"]="rbxassetid://10747376565",
["wand2"]="rbxassetid://10747376349",
["watch"]="rbxassetid://10747376722",
["waves"]="rbxassetid://10747376931",
["webcam"]="rbxassetid://10747381992",
["wifi"]="rbxassetid://10747382504",
["wifioff"]="rbxassetid://10747382268",
["wind"]="rbxassetid://10747382750",
["wraptext"]="rbxassetid://10747383065",
["wrench"]="rbxassetid://10747383470",
["x"]="rbxassetid://10747384394",
["xcircle"]="rbxassetid://10747383819",
["xoctagon"]="rbxassetid://10747384037",
["xsquare"]="rbxassetid://10747384217",
["zoomin"]="rbxassetid://10747384552",
["zoomout"]="rbxassetid://10747384679"
}
end)()

function s:GetIcon(av)
if type(av)~="string"or av:find("rbxassetid://")or #av==0 then
return av
end
local aw=nil
av=string.lower(av):gsub("lucide",""):gsub("-","")
if self.Icons[av]then
return self.Icons[av]
end
for ax,ay in self.Icons do
if ax==av then
return ay
elseif not aw and ax:find(av,1,true)then
aw=ay
end
end
return aw or av
end

local t=workspace.CurrentCamera.ViewportSize local u=function(

u, v, w)
table.insert(s.Connections,u[w or"Connect"](u,v))end


local v={}
v.__index=v local w=function(

w, x)
for y in x:gmatch"[^%.]+"do
w=w[y]
end

return w end local x=function(


x, y, z, A)
if not A then
A=s.CurrentTheme
end

x[y]=w(A,if type(z)=="function"then z()else z)end local y=function(


y, z, A)
for B,C in A do
x(z,B,C,y)
end end local z=function(


z, A)
if d then
local B=z:split"/"
B[#B]=nil

local C=table.concat(B,"/")

if C~=""and(isfolder==nil or not isfolder(C))then
d(C)
end
end

e(z,A)end


local A=false

local B={
MAX_SCALE=1.6,
MIN_SCALE=0.6,

TEXTBOX={
PLACEHOLDER_TEXT="Input"
}
}

function v:add(C,D)
self.Descendants[D]=C

if self.IS_RENDERING then
y(s.CurrentTheme,C,D)
end
end

function v:update(force)
if force then
self.UPDATED_OBJECTS=false
end
if self.IS_RENDERING and not self.UPDATED_OBJECTS then
local C=s.CurrentTheme
self.UPDATED_OBJECTS=true

for D,E in self.Descendants do
local F=typeof(E)
if F=="table"then E:update(force)continue end

y(C,E,D)
end
end
end

function v:destroy()
local C=self.Parent and table.find(self.Parent.Descendants)

if C then
table.remove(self.Parent.Descendants,C)
end

table.clear(self.Descendants)
setmetatable(self,nil)
end

function v:changeRendering(C)
if self.IS_RENDERING~=C then
self.IS_RENDERING=C
self.UPDATED_OBJECTS=false
end
end

function v:new()
local C=setmetatable({
IS_RENDERING=true,
UPDATED_OBJECTS=false,
Descendants={},
Parent=self.Descendants~=nil and self or nil
},v)

if self.Descendants then
table.insert(self.Descendants,C)
end

return C
end

local C=v:new()

local D,E={}do
local F={}

local G={}do
G.ElementsTable={
Corner=function(H)
return E("UICorner",{
CornerRadius=H or UDim.new(0,8)
})
end,
Stroke=function(H,I)
return E("UIStroke",{
Color=H or Color3.fromRGB(60,60,60),
Thickness=I or 1
})
end,
Image=function(H)
return E("ImageLabel",{
Image=H or"",
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1)
})
end,
Button=function()
return E("TextButton",{
Text="",
Size=UDim2.fromScale(1,1),
AutoButtonColor=false
})
end,
Padding=function(H,I,J,K)
return E("UIPadding",{
PaddingLeft=H or UDim.new(0,10),
PaddingRight=I or UDim.new(0,10),
PaddingTop=J or UDim.new(0,10),
PaddingBottom=K or UDim.new(0,10)
})
end,
ListLayout=function(H)
return E("UIListLayout",{
Padding=H or UDim.new(0,5)
})
end,
Text=function(H)
return E("TextLabel",{
BackgroundTransparency=1,
Text=H or""
})
end,
Gradient=function(H)
return E("UIGradient",{
Color=H
})
end
}

function G:Create(H,I,...)
local J=self.ElementsTable[I]

if J then
local K=J(...)
K.Parent=H
return K
end
end
end

local H={}

function H:Childs(I)
for J=1,#I do
I[J].Parent=self
end
end

function H:Elements(I)
for J,K in pairs(I)do
if type(K)=="table"then
D.SetProperties(G:Create(self,J),K)
else
G:Create(self,J,K)
end
end
end

function H:ThemeTag(I)
local J=I.OBJECTS
I.OBJECTS=nil
return(J or C):add(self,I)
end

function D:SetProperties(I)
for J,K in pairs(I)do
if H[J]then
H[J](self,K)
else
self[J]=K
end
end
end

function D:SetValues(...)
local I=self

for J,K in{...}do
local L=typeof(K)

if L=="table"then
D.SetProperties(I,K)
else
I[if L=="string"then"Name"else"Parent"]=K
end
end

return I
end

local I

function D:Draggable(J,K,L)
local M,N,O,P
local Q=K or 0.28
local R=0
local S local T=function(

T)
local U=T.Position-N
local V
R=tick()

if L then
V=L(
O.X.Scale,O.X.Offset+U.X/J.Scale,
O.Y.Scale,O.Y.Offset+U.Y/J.Scale
)
else
V=UDim2.new(
O.X.Scale,O.X.Offset+U.X/J.Scale,
O.Y.Scale,O.Y.Offset+U.Y/J.Scale
)
end
self.Position=self.Position:Lerp(V,Q)end local U=function()



while I==self do
if(tick()-R)>=1 then
S()
break
end
task.wait()
end end


local V={
[Enum.UserInputType.MouseButton1]=true,
[Enum.UserInputType.Touch]=true
}

local W={
[Enum.UserInputType.MouseMovement]=true,
[Enum.UserInputType.Touch]=true
}

u(self.InputBegan,function(X)
if A==false and I==nil and V[X.UserInputType]then
N=X.Position
O=self.Position
I=self
R=tick()
A=true

local Y;

function S()
A=false
I=nil
Y:Disconnect()
end

task.spawn(U)

Y=X.Changed:Connect(function()
if X.UserInputState==Enum.UserInputState.End then
S()
end
end)
end
end)

u(i.InputChanged,function(X)
if I==self and W[X.UserInputType]then
T(X)
end
end)
end

function D:CreateNewTemplate(J)
return D.CloneObject(F[self],J)
end

function D.new(J,...)
return D.SetValues(Instance.new(J),...)
end

E=D.new
end local F=function(

F)
if F==nil then
return{}
end

if type(F)~="function"and type(F)~="table"then
error(`Failed to get Callback: 'function', or 'table' expected, got {typeof(F)}`,2)
end

if type(F)~="function"then
local G=F[1]
local H=F[2]

F=function(I)
G[H]=I
end
end

return table.pack(F)end local G=function(


G, ...)
for H=1,#G do
task.spawn(G[H],...)
end end


local H="redz-library-v5"
local I=q:FindFirstChild(H)

if not I then
I=E("ScreenGui",H,q,{
IgnoreGuiInset=true
})
end local J=function(

J, K, L, M, ...)
local N=TweenInfo.new(M,EasingStyle or Enum.EasingStyle.Quint,...)

return j:Create(J,N,{
[K]=L
})end local K=function(


K)
local L={}
for M=1,#K do
rawset(L,K[M],true)
end
return L end


local L=K(string.split"\n\t,_:;()[]#&=!. \"'*^<>$")local M=function(

M)
return string.gsub(M:lower(),".",function(N)
return L[N]and""or N
end)end local N=function(


N)
local O,P,Q=tostring(N),"",0

for R=#O,1,-1 do
P=O:sub(R,R)..P
Q+=1

if R>1 and Q%3==0 then
P=","..P
end
end

return P end local O=function(


O)
local P="rbxassetid://"
return O:sub(1,#P)==P end local P=function(


P)
return(t.Y/450)*P end local Q=function(


Q)
local R=math.floor(Q/60)
local S=math.floor(Q/60/60)
Q=math.floor((Q-(R*60))*10)/10
R=R-(S*60)

if S>0 then
return`{S}h {R}m {math.floor(Q)}s`
elseif R>0 then
return`{R}m {math.floor(Q)}s`
else
return tostring(Q)
end end


local R={}do
local S={}
local T={}
local U={}
local V={}

local W
local X
local Y
local Z
local _
local aa
local ab
local ac
local ad
local ae

local af=""

local ag={SelectedTab=1,Minimized=false}
ag.__index=ag

local ah={}
ah.__index=ah

local ai={}
ai.__index=ai

local aj={}
aj.__index=aj

local ak={}do local al=function()

local al={}
al.__index=function(am,an)
return al[an]or rawget(ai,an)
end

return al end


local am=al()
ak.TextBox=am

local an=al()
ak.Toggle=an

local ao=al()
ak.Slider=ao

local ap=al()
ak.Dropdown=ap

local aq=al()
ak.Keybind=aq

local ar=al()
ak.Dialog=ar local as=function()


Z.Closed=true
Z.Closing=false
setmetatable(Z,nil)

Z=nil
aa.Parent=nil end local at=function()



if Z~=nil then
Z:Close()
end end


function ar:NewOption(au)
local av=au[1]or au.Name or au.Title
local aw=F(au[2]or au.Callback)

table.insert(aw,at)

assert(type(av)=="string",`"Dialog.NewOption.Name". 'string' expected, got {typeof(av)}`)

local ax=E("TextButton",{
AutoButtonColor=false,
Size=UDim2.fromScale(0.2,1),
BackgroundTransparency=1,
TextSize=10,
Text=av,
Elements={
Corner=UDim.new(1,0)
},
ThemeTag={
BackgroundColor3="Colors.Buttons.Default",
TextColor3="Colors.Text.Dark",
Font="Font.Normal"
}
})

local ay=J(ax,"BackgroundTransparency",0,0.3)
local az=J(ax,"BackgroundTransparency",1,0.3)

u(ax.MouseLeave,function()az:Play()end)
u(ax.MouseEnter,function()ay:Play()end)
u(ax.Activated,function()G(aw)end)

ax.Parent=aa.Template.Options
end

function ar:Close(au)
if self.Closed or self.Closing or Z~=self then
return nil
end

self.Closing=true

local av=J(self.TEMPLATE,"Size",self.NEW_SIZE,0.1)
av:Play()

if au then
av.Completed:Wait()
as()
else
u(av.Completed,as)
end
end

function ar.new(au,av)
return setmetatable({
TITLE_LABEL=au,
DESCRIPTION_LABEL=au,
Content=au.Text,
Title=av.Text,

Closed=false,
Closing=false,
Kind="Dialog"
},ar)
end

function ap:SetEnabled(au)
assert(type(au)=="table",`"Dropdown.SetEnabled[param 1]". 'table' expected, got {typeof(au)}`)

self.SET_ENABLED_OPTIONS(au)
end

function ap:Clear()
self.CLEAR_DROPDOWN()
end

function ap:NewOptions(...)
self:Clear()
self:Add(...)
end

function ap:GetOptionsCount()
return#self.DROPDOWN_OPTIONS
end

function ap:Remove(...)
local au={...}
assert(#au>0,"'Dropdown.Remove' requires one or more options.")

for av,aw in au do
self.REMOVE_DROPDOWN_OPTION(aw)
end
end

function ap:Add(...)
local au={...}
assert(#au>0,"'Dropdown.Add' requires one or more options.")

for av,aw in au do
self.ADD_DROPDOWN_OPTION(aw)
end
end

function ap.new(au,av,aw,ax,ay)
return setmetatable({
CALLBACKS=ay,

DESTROY_ELEMENT=av,
VISIBLE_ELEMENT=av,

TITLE_LABEL=aw,
DESCRIPTION_LABEL=ax,
Description=ax.Text,
Title=aw.Text,

Parent=au,
Kind="Dropdown"
},ap)
end

function ao:SetValue(au)
assert(type(au)=="number",`"Slider.SetValue". 'number' expected, got {typeof(au)}`)

if self.Value~=au then
self.WHEN_VALUE_CHANGED(au)
end
end

function ao.new(au,av,aw,ax,ay)
return setmetatable({
CALLBACKS=ay,

DESTROY_ELEMENT=av,
VISIBLE_ELEMENT=av,

TITLE_LABEL=aw,
DESCRIPTION_LABEL=ax,
Description=ax.Text,
Title=aw.Text,

Parent=au,
Kind="Slider"
},ao)
end

function an:SetValue(au)
assert(type(au)=="boolean",`"Toggle.SetValue". 'boolean' expected, got {typeof(au)}`)

if self.Value~=au then
self.Value=au
self.WHEN_VALUE_CHANGED(au)
end
end

function an.new(au,av,aw,ax,ay,az)
return setmetatable({
CALLBACKS=az,
WHEN_VALUE_CHANGED=ay,

DESTROY_ELEMENT=av,
VISIBLE_ELEMENT=av,

TITLE_LABEL=aw,
DESCRIPTION_LABEL=ax,
Description=ax.Text,
Title=aw.Text,

Parent=au,
Kind="Toggle"
},an)
end

function am:SetText(au)
assert(type(au)=="string",`"TextBox.SetText". 'string' expected, got {typeof(au)}`)

self.TEXTBOX.Text=au
return self
end

function am:SetPlaceholder(au)
assert(type(au)=="string",`"TextBox.SetPlaceholder". 'string' expected, got {typeof(au)}`)

self.TEXTBOX.PlaceholderText=au
return self
end

function am:CaptureFocus()
self.TEXTBOX:CaptureFocus()
return self
end

function am:Clear()
self.TEXTBOX.Text=""
return self
end

function am:SetTextFilter(au)
if au~=nil then
assert(type(au)=="function",`"TextBox.SetTextFilter[param 1]". 'function', or 'nil' expected, got {typeof(au)}`)
end

self.TEXTBOX_TEXT_FILTER=au
return self
end

function am.new(au,av,aw,ax,ay,az)
return setmetatable({
Title=av.Text,
Description=aw.Text,
DESCRIPTION_LABEL=aw,
TITLE_LABEL=av,

CALLBACKS=az,
DESTROY_ELEMENT=ax,
VISIBLE_ELEMENT=ax,

TEXTBOX=ay,
BUTTON=ax,

Parent=au,
Kind="TextBox"
},am)
end

am.Set=am.SetText
an.Set=an.SetValue
ao.Set=ao.SetValue
end local al=function(

al, am, an)
local ao=E("TextButton","Button",an,{
Size=UDim2.new(1,0,0,24),
AutoButtonColor=false,
Text="",
Elements={
Corner=UDim.new(0,6)
},
ThemeTag={
BackgroundColor3="Colors.Buttons.Default"
},
Childs={
E("TextLabel","Title",{
BackgroundTransparency=1,
Text=am.Title,
TextSize=10,
TextXAlignment=Enum.TextXAlignment.Left,
TextTransparency=(FirstTab and 0.3)or 0,
TextTruncate=Enum.TextTruncate.AtEnd,
ThemeTag={
Font="Font.Medium",
TextColor3="Colors.Text.Default"
}
})
}
})

local ap=E("Frame",ao,{
Position=UDim2.new(0,1,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
Size=UDim2.fromOffset(4,4),
BackgroundTransparency=1,
ThemeTag={
BackgroundColor3="Colors.Primary"
},
Elements={
Corner=UDim.new(0.5,0)
}
})

local aq=E("ScrollingFrame","Container",{
Size=UDim2.new(1,0,1,0),
Position=UDim2.new(0,0,1),
AnchorPoint=Vector2.new(0,1),
ScrollBarThickness=1.5,
BackgroundTransparency=1,
ScrollBarImageTransparency=0.2,
AutomaticCanvasSize=Enum.AutomaticSize.Y,
ScrollingDirection=Enum.ScrollingDirection.Y,
BorderSizePixel=0,
CanvasSize=UDim2.new(),
ThemeTag={
ScrollBarImageColor3="Colors.ScrollBar"
},
Elements={
Padding={
PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10),
PaddingTop=UDim.new(0,10),
PaddingBottom=UDim.new(0,10)
},
ListLayout={
Padding=UDim.new(0,5)
}
}
})

local ar=E("ImageLabel",ao,{
Position=UDim2.new(0,8,0.5),
Size=UDim2.new(0,13,0,13),
AnchorPoint=Vector2.new(0,0.5),
BackgroundTransparency=1,
ImageTransparency=0.3,
Image=am.Icon or""
})

local as=function()


local as=string.sub(ar.Image,1,13)=="rbxassetid://"
local at=ao.Title
ar.Visible=as
at.Size=UDim2.new(1,as and-25 or-15,1)
at.Position=UDim2.fromOffset(as and 25 or 15)end


u(ar:GetPropertyChangedSignal"Image",as)
as()

return ao,aq,ap,ar end local am=function(


am, an, ao, ap)
local aq=E("TextLabel",{
TextXAlignment=Enum.TextXAlignment.Left,
TextTruncate=Enum.TextTruncate.AtEnd,
AutomaticSize=Enum.AutomaticSize.Y,
Size=UDim2.new(1,-20),
Position=UDim2.fromScale(0,0.5),
AnchorPoint=Vector2.new(0,0.5),
BackgroundTransparency=1,
TextSize=10,
ThemeTag={
OBJECTS=C,
TextColor3="Colors.Text.Default",
Font="Font.Medium"
}
})

local ar=V[am]
local as=T[am].Container

local at=E("TextLabel",{
TextXAlignment=Enum.TextXAlignment.Left,
AutomaticSize=Enum.AutomaticSize.Y,
Size=UDim2.new(1,-20),
Position=UDim2.new(0,12,0,15),
BackgroundTransparency=1,
TextWrapped=true,
TextSize=8,
RichText=true,
ThemeTag={
OBJECTS=ar,
TextColor3="Colors.Text.Dark",
Font="Font.Normal"
}
})

local au={
OBJECTS=ar,
BackgroundColor3="Colors.Buttons.Default"
}

local av=E("TextButton","Option",{
AutomaticSize=Enum.AutomaticSize.Y,
Size=UDim2.new(1,0,0,25),
AutoButtonColor=false,
Text="",
ThemeTag=au,
Elements={
Corner=UDim.new(0,6)
},
Childs={
E("Frame","Holder",{
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
Size=ap,
Elements={
ListLayout={
SortOrder=Enum.SortOrder.LayoutOrder,
VerticalAlignment=Enum.VerticalAlignment.Center,
Padding=UDim.new(0,2)
},
Padding={
PaddingBottom=UDim.new(0,5),
PaddingTop=UDim.new(0,5)
}
},
Childs={aq,at}
})
}
})

local aw=av.Holder local ax=function(

ax, ay)
if ay then
if _ then
local az=w(s.CurrentTheme,"Colors.Buttons.Default")
_.Theme.BackgroundColor3="Colors.Buttons.Default"
J(_.Button,"BackgroundColor3",az,0.2):Play()
end

_={
Button=av,
Theme=au
}
end

au.BackgroundColor3=ax
J(av,"BackgroundColor3",w(s.CurrentTheme,ax),0.2):Play()end


u(av.MouseLeave,function()ax("Colors.Buttons.Default",false)end)
u(av.MouseEnter,function()ax("Colors.Buttons.Holding",true)end)

u(at:GetPropertyChangedSignal"Text",function()
local ay=#at.Text>0

if at.Visible~=ay then
local az=ay and 0 or 0.5
at.Visible=ay
aw.Position=UDim2.fromScale(0,az)
aw.AnchorPoint=Vector2.new(0,az)
end
end)

aq.Text=an
at.Text=ao or""

av.Parent=as

return av,aq,at end local an=function(


an, ao)
if type(ao)~="table"then
error(`"Tab.Add{an}[Configs]". 'table' expected, got {typeof(ao)}`,2)
end

local ap=ao[1]or ao.Name or ao.Title
local aq=ao.Desc or ao.Description

assert(type(ap)=="string",`"Tab.Add{an}.Title". 'string' expected, got {typeof(ap)}`)

if aq~=nil and type(aq)~="string"then
error(`"Tab.Add{an}.Description". 'string', or 'nil' expected, got {typeof(aq)}`,2)
end

return ap,aq or""end local ao=function(


ao, ap)
if ap~=nil and type(ap)~="string"then
error(`"Tab.Add{ao}.Flag". 'nil', or 'string' expected, got {typeof(ap)}`)
end

return ap end local ap=function()



local ap=160

local aq={
Corner=UDim.new(0,6),
Stroke={
ThemeTag={
Color="Colors.Stroke"
}
},
Gradient={
Rotation=45,
ThemeTag={
Color="Colors.Background"
}
}
}

local ar=E("TextButton",OutBox,{
Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,
Active=true,
Text=""
})

local as=E("Frame","Dropdown",ar,{
Size=UDim2.fromOffset(ap,100),
Position=UDim2.fromOffset(50,50),
Elements=aq,
Active=true,
ThemeTag={
BackgroundTransparency="BackgroundTransparency"
}
})

local at=E("TextButton","Search",as,{
Position=UDim2.new(1,5,0,5),
Size=UDim2.new(0,25,0,25),
AutomaticSize=Enum.AutomaticSize.X,
Active=true,
Elements=aq,
Text="",
ThemeTag={
BackgroundTransparency="BackgroundTransparency"
},
Childs={
E("UIPadding",{
PaddingLeft=UDim.new(0,5),
PaddingRight=UDim.new(0,5),
PaddingBottom=UDim.new(0,5),
PaddingTop=UDim.new(0,5)
}),
E("UIListLayout",{
Padding=UDim.new(0,5),
FillDirection=Enum.FillDirection.Horizontal
}),
E("TextBox","SearchBox",{
Size=UDim2.fromScale(0,1),
Position=UDim2.fromScale(0.5,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
Visible=false,
PlaceholderText="Search...",
ClearTextOnFocus=false,
Text="",
Elements={
Corner=UDim.new(0,6)
},
ThemeTag={
BackgroundColor3="Colors.Stroke",
TextColor3="Colors.Text.Default",
Font="Font.ExtraBold"
}
}),
E("ImageLabel","SearchIcon",{
Size=UDim2.fromScale(1,1),
SizeConstraint=Enum.SizeConstraint.RelativeYY,
Position=UDim2.fromScale(0.5,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
ThemeTag={
BackgroundColor3="Colors.Stroke",
ImageColor3="Colors.Icons",
Image="Icons.Search"
}
})
}
})

local au=E("ScrollingFrame",as,{
Size=UDim2.new(1,-6,1,-6),
Position=UDim2.fromScale(0.5,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
ScrollBarThickness=3,
BackgroundTransparency=1,
BorderSizePixel=0,
CanvasSize=UDim2.new(),
ScrollingDirection=Enum.ScrollingDirection.Y,
AutomaticCanvasSize=Enum.AutomaticSize.Y,
Active=true,
ThemeTag={
OBJECTS=C,
ScrollBarImageColor3="Colors.ScrollBar"
},
Elements={
Padding={
PaddingLeft=UDim.new(0,8),
PaddingRight=UDim.new(0,8),
PaddingTop=UDim.new(0,5),
PaddingBottom=UDim.new(0,5)
},
ListLayout={
Padding=UDim.new(0,4)
}
}
})

local av=at.SearchIcon
local aw=at.SearchBox

local ax=130

local ay=J(as,"Size",UDim2.fromOffset(ap,0),0.2)
local az=J(aw,"Size",UDim2.new(0,ax-30,1,0),0.3)
local aA=J(aw,"Size",UDim2.new(0,0,1,0),0.2)

local aB={}
local aC=false
local aD=false
local aE
local aF
local aG
local aH
local aI

local aJ=0

local aK=25
local aL=(aK*12)+10
local aM=5 local aN=function(

aN)
local aO=I.AbsoluteSize.Y/ad.Scale
return math.min((aK*math.max(aN,0.5))+10,aL,aO/1.75)end local aO=function()



local aO=as.AbsolutePosition
local aP=as.AbsoluteSize

local aQ=Vector2.new(p.X,p.Y)

local aR=aQ.X>=aO.X and aQ.X<=(aO.X+aP.X)
local aS=aQ.Y>=aO.Y and aQ.Y<=(aO.Y+aP.Y)

return aR and aS end local aP=function(


aP, aQ)
local aR=aI.AbsolutePosition
local aS=aI.AbsoluteSize
local aT=I.AbsoluteSize
local aU=ad.Scale
local aV=aN(aP)

local aW=aT.X/aU
local aX=aT.Y/aU
local aY=aR.X/aU
local aZ=aR.Y/aU
local a_=aS.X/aU
local a0=aS.Y/aU

local a1=aZ+(a0/2)
local a2=a1-(aV/2)

local a3=aM
local a4=aX-aV-aM

local a5=math.clamp(a2,a3,a4)

local a6=Vector2.new(0,0)

if a5>(aX*0.7)then
a6=Vector2.new(0,1)
a5=math.min(a1+(aV/2),aX-aM)
end

local a7=math.clamp(
aY,
aM,
aW-as.Size.X.Offset-(aM*2)-(at.AbsoluteSize.X/aU)
)

return Vector2.new(a7,a5),a6 end local aQ=function(...)



local aQ,aR=aP(...)

as.AnchorPoint=aR
as.Position=UDim2.fromOffset(aQ.X,aQ.Y)end local aR=function()



if not aD then return end

aD=false

aw.Text=""
aA:Play()
aA.Completed:Wait()
aw.Visible=false end local aS=function()



if aD then return end

aD=true

aw.Visible=true
az:Play()

aw:CaptureFocus()

local aS=as.AbsoluteSize
local aT=I.AbsoluteSize
local aU=ad.Scale
local aV=as.AnchorPoint

local aW=ax*aU

local aX=as.AbsolutePosition.X

local aY=aX+aS.X+5+aW

if aY>aT.X-(aM*aU)then
local aZ=(aT.X-aS.X-aW-5-(aM*aU))/aU

aZ=math.max(aZ,aM)

J(as,"Position",UDim2.fromOffset(aZ,as.Position.Y.Offset),0.3):Play()
end end local aT=function(


aT)
if not aC then
aE=aT
ar.Parent=Y
return true
end end local aU=function()



if aC then return end

if aE then
aE()
aE=nil
end

task.spawn(aR)
aC=true
ay:Play()
ay.Completed:Wait()
ar.Parent=nil
aC=false end local aV=function()



if aw:IsFocused()then
aJ=tick()
return nil
end

if(tick()-aJ)>=0.3 and not aO()then
aU()
end end local aW=function()



for aW,aX in aB do
aW.Parent=nil
aB[aW]=nil
end end local aX=function(


aX, aY)
aX.Selected=aY

if aX.Instance then
local aZ=aX.Instance
local a_=aZ.TextLabel
local a0=aZ.Frame

local a1=aY and 0 or(aH and 0.8 or 1)
local a2=aY and 0 or 0.4
local a3=UDim2.fromOffset(4,aY and 14 or 4)

if aZ.Parent then
J(a0,"BackgroundTransparency",a1,0.35):Play()
J(a_,"TextTransparency",a2,0.35):Play()
J(a0,"Size",a3,0.35):Play()
else
a_.TextTransparency=a2
a0.BackgroundTransparency=a1
a0.Size=a3
end
end end local aY=function(


aY)
if aw.Visible==false or not aY then
local aZ=aG and#aG or 0
as.Size=UDim2.fromOffset(ap,aN(aZ))
return nil
end

if aY then
local aZ=aY.Instance
local a_=M(aw.Text)
aZ.Visible=#a_==0 or aY.SearchText:find(a_)~=nil

if aZ.Visible~=false then
SEARCH_RESULT_COUNT+=1
as.Size=UDim2.fromOffset(ap,aN(SEARCH_RESULT_COUNT))
end
end end local aZ=function(


aZ, a_, a0, a1)
local a2=true

if a_=="+"or a_=="-"then
a2=aZ.Selected==(a_=="+")
a0=a0:sub(2,-1)
end

return a2 and a1:find(a0,1,true)~=nil end local a_=function(


a_, a0)
local a1=E("TextButton",{
Size=UDim2.new(1,0,0,21),
AutoButtonColor=false,
Text="",
Elements={
Corner=UDim.new(0,4)
},
ThemeTag={
BackgroundColor3="Colors.Buttons.Default"
},
Childs={
E("Frame",{
Position=UDim2.new(0,1,0.5),
Size=UDim2.new(0,4,0,4),
BackgroundTransparency=1,
AnchorPoint=Vector2.new(0,0.5),
Elements={
Corner=UDim.new(0.5,0)
},
ThemeTag={
BackgroundColor3="Colors.Primary"
}
}),
E("TextLabel",{
Size=UDim2.fromScale(1,1),
Position=UDim2.fromOffset(10,0),
TextXAlignment=Enum.TextXAlignment.Left,
BackgroundTransparency=1,
TextTransparency=0.4,
Text=a_.DisplayName,
TextSize=9,
ThemeTag={
Font="Font.Bold",
TextColor3="Colors.Text.Default"
}
})
}
})

local a2=0

u(a1.Activated,function()
if(tick()-a2)<0 then return end

if ar.Parent and not aC then
a2=tick()+0.2
aF(a_)
end
end)

a_.SearchText=M(a_.DisplayName)
a_.Instance=a1

if a0 then
local a3=aw.Text

if#a3>0 then
local a4=string.sub(a3,1,1)
local a5=M(aw.Text)
a1.Visible=aZ(a_,a4,a5,a_.SearchText)
end

a1.Parent=au
aY(a_)
end

aX(a_,a_.Selected)end local a0=function(


a0)
aW()
aG=a0

for a1=1,#a0 do
local a2=a0[a1]
local a3=a2.Instance

if a3==nil then
a_(a2)
a3=a2.Instance
end

a3.Parent=au
aB[a3]=true
end

aQ(#a0)
J(as,"Size",UDim2.fromOffset(ap,aN(#a0)),0.3):Play()end local a1=function()



local a1=aw.Text
local a2=string.sub(a1,1,1)
local a3=M(a1)
local a4=#a3==0
local a5=0

for a6=1,#aG do
local a7=aG[a6]
local a8=a4 or aZ(a7,a2,a3,a7.SearchText)
a7.Instance.Visible=a8

if a8 then
a5+=1
end
end

SEARCH_RESULT_COUNT=a5
as.Size=UDim2.fromOffset(ap,aN(a5))end


u(ab:GetPropertyChangedSignal"Visible",aV)
u(ab:GetPropertyChangedSignal"Size",aV)
u(ar.MouseButton1Down,aV)
u(ar.Activated,aV)

u(at.Activated,aS)
u(aw:GetPropertyChangedSignal"Text",a1)

return table.freeze{
CreateOptionTemplate=a_,
SetOptionValue=aX,
CloseDropdown=aU,
OpenDropdown=aT,
SetOptions=a0,
Clear=aW,
SetOnClicked=function(...)
aF=...
end,
SetMultiSelect=function(...)
aH=...
end,
SetHolder=function(...)
aI=...
end
}end


local aq

local ar={"W","A","S","D","Tab","Slash","Backspace","Escape","Unknown"}
local as={"MouseButton1","MouseButton2","MouseButton3"}

local at=K({"number","string","nil","boolean","table"},true)local au=function(

au)
if aq==nil then
aq=K(Enum.KeyCode:GetEnumItems())
end

return typeof(au)=="EnumItem"and aq[au]end


function ah:GetNoSelfCall(av)
assert(type(av)=="string",`"Tab.GetNoSelfCall". 'string' expected, got {typeof(av)}`)
local aw=self[av]
assert(type(aw)=="function",`"Tab.GetNoSelfCall". '{aw}' is not a 'function'-{av}`)

return function(...)
return aw(self,...)
end
end

function ah:AddSection(av)
assert(av==nil or type(av)=="string",`"Tab.AddSection[param 1]". 'string', or 'nil' expected, got {typeof(av)}`)
av=av or""

local aw=V[self]

local ax=E("Frame","Option",T[self].Container,{
Size=UDim2.new(1,0,0,26),
BackgroundTransparency=1
})

local ay=E("TextLabel",ax,{
TextXAlignment=Enum.TextXAlignment.Left,
TextTruncate=Enum.TextTruncate.AtEnd,
Size=UDim2.new(1,-25,0,18),
Position=UDim2.new(0,5,0,0),
BackgroundTransparency=1,
TextSize=14,
Text=av,
ThemeTag={
OBJECTS=aw,
TextColor3="Colors.Text.Default",
Font="Font.Bold"
}
})

-- White divider line below section title
local aDivider=E("Frame","Divider",ax,{
Size=UDim2.new(1,-10,0,1),
Position=UDim2.new(0,5,1,-1),
AnchorPoint=Vector2.new(0,1),
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=0.8,
BorderSizePixel=0
})

return setmetatable({
Title=av,

DESTROY_ELEMENT=ax,
VISIBLE_ELEMENT=ax,
TITLE_LABEL=ay,

Kind="Section",
Parent=self
},ai)
end

function ah:AddToggle(av)
local aw,ax=an("Toggle",av)
local ay=ao("Toggle",av[4]or av.Flag)

local az=av[2]or av.Default or false
local aA=F(av[3]or av.Callback)

if type(az)~="boolean"then
error(`"Tab.AddToggle.Default". 'boolean' expected, got {typeof(az)}`,2)
end

if ay~=nil and type(ae[ay])=="number"then
az=ae[ay]==0
end

local aB=V[self]
local aC,aD,aE=am(self,aw,ax,UDim2.new(1,-38,0,0))

local aF=E("Frame",aC,{
Size=UDim2.new(0,35,0,18),
Position=UDim2.new(1,-10,0.5),
AnchorPoint=Vector2.new(1,0.5),
Elements={
Corner=UDim.new(0.5,0)
},
ThemeTag={
OBJECTS=aB,
BackgroundColor3="Colors.Stroke"
}
})

local aG=E("Frame",aF,{
BackgroundTransparency=1,
Size=UDim2.new(0.8,0,0.8,0),
Position=UDim2.new(0.5,0,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5)
})

local aH={
OBJECTS=aB,
BackgroundColor3="Colors.OnPrimary"
}

local aI=E("Frame",aG,{
Size=UDim2.new(0,12,0,12),
Position=UDim2.new(0,0,0.5),
AnchorPoint=Vector2.new(0,0.5),
Elements={
Corner=UDim.new(0.5,0)
},
ThemeTag=aH
})

local aJ=tick()
local aK=0.2
local aL={}local aM=function(

aM)
aL={}
for aN=1,#aM do
aM[aN]:Play()
aL[aN]=aM[aN]
end end local aN=function()



for aN=#aL,1,-1 do
local aO=aL[aN]
if aO.PlaybackState==Enum.PlaybackState.Playing then
aO:Cancel()
end
aL[aN]=nil
end end local aO=function(


aO)
if ay~=nil then ae[ay]=aO and 0 or 1 end
G(aA,aO)

local aP=UDim2.new(aO and 1 or 0,0,0.5,0)
local aQ=Vector2.new(aO and 1 or 0,0.5)
local aR=aO and"Colors.Primary"or"Colors.OnPrimary"
local aS=w(s.CurrentTheme,aR)
local aHolderColor=aO and Color3.fromRGB(70,70,70)or w(s.CurrentTheme,"Colors.Stroke")

aH.BackgroundColor3=aR

if self.Selected and(tick()-aJ)>=aK then
aM{
J(aI,"Position",aP,0.25),
J(aI,"AnchorPoint",aQ,0.25),
J(aI,"BackgroundColor3",aS,0.25),
J(aF,"BackgroundColor3",aHolderColor,0.25)
}
else
aN()
aI.Position=aP
aI.AnchorPoint=aQ
aI.BackgroundColor3=aS
aF.BackgroundColor3=aHolderColor
end

aJ=tick()end


local aP=ak.Toggle.new(self,aC,aD,aE,aO,aA)
aP:SetValue(az)

local aQ=0

u(aC.Activated,function()
if(tick()-aQ)>=aK then
aQ=tick()
aP:SetValue(not aP.Value)
end
end)

return aP
end

function ah:AddButton(av)
local aw,ax=an("Button",av)
local ay=F(av[2]or av.Callback)
local az=av.Debounce or av.Cooldown

local aA=V[self]
local aB,aC,aD=am(self,aw,ax,UDim2.new(1,-20,0,0))

local aE=E("ImageLabel",aB,{
Size=UDim2.new(0,14,0,14),
Position=UDim2.new(1,-10,0.5),
AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=1,
ThemeTag={
OBJECTS=aA,
Image="Icons.Button"
}
})

local aF=0

u(aB.Activated,function()
if az~=nil and(tick()-aF)<0 then return end

if az~=nil then
aF=tick()+az
end

G(ay)
end)

return setmetatable({
CALLBACKS=ay,
DESTROY_ELEMENT=aB,
VISIBLE_ELEMENT=aB,
TITLE_LABEL=aC,
DESCRIPTION_LABEL=aD,

Title=aw,
Description=ax,

Parent=self,
Kind="Button"
},ai)
end

function ah:AddTextBox(av)
local aw,ax=an("TextBox",av)
local ay=ao("TextBox",av[4]or av.Flag)

local az=av[2]or av.Default
local aA=F(av[3]or av.Callback)

local aB=av.Placeholder or av.PlaceholderText
local aC=av.ClearOnFocus or av.ClearTextOnFocus

if az~=nil and type(az)~="string"then
error(`"Tab.AddTextBox.Default". 'string', or 'nil' expected, got {typeof(az)}`,2)
end

if ay and type(ae[ay])=="string"then
az=ae[ay]
end

local aD=V[self]
local aE,aF,aG=am(self,aw,ax,UDim2.new(1,-150,0,0))

local aH=E("Frame",aE,{
Size=UDim2.new(0,150,0,18),
Position=UDim2.new(1,-10,0.5),
AnchorPoint=Vector2.new(1,0.5),
ThemeTag={
OBJECTS=aD,
BackgroundColor3="Colors.Stroke"
},
Elements={
Corner=UDim.new(0,4)
}
})

local aI=E("TextBox",aH,{
Size=UDim2.new(0.85,0,0.85,0),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
BackgroundTransparency=1,
TextScaled=true,
Active=true,
Text="",
PlaceholderText=B.TEXTBOX.PLACEHOLDER_TEXT,
ThemeTag={
OBJECTS=aD,
TextColor3="Colors.Text.Default",
Font="Font.Bold"
}
})

local aJ={
OBJECTS=aD,
Image="Icons.TextBox",
ImageColor3="Colors.Icons"
}

local aK=E("ImageLabel",aH,{
Size=UDim2.new(0,12,0,12),
Position=UDim2.new(0,-5,0.5),
AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=1,
ThemeTag=aJ
})

if az~=nil then
aI.Text=az
end

if aC~=nil then
aI.ClearTextOnFocus=aC
end

if aB~=nil then
aI.PlaceholderText=aB
end

local aL=ak.TextBox.new(self,aF,aG,aE,aI,aA)local aM=function(

aM)
aJ.ImageColor3=aM
J(aK,"ImageColor3",w(s.CurrentTheme,aM),0.5):Play()end


if ay~=nil then
u(aI:GetPropertyChangedSignal"Text",function()
ae[ay]=aI.Text
end)
end

u(aI.Focused,function()
aM"Colors.Primary"
end)

u(aI.FocusLost,function()
aM"Colors.Icons"
local aN=aL.TEXTBOX_TEXT_FILTER

if aN then
local aO=aN(aI.Text)
if type(aO)=="string"then
aI.Text=aO
end
end

G(aA,aI.Text)
end)

u(aE.Activated,function()
aI:CaptureFocus()
end)

return aL
end

function ah:AddSlider(av)
local aw,ax=an("Slider",av)
local ay=ao("Slider",av[7]or av.Flag)

local az=av[2]or av.Min
local aA=av[3]or av.Max
local aB=av[4]or av.Increment
local aC=av[5]or av.Default
local aD=F(av[6]or av.Callback)

if aB~=nil and type(aB)~="number"then
error(`"Tab.AddSlider.Increment". 'number', or 'nil' expected, got {typeof(aB)}`,2)
end

if aC~=nil and type(aC)~="number"then
error(`"Tab.AddSlider.Default". 'number', or 'nil' expected, got {typeof(aC)}`,2)
end

assert(type(az)=="number",`"Tab.AddSlider.Min", 'number' expected, got {typeof(az)}`)
assert(type(aA)=="number",`"Tab.AddSlider.Max", 'number' expected, got {typeof(aA)}`)

local aE=V[self]
local aF=T[self].Container

local aG,aH,aI=am(self,aw,ax,UDim2.new(0.55,0,0,0))

if aC==nil then
aC=az
end

if aB==nil then
aB=1
end

if ay~=nil and type(ae[ay])=="number"then
aC=ae[ay]
end

local aJ=E("TextButton",aG,{
Size=UDim2.new(0.45,0,1,0),
Position=UDim2.new(1,0,0,0),
AnchorPoint=Vector2.new(1,0),
AutoButtonColor=false,
BackgroundTransparency=1,
Text=""
})

local aK=E("Frame",aJ,{
Size=UDim2.new(1,-20,0,6),
Position=UDim2.fromScale(0.5,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
ThemeTag={
OBJECTS=aE,
BackgroundColor3="Colors.Stroke"
},
Elements={
Corner=UDim.new(0.5,0)
}
})

local aL=E("Frame",aK,{
Size=UDim2.fromScale(0,1),
BorderSizePixel=0,
ThemeTag={
OBJECTS=aE,
BackgroundColor3="Colors.Slider.SliderBar"
},
Elements={
Corner=UDim.new(0.5,0)
}
})

local aM=E("Frame",aK,{
Size=UDim2.new(0,6,0,12),
BackgroundColor3=Color3.fromRGB(255,255,255),
Position=UDim2.fromScale(0,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=0.2,
Elements={
Corner=UDim.new(0,6)
}
})

local aN=E("TextLabel",aJ,{
Size=UDim2.new(0,50,0,14),
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(0,-1,0.5,0),
BackgroundTransparency=1,
TextSize=12,
TextXAlignment=Enum.TextXAlignment.Right,
ThemeTag={
OBJECTS=aE,
TextColor3="Colors.Text.Default",
Font="Font.SliderValue"
}
})

local aO=E("UIScale",aN)

local aP=ak.Slider.new(self,aG,aH,aI,aD)

aP.Min=az
aP.Max=aA
aP.Increment=aB local aQ=function(

aQ)
return(aQ-az)/(aA-az)end local aR=function(


aR)
return(aR*(aA-az))+az end local aS=function(


aS)
return math.round(aS/aB)*aB end local aT=function(


aT, aU)
if aT==aP.Value then return end

if ay~=nil then
ae[ay]=aT
end

task.defer(G,aD,aT)
aP.Value=aT

local aV=UDim2.fromScale(aU,0.5)
local aW=UDim2.fromScale(aU,1)

aN.Text=tostring(math.floor(aT*1000)/1000)

if self.Selected then
J(aM,"Position",aV,0.3):Play()
J(aL,"Size",aW,0.3):Play()
else
aM.Position=aV
aL.Size=aW
end end local aU=function(


aU)
local aV=math.clamp(aS(aU),az,aA)
aT(aV,aQ(aV))end


aP.WHEN_VALUE_CHANGED=aU local aV=function(

aV, aW)
local aX=(p.X-aV.X)/aW.X
local aY=math.clamp(aX,0,1)
local aZ=aR(aY)
local a_=aS(aZ)
local a0=math.clamp(a_,az,aA)
aT(a0,aQ(a0))end


local aW=Random.new()
aU(aC)

u(aJ.MouseButton1Down,function()
if A~=false then return end

J(aM,"BackgroundTransparency",0,0.3):Play()
aF.ScrollingEnabled=false
A=true

local aX=aK.AbsolutePosition
local aY=aK.AbsoluteSize

while i:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do
aV(aX,aY)
task.wait()
end

A=false
J(aM,"BackgroundTransparency",0.2,0.3):Play()
aF.ScrollingEnabled=true
end)

u(aN:GetPropertyChangedSignal"Text",function()
if not self.Selected then return end

aO.Scale=0.3
J(aO,"Scale",1.2,0.1):Play()

local aX=J(aN,"Rotation",aW:NextNumber(-7.5,7.5),0.15)
aX:Play()
aX.Completed:Wait()

J(aO,"Scale",1,0.2):Play()
J(aN,"Rotation",0,0.1):Play()
end)

return aP
end

function ah:AddDiscordInvite(av)
local aw=av[1]or av.Name or av.Title or"Discord"
local ax=av.Desc or av.Description or""
local ay=av[2]or av.Logo or av.Icon or av.Image or""
local az=av[3]or av.Invite or av.Link or""

local aA=V[self]
local aB=T[self].Container

local aC=E("Frame","Option",aB,{
Size=UDim2.new(1,0,0,80),
BackgroundTransparency=1
})

local aD=E("TextLabel",aC,{
Size=UDim2.new(1,0,0,15),
Position=UDim2.new(0,5),
TextColor3=Color3.fromRGB(40,150,255),
TextXAlignment=Enum.TextXAlignment.Left,
BackgroundTransparency=1,
TextSize=10,
Text=az,
ThemeTag={
OBJECTS=aA,
TextColor3="Colors.Link",
Font="Font.Medium"
}
})

local aE=E("Frame","InviteHolder",aC,{
Size=UDim2.new(1,0,0,65),
AnchorPoint=Vector2.new(0,1),
Position=UDim2.new(0,0,1),
ThemeTag={
OBJECTS=aA,
BackgroundColor3="Colors.Buttons.Default"
},
Elements={
Corner=UDim.new(0,7)
}
})

local aF=E("ImageLabel",aE,{
Size=UDim2.new(0,30,0,30),
Position=UDim2.new(0,7,0,7),
Image=ay,
BackgroundTransparency=1,
Elements={
Corner=UDim.new(0,4),
Stroke={
ThemeTag={
OBJECTS=aA,
Color="Colors.Stroke"
}
}
}
})

local aG=E("TextLabel",aE,{
Size=UDim2.new(1,-52,0,15),
Position=UDim2.new(0,44,0,7),
TextXAlignment=Enum.TextXAlignment.Left,
BackgroundTransparency=1,
TextSize=10,
Text=aw,
ThemeTag={
Font="Font.Bold",
OBJECTS=aA,
TextColor3="Colors.Text.Default"
}
})

local aH=E("TextLabel",aE,{
Size=UDim2.new(1,-52,0,0),
Position=UDim2.new(0,44,0,22),
TextWrapped=true,
AutomaticSize=Enum.AutomaticSize.Y,
TextXAlignment=Enum.TextXAlignment.Left,
BackgroundTransparency=1,
TextSize=8,
Text=ax,
ThemeTag={
Font="Font.Normal",
OBJECTS=aA,
TextColor3="Colors.Text.Dark"
}
})

local aI=E("TextButton",aE,{
Size=UDim2.new(1,-14,0,16),
AnchorPoint=Vector2.new(0.5,1),
Position=UDim2.new(0.5,0,1,-7),
Text="Join",
TextSize=12,
TextColor3=Color3.fromRGB(220,220,220),
BackgroundColor3=Color3.fromRGB(50,150,50),
AutoButtonColor=false,
Elements={
Corner=UDim.new(0,5)
},
ThemeTag={
Font="Font.Bold"
}
})

local aJ
u(aI.Activated,function()
setclipboard(az)
if aJ then return end
aJ=true
SetProps(aI,{
Text="Copied to Clipboard",
BackgroundColor3=Color3.fromRGB(100,100,100),
TextColor3=Color3.fromRGB(150,150,150)
})
task.wait(5)
SetProps(aI,{
Text="Join",
BackgroundColor3=Color3.fromRGB(50,150,50),
TextColor3=Color3.fromRGB(220,220,220)
})
aJ=false
end)

return setmetatable({
DESTROY_ELEMENT=aC,
VISIBLE_ELEMENT=aC,
TITLE_LABEL=aG,
DESCRIPTION_LABEL=aH,

Title=aw,
Description=ax,

Kind="DiscordInvite",
Parent=self
},ai)
end

function ah:AddParagraph(av,aw)
assert(type(av)=="string",`"Tab.AddParagraph[param 1]". 'string' expected, got {typeof(av)}`)

if aw~=nil and type(aw)~="string"then
error(`"Tab.AddParagraph[param 2]". 'string', or 'nil' expected, got {typeof(aw)}`,2)
end

local ax=V[self]
local ay,az,aA=am(self,av,aw,UDim2.new(1,0,0,0))

return setmetatable({
DESTROY_ELEMENT=ay,
VISIBLE_ELEMENT=ay,
TITLE_LABEL=az,
DESCRIPTION_LABEL=aA,

Title=av,
Description=aw,

Parent=self,
Kind="Paragraph"
},ai)
end

function ah:AddDropdown(av)
local aw,ax=an("Dropdown",av)
local ay=ao("Dropdown",av[5]or av.Flag)

local az=av[2]or av.Options
local aA=av[3]or av.Default
local aB=F(av[4]or av.Callback)
local aC=av.MultiSelect

if aA~=nil and type(aA)~="table"and type(aA)~="string"then
error(`"Tab.AddDropdown.Default". 'string', 'table', or 'nil' expected, got {typeof(aA)}`,2)
end

if az~=nil and type(az)~="table"then
error(`"Tab.AddDropdown.Options". 'table', or 'nil' expected, got {typeof(az)}`,2)
end

if aC~=nil and type(aC)~="boolean"then
error(`"Tab.AddDropdown.MultiSelect". 'boolean', or 'nil' expected, got {typeof(aC)}`,2)
end

if ay and type(ae[ay])==(aC and"table"or"string")then
aA=ae[ay]
end

local aD=V[self]
local aE,aF,aG=am(self,aw,ax,UDim2.new(1,-150,0,0))

local aH=E("Frame",aE,{
Size=UDim2.new(0,150,0,18),
Position=UDim2.new(1,-10,0.5),
AnchorPoint=Vector2.new(1,0.5),
Elements={
Corner=UDim.new(0,4)
},
ThemeTag={
OBJECTS=aD,
BackgroundColor3="Colors.Stroke"
}
})

local aI=E("TextLabel",aH,{
Size=UDim2.new(0.85,0,0.85,0),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
BackgroundTransparency=1,
TextScaled=true,
Text="...",
ThemeTag={
OBJECTS=aD,
TextColor3="Colors.Text.Default",
Font="Font.Bold"
}
})

local aJ={
OBJECTS=aD,
Image="Icons.Dropdown.Open",
ImageColor3="Colors.Icons"
}

local aK=E("ImageLabel",aH,{
Size=UDim2.new(0,15,0,15),
Position=UDim2.new(0,-5,0.5),
AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=1,
ThemeTag=aJ
})

local aL=ak.Dropdown.new(self,aE,aF,aG,aB)

local aM
local aN=false
local aO=false

local aP={}
local aQ={}
local aR={}
local aS={}

aL.DROPDOWN_OPTIONS=aR
aL.Opened=aO local aT=function(

aT, aU)
aJ.ImageColor3=aT
aJ.Image=aU

J(aK,"ImageColor3",w(s.CurrentTheme,aT),0.35):Play()
aK.Image=w(s.CurrentTheme,aU)end local aU=function(


aU)
aO=aU
aL.Opened=aU

local aV=aU and"Colors.Primary"or"Colors.Icons"
local aW=aU and"Icons.Dropdown.Close"or"Icons.Dropdown.Open"
aT(aV,aW)end local aV=function()



aU(false)end local aW=function()



local aW={}
for aX,aY in aQ do
if not aY then continue end
aW[#aW+1]=aX
end
return aW end local aX=function(


aX)
local aY=type(aX)=="table"and table.concat(aX,", ")or(aX or"")

if#aY>=100 then
aY=aY:sub(1,97).."..."
end

aI.Text=#aY~=0 and aY or"..."end local aY=function()



aN=false

local aY=aC and aW()or aM and aM.Name
G(aB,aC and aQ or aY)
aX(aY)

if ay~=nil then
ae[ay]=aY
end end local aZ=function()



if not aN then
aN=true
task.delay(0.1,aY)
end end local a_=function(


a_)
if aC then
local a0=not a_.Selected
X.SetOptionValue(a_,a0)
aQ[a_.Name]=a0
else
if aM==a_ then
return nil
elseif aM~=nil then
X.SetOptionValue(aM,false)
end

aM=a_
X.SetOptionValue(a_,true)
end

aZ()end local a0=function(


a0)
a0=tostring(a0)
if aS[a0]then return end

local a1={
Name=a0,
DisplayName=a0,
Selected=false
}

if aC and aQ[a0]==nil then
aQ[a0]=false
end

aS[a0]=a1
aR[#aR+1]=a1
return a1 end local a1=function(


a1)
if aO==a1 then return end

if not X then
X=ap()
end

if a1 then
if not X.OpenDropdown(aV)then return end

X.SetHolder(aH)
X.SetMultiSelect(aC)
X.SetOnClicked(a_)
X.SetOptions(aR)
else
X.CloseDropdown()
end

aU(a1)end local a2=function(


a2, a3)
if a3 and type(a2)=="boolean"then
return a2==true and aR[a3]
end

return if type(a2)=="number"then aR[a2]else aS[tostring(a2)]end local a3=function(


a3)
a3.Selected=true

if aC then
aQ[a3.Name]=true
else
aM=a3
end end local a4=function(...)



local a4=a2(...)

if a4 then
a3(a4)
elseif aC and type(...)=="string"then
aP[select(1,...)]=true
end end local a5=function()



if not aA then return end

for a5=1,(aC and#aA or 1)do
a4(aA[a5],a5)
end end local a6=function(


a6)
local a7=table.find(aR,a6)

if a7 then
table.remove(aR,a7)
end

if a6.Instance then
a6.Instance:Destroy()
end

aS[a6.Name]=nil end local a7=function(


a7)
if aC then
local a8=a7.Name
return(aQ[a8]or aP[a8])==true
else
return aM and aM.Name==a7.Name
end end


aL.ADD_DROPDOWN_OPTION=function(a8)
if type(a8)=="table"then
for a9=1,#a8 do
aL:Add(a8[a9])
end

return nil
end

local a9=a0(a8)

if a9 then
if aL.Opened then
X.CreateOptionTemplate(a9,true)
end

if a7(a9)then
a3(a9)

if a9.Instance then
X.SetOptionValue(a9,a9.Selected)
end
end

aZ()
end
end

aL.REMOVE_DROPDOWN_OPTION=function(a8)
local a9=aS[tostring(a8)]
if a9 then
a6(a9)
end
end

aL.CLEAR_DROPDOWN=function()
for a8=#aR,1,-1 do
local a9=aR[a8]
if a9.Instance then
a9.Instance:Destroy()
end

aS[a9.Name]=nil
aR[a8]=nil
end

if aL.Opened then
X.Clear()
end
end

do
if az then
for a8=1,#az do
a0(az[a8])
end
end

if type(aA)=="table"then
a5()
elseif type(aA)=="string"or type(aA)=="number"then
local a8=a2(aA)

if a8 then
a3(a8)
end
end

if aC then
local a8=aW()
task.defer(G,aB,aQ)
aX(a8)
else
local a8=aM
local a9=a8 and a8.Name or""
task.defer(G,aB,a9)
aX(a9)
end
end

u(aE.Activated,function()
a1(not aO)
end)

return aL
end

function ah:Destroy()
assert(type(self)=="table"and self.IS_A_TAB,`"Tab.Destroy". {tostring(self)} is not a tab`)
if self.IS_DESTROYED then return end
local av=table.find(S,self)
assert(av,`"Tab.Destroy". failed to destroy '{self.Title}'`)

table.remove(S,av)

for aw,ax in T[self]do
ax:Destroy()
end

V[self]:destroy()

T[self]=nil
V[self]=nil

setmetatable(self,nil)
end

function ah:SetVisible(av)
assert(type(av)=="boolean",`"Tab.SetVisible[param 1]". 'boolean' extected, got {typeof(av)}`)

for aw,ax in T[self]do
ax.Visible=av
end
end

function ah:Select()
if ac==self then
return nil
end

if ac then
U[ac].Unselect()
end

ac=self
U[ac].Select()
end

function ai:SetTitle(av)
assert(type(av)=="string",`"Option.SetTitle". 'string' expected, got {typeof(av)}`)
assert(self.TITLE_LABEL,`"Option.SetTitle". cannot change this option name {self.KIND}:{self.Title}`)

self.TITLE_LABEL.Text=av
self.Title=av
return self
end

function ai:SetDescription(av)
assert(av==nil or type(av)=="string",`"Option.SetDescription". 'string', or 'nil' expected, got {typeof(av)}`)
assert(self.DESCRIPTION_LABEL,`"Option.SetDescription". cannot change this option description {self.KIND}:{self.Title}`)

self.DESCRIPTION_LABEL.Text=av
self.Description=av
return self
end

function ai:SetVisible(av)
assert(typeof(self.VISIBLE_ELEMENT)=="Instance",`"Option.SetVisible". cannot change this option visibility {self.KIND}:{self.Title}`)
assert(type(av)=="boolean",`"Option.SetVisible". 'boolean' expected, got {typeof(av)}`)

self.VISIBLE_ELEMENT.Visible=av
end

function ai:Destroy()
assert(typeof(self.DESTROY_ELEMENT)=="Instance",`"Option.Destroy". cannot destroy this option {self.KIND}:{self.Title}`)

self.DESTROY_ELEMENT:Destroy()
setmetatable(self,nil)

self.Destroyed=true
end

function ai:AddCallback(av)
assert(self.CALLBACKS,"\"Option.AddCallback\". cannot add callback to this option.")
assert(type(av)=="function",`"Option.AddCallback[param 1]". 'function' expected, got {typeof(av)}`)

table.insert(self.CALLBACKS,av)
return self
end

ai.NewCallback=ai.AddCallback
ai.SetContent=ai.SetDescription
ai.SetDesc=ai.SetDescription

function aj:CreateMobileMinimizer(av)
local aw=E("ImageButton",I,{
Size=UDim2.fromOffset(35,35),
Position=UDim2.fromScale(0.17,0.28),
AnchorPoint=Vector2.new(0.5,0.5),
AutoButtonColor=false,
ThemeTag={
BackgroundColor3="Colors.Buttons.Default"
}
})

u(aw.Activated,function()
ag:Minimize()
end)

av.Elements={}

if av.Corner then
av.Elements.Corner=av.Corner
av.Corner=nil
end

if av.Stroke then
av.Elements.Stroke=av.Stroke
av.Stroke=nil
end

D.Draggable(aw,ad,0.5)
D.SetProperties(aw,av)

return aw
end

function aj:SetKeyCode(av)
assert(au(av),`"Minimizer.SetKeyCode[param 1]". 'KeyCode' expected, got {typeof(av)}`)

self.KeyCode=av
end

function ag:SelectTab(av)
local aw=type(av)=="number"and S[av]

if type(av)=="table"and av.IS_A_TAB then
aw=av
end

if aw then
aw:Select()
elseif not aw then
assert(type(av)=="number",`"Window.SelectTab" number or tab expected, got {typeof(av)}`)
assert(av>0,`"Window.SelectTab" the number must be greater than 0, value: {av}`)
assert(av==math.floor(av),`"Winow.SelectTab" floor number expected, got {av}`)

self.SelectedTab=av
end
end

function ag:Minimize()
ab.Visible=not ab.Visible
end

function ag:MakeTab(av)
local aw=av[1]or av.Name or av.Title
local ax=av[2]or av.Icon or av.Image

assert(type(aw)=="string",`"Tab.Title" 'string' expected, got {typeof(aw)}`)
assert(ax==nil or type(ax)=="string",`"Tab.Icon" 'string' expected, got {typeof(ax)}`)

local ay=setmetatable({
Selected=self.SelectedTab==#S+1,
Icon=s:GetIconByName(ax),
Title=aw,

Parent=self,
IS_A_TAB=true
},ah)

local az=self:GetElements()
local aA=az.TabsContainer
local aB=az.ContainerHolder

local aC,aD,aE=al(self,ay,aA)

local aF=J(aD,"Size",UDim2.new(1,0,1,0),0.3)
local aG=UDim2.new(1,0,1,150)

local aH=0.45

local aI={
J(aE,"BackgroundTransparency",0,aH),
J(aE,"Size",UDim2.fromOffset(4,13),aH)
}

local aJ={
J(aE,"BackgroundTransparency",1,aH),
J(aE,"Size",UDim2.fromOffset(4,4),aH)
}

local aK=C:new()
V[ay]=aK local aL=function(

aL)
for aM=1,#aL do
aL[aM]:Play()
end end local aM=function()



aL(aI)
ay.Selected=true
aK:changeRendering(true)
aK:update()
aD.Parent=aB
aD.Size=aG
aF:Play()end local aN=function()



aL(aJ)
ay.Selected=false
aD.Parent=nil
aK:changeRendering(false)end


U[ay]=table.freeze{
Unselect=aN,
Select=aM
}

T[ay]=table.freeze{
SelectTabButton=aC,
Container=aD
}

table.insert(S,ay)

u(aC.Activated,function()
ay:Select()
end)

if ay.Selected then
ay:Select()
end

return ay
end

function ag:StartWindow(av)
local aw=av.MinimizeButton
local ax=av.MainFrame
local ay=av.Resizers
local az=av.TopBar

local aA=av.SubTitle
local aB=av.Title

Y=av.Dropdowns
ab=av.MainFrame
ad=av.UIScale
ae=av.Flags

local aC=ax.Size
local aD=0

function ag:MinimizeButton()
if(tick()-aD)<0 then
return false
end

if self.Minimized then
aw.Image="rbxassetid://10734896206"
J(ax,"Size",aC,0.25):Play()
else
aC=ax.Size
aw.Image="rbxassetid://10734924532"
J(ax,"Size",UDim2.fromOffset(ax.Size.X.Offset,az.Size.Y.Offset),0.25):Play()
end

for aE,aF in ay do
aF.Visible=self.Minimized
end

self.Minimized=not self.Minimized
aD=tick()+0.5

return true
end

function ag:GetTitle()
return aB.Text
end

function ag:GetSubTitle()
return aA.Text
end

function ag:SetTitle(aE)
assert(type(aE)=="string",`"Window.SetTitle". 'string' expected, got {typeof(aE)}`)
assert(#aE>0,"\"Window.SetTitle\". the new 'Title' is too short.")

aB.Text=aE
end

function ag:SetSubTitle(aE)
assert(type(aE)=="string",`"Window.SetSubTitle". 'string' expected, got {typeof(aE)}`)
assert(#aE>0,"\"Window.SetSubTitle\". the new 'SubTitle' is too short.")

aA.Text=aE
end

W=E("Frame",I,{
Size=UDim2.new(0,280,1,0),
Position=UDim2.fromScale(1,0),
AnchorPoint=Vector2.new(1,0),
BackgroundTransparency=1,
Elements={
Padding={
PaddingBottom=UDim.new(0,20)
},
ListLayout={
HorizontalAlignment=Enum.HorizontalAlignment.Center,
VerticalAlignment=Enum.VerticalAlignment.Bottom,
SortOrder=Enum.SortOrder.LayoutOrder,
Padding=UDim.new(0,20)
}
}
})

aa=E("TextButton","OutBox",{
Size=UDim2.fromScale(1,1),
BackgroundTransparency=0.3,
AutoButtonColor=false,
Text="",
ThemeTag={
BackgroundColor3="Colors.Buttons.Default"
},
Childs={
ax:FindFirstChildOfClass"UICorner":Clone(),
E("Frame","Template",{
Size=UDim2.new(0.35,60,0.20,80),
Position=UDim2.fromScale(0.5,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
Active=true,
Elements={
Corner=UDim.new(0,6),
Gradient={
Rotation=45,
ThemeTag={
Color="Colors.Background"
}
}
},
Childs={
E("ImageLabel","StripePattern",{
Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,
Image="rbxassetid://2159415882",
ImageTransparency=0.92,
ImageColor3=Color3.fromRGB(255,255,255),
ScaleType=Enum.ScaleType.Tile,
SliceCenter=Rect.new(0,0,64,64),
TileSize=UDim2.fromOffset(28,28),
ZIndex=0,
Elements={
Corner=UDim.new(0,6)
}
}),
E("TextLabel","Title",{
Size=UDim2.new(1,-20,0,20),
TextTruncate=Enum.TextTruncate.AtEnd,
TextSize=10,
Position=UDim2.new(0.5,0,0,28),
AnchorPoint=Vector2.new(0.5,0),
BackgroundTransparency=1,
ThemeTag={
Font="Font.ExtraBold",
TextColor3="Colors.Text.Default"
}
}),
E("TextLabel","Description",{
Position=UDim2.new(0.5,0,0,46),
Size=UDim2.new(1,-20,0,0),
AnchorPoint=Vector2.new(0.5,0),
TextWrapped=true,
TextSize=10,
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
ThemeTag={
TextColor3="Colors.Text.Darker",
Font="Font.Medium"
}
}),
E("Frame","Options",{
Size=UDim2.new(1,-20,0.15,18),
Position=UDim2.new(0.5,0,1,-10),
AnchorPoint=Vector2.new(0.5,1),
BackgroundTransparency=1,
Elements={
Padding={
PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10),
PaddingBottom=UDim.new(0,30),
PaddingTop=UDim.new(0,30)
},
ListLayout={
HorizontalAlignment=Enum.HorizontalAlignment.Right,
VerticalAlignment=Enum.VerticalAlignment.Center,
FillDirection=Enum.FillDirection.Horizontal
}
}
})
}
})
}
})

aa.Template:SetAttribute("OriginalSize",aa.Template.Size)

u(aa.Activated,function()
if Z~=nil and not Z.Closing and not Z.Closed then
Z:Close()
end
end)

ag.StartWindow=nil
end

function ag:DeleteFlags()
return ae()
end

function ag:SetFlag(av,aw)
assert(type(av)=="string",`"Window.SetFlag[param 1]". 'string' expected, got {typeof(av)}`)

if at[typeof(aw)]~=true then
local ax={}

for ay,az in at do
table.insert(ax,ay)
end

return error(`"Window.SetFlag[param 2]". '{table.concat(ax,"', '")}' expected, got {typeof(aw)}`,2)
end

ae[av]=aw
end

function ag:GetFlag(av)
return ae[av]
end

function ag:ReadFile(av)
assert(type(av)=="string",`"Window.ReadFile[param 1]". 'string' expected, got {typeof(av)}`)
av=`{self.ScriptFolder}/{av}`

if f~=nil and(isfile==nil or not isfile(av))then
return f(av)
end
end

function ag:WriteFile(av,aw)
assert(type(av)=="string",`"Window.WriteFile[param 1]". 'string' expected, got {typeof(av)}`)
av=`{self.ScriptFolder}/{av}`

if aw~=nil and type(aw)~="string"then
error(`"Window.WriteFile[param 2]". 'string', or 'nil' expected, got {typeof(aw)}`,2)
end

if aw==nil then
if c~=nil then
c(`{self.ScriptFolder}/{av}`)
return true
end
else
if e~=nil then
z(`{self.ScriptFolder}/{av}`)
return true
end
end

return false
end

function ag:NewMinimizer(av)
local aw=type(av)=="table"and(av[1]or av.KeyCode)or av

if not au(aw)then
error(`"Window.NewMinimizer.KeyCode". 'KeyCode' expected, got {typeof(aw)}`,2)
end

local ax=setmetatable({
KeyCode=aw
},aj)

u(i.InputBegan,function(ay)
if ay.KeyCode==ax.KeyCode then
ag:Minimize()
end
end)

return ax
end

function ag:Dialog(av)
if ab:FindFirstChild("Dialog")then return end
if self.Minimized then
self:MinimizeButton()
end

local aw=av.Title or av.Name or "Dialog"
local ax=av.Content or av.Description or "This is a Dialog"
local ay=av.Options or {}

local aD=V[self]

local aE=E("Frame","DialogFrame",{
Size=UDim2.fromOffset(280,160),
Position=UDim2.fromScale(0.5,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
Active=true,
BackgroundTransparency=1,
Elements={
Corner=UDim.new(0,10),
Gradient={
Rotation=270,
ThemeTag={
Color="Colors.Background"
}
}
},
Childs={
E("TextLabel",{
Size=UDim2.new(1,-20,0,20),
Text=aw,
TextXAlignment=Enum.TextXAlignment.Center,
TextSize=15,
Position=UDim2.new(0.5,0,0,10),
AnchorPoint=Vector2.new(0.5,0),
BackgroundTransparency=1,
ThemeTag={
Font="Font.Bold",
OBJECTS=aD,
TextColor3="Colors.Text.Default"
}
}),
E("TextLabel",{
Size=UDim2.new(1,-30,0,0),
AutomaticSize=Enum.AutomaticSize.Y,
Text=ax,
TextXAlignment=Enum.TextXAlignment.Center,
TextSize=12,
Position=UDim2.new(0.5,0,0,38),
AnchorPoint=Vector2.new(0.5,0),
BackgroundTransparency=1,
TextWrapped=true,
ThemeTag={
Font="Font.Medium",
OBJECTS=aD,
TextColor3="Colors.Text.Dark"
}
})
}
})

local aF=E("Frame","ButtonsHolder",aE,{
Size=UDim2.fromScale(1,0.35),
Position=UDim2.fromScale(0,1),
AnchorPoint=Vector2.new(0,1),
BackgroundTransparency=1,
Elements={
ListLayout={
Padding=UDim.new(0,10),
VerticalAlignment=Enum.VerticalAlignment.Center,
FillDirection=Enum.FillDirection.Horizontal,
HorizontalAlignment=Enum.HorizontalAlignment.Center
}
}
})

local aG=E("Frame","Dialog",I,{
BackgroundTransparency=0.6,
Active=true,
Size=UDim2.new(1,0,1,0),
ThemeTag={
OBJECTS=aD,
BackgroundColor3="Colors.Stroke"
}
})

local aH=ab:FindFirstChildOfClass"UICorner"
if aH then aH:Clone().Parent=aG end

aE.Parent=aG

local aSizeTween=J(aE,"Size",UDim2.fromOffset(280,160),0.2)
aSizeTween:Play()
local aFadeTween=J(aE,"BackgroundTransparency",0,0.15)
aFadeTween:Play()
local aScreenTween=J(aG,"BackgroundTransparency",0.3,0.15)
aScreenTween:Play()

local aI=1
local aJ={}

function aJ:Button(aK)
local aL=aK[1]or aK.Name or aK.Title or""
local aM=aK[2]or aK.Callback or function()end

aI=aI+1
local aN=E("TextButton",{
Size=UDim2.new(1/aI,-(((aI-1)*20)/aI),0,32),
AutoButtonColor=false,
Text=aL,
TextSize=12,
BackgroundTransparency=1,
Elements={
Corner=UDim.new(0,8),
Stroke=Color3.fromRGB(180,180,180)
},
ThemeTag={
Font="Font.Bold",
OBJECTS=aD,
BackgroundColor3="Colors.Buttons.Default",
TextColor3="Colors.Text.Default"
}
})

local aO=J(aN,"BackgroundTransparency",0,0.3)
local aP=J(aN,"BackgroundTransparency",1,0.3)

u(aN.MouseLeave,function()aP:Play()end)
u(aN.MouseEnter,function()aO:Play()end)
u(aN.Activated,function()
aJ.Close(aJ)
aM()
end)

for aQ,aR in aF:GetChildren()do
if aR:IsA"TextButton"then
aR.Size=UDim2.new(1/aI,-(((aI-1)*20)/aI),0,32)
end
end

aN.Parent=aF
end

function aJ:Close()
local aCloseDur=0.2
for aK,aL in aE:GetChildren()do
if aL:IsA("TextLabel")then
J(aL,"TextTransparency",1,aCloseDur):Play()
end
end
for aK,aL in aF:GetChildren()do
if aL:IsA("TextButton")then
J(aL,"TextTransparency",1,aCloseDur):Play()
J(aL,"BackgroundTransparency",1,aCloseDur):Play()
local aM=aL:FindFirstChildWhichIsA"UIStroke"
if aM then
J(aM,"Transparency",1,aCloseDur):Play()
end
end
end
local aN=aE:FindFirstChildWhichIsA"UIStroke"
if aN then
J(aN,"Transparency",1,aCloseDur):Play()
end
local aCloseSize=J(aE,"Size",UDim2.fromOffset(280*1.08,160*1.08),aCloseDur)
aCloseSize:Play()
local aCloseScreen=J(aG,"BackgroundTransparency",1,aCloseDur)
aCloseScreen:Play()
local aCloseFade=J(aE,"BackgroundTransparency",1,aCloseDur)
aCloseFade:Play()
aCloseFade.Completed:Connect(function()
aG:Destroy()
end)
end

for aK,aL in ay do
aJ:Button(aL)
end

return aJ
end

function ag:SetNotifyDefaultIcon(av)
assert(type(av)=="string",`"Window.SetNotifyDefaultIcon[param 1]". 'string' expected, got {typeof(av)}`)

af=av
end

function ag:Notify(av)
if type(av)~="table"then
av={}
end

local aw=av[1]or av.Name or av.Title
local ax=av[2]or av.Content
local ay=av[3]or av.Icon or av.Image
local az=av[4]or av.Duration or av.Countdown or av.Time

if self.NOTIFICATION_GROUP then
if az==nil then az=self.Duration end
if ax==nil then ax=self.Content end
if aw==nil then aw=self.Title end
if ay==nil then ay=self.Icon end
end

assert(type(aw)=="string",`"Window.Notify.Title". 'string' expected, got {typeof(aw)}`)
assert(type(ax)=="string",`"Window.Notify.Content". 'string' expected, got {typeof(aw)}`)
assert(ay==nil or type(ay)=="string",`"Window.Notify.Icon". 'nil' or 'string' expected, got {typeof(ay)}`)

if az~=nil and type(az)~="number"then
error(`"Window.Notify.Time". 'number', or 'nil' expected, got {typeof(az)}`,2)
elseif az==nil then
az=5
end

local aA=E("Frame","Notification",W,{
Size=UDim2.new(0.85,0,0,60),
BackgroundTransparency=1,
AutomaticSize=Enum.AutomaticSize.Y
})

local aB=E("TextButton",aA,{
AutomaticSize=Enum.AutomaticSize.Y,
Size=UDim2.fromScale(1,1),
AutoButtonColor=false,
Text="",
ThemeTag={
BackgroundTransparency="BackgroundTransparency"
},
Elements={
Corner=UDim.new(0,9),
Gradient={
Rotation=45,
ThemeTag={
Color="Colors.Background"
}
}
}
})

local aC=E("UIScale",aA)

local aD=E("Frame","Holder",aB,{
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),
Elements={
ListLayout={
SortOrder=Enum.SortOrder.LayoutOrder,
VerticalAlignment=Enum.VerticalAlignment.Center,
Padding=UDim.new(0,4)
},
Padding={
PaddingBottom=UDim.new(0,8),
PaddingTop=UDim.new(0,8),
PaddingLeft=UDim.new(0,40)
}
}
})

local aE=E("TextLabel",aD,{
Size=UDim2.new(1,0,0,20),
TextTruncate=Enum.TextTruncate.AtEnd,
TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Bottom,
BackgroundTransparency=1,
TextSize=14,
ThemeTag={
TextColor3="Colors.Text.Default",
Font="Font.Bold"
}
})

local aF=E("TextLabel",aD,{
Size=UDim2.new(1,0,0,20),
TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top,
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
TextWrapped=true,
TextSize=12,
ThemeTag={
TextColor3="Colors.Text.Dark",
Font="Font.Normal"
}
})

local aG=E("ImageLabel",aB,{
Size=UDim2.fromOffset(24,24),
Position=UDim2.new(0,8,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
BackgroundTransparency=1,
ThemeTag={
ImageColor3="Colors.Icons"
}
})

local aH=E("TextLabel",aB,{
Size=UDim2.new(0,40,0,16),
Position=UDim2.new(1,-10,0,8),
AnchorPoint=Vector2.new(1,0),
BackgroundTransparency=1,
TextSize=10,
ThemeTag={
TextColor3="Colors.Text.Darker",
Font="Font.Normal"
}
})

local aI=false

local aJ=J(aC,"Scale",1.22,0.35)
local aK=J(aC,"Scale",1.00,0.35)

local aL=setmetatable({
TITLE_LABEL=aE,
DESCRIPTION_LABEL=aF,
VISIBLE_ELEMENT=aA,
DESTROY_ELEMENT=aA,
NOTIFICATION=aB,

Kind="Notification",
Closed=false,
Parent=self
},ai)

function aL:Close()
if self.Closed==true then return end

self:Destroy()
self.Closed=true

local aM=J(aB,"Position",UDim2.fromScale(3,0),0.8)
aM:Play()
aM.Completed:Wait()
aA:Destroy()
end local aM=function()


ay=s:GetIconByName(ay or af)
aG.Image=ay

if not O(ay)then
aG.Visible=false
aD.UIPadding.PaddingLeft=UDim.new(0,15)
end

aB.Position=UDim2.fromScale(3,0)
J(aB,"Position",UDim2.fromScale(0,0),0.35):Play()

aE.Text=aw
aF.Text=ax

local aM=aB.MouseLeave

while az>0 do
aH.Text=Q(az)
if aI==true then aM:Wait()end
az-=task.wait()
end

aL:Close()end


u(aB.MouseButton1Down,function()aJ:Play()aI=true end)
u(aB.MouseLeave,function()aK:Play()aI=false end)

task.defer(aM)

return aL
end

function ag:NewNotifyGroup(av)
local aw=av[1]or av.Name or av.Title
local ax=av[2]or av.Content
local ay=av[3]or av.Icon or av.Image
local az=av[4]or av.Duration or av.Countdown or av.Time

if aw~=nil and type(aw)~="string"then
error(`"Window.NewNotifyGroup.Title". 'string', or 'nil' expected, got {typeof(aw)}`,2)
end

if ax~=nil and type(ax)~="string"then
error(`"Window.NewNotifyGroup.Content". 'string', or 'nil' expected, got {typeof(ax)}`,2)
end

if ay~=nil and type(ay)~="string"then
error(`"Window.NewNotifyGroup.Icon". 'string', or 'nil' expected, got {typeof(ay)}`,2)
end

if az~=nil and type(az)~="number"then
error(`"Window.NewNotifyGroup.Time". 'number', or 'nil' expected, got {typeof(az)}`,2)
end

return{
NOTIFICATION_GROUP=true,
Notify=ag.Notify,

Duration=az,
Content=ax,
Title=aw,
Icon=ay,
}
end

function ag:GetTabByTitle(av)
assert(type(av)=="string",`"Window.GetTabByTitle[param 1]". 'string' expected, got {typeof(av)}`)

for aw=1,#S do
if S[aw].Title==av then
return S[aw]
end
end
end

ag.NewNotificationGroup=ag.NewNotifyGroup
ag.SetDefaultNotifyIcon=SetNotifyDefaultIcon
ag.GetTabByName=ag.GetTabByTitle
ag.Notificafion=ag.Notify

R.Window=ag
end local aa=function(

aa, ab)
local ac=ab.Size.Y.Offset
local ad=UDim2.new(0,aa.TabSize or s.Default.TabSize,1,-ac)
local ae=UDim2.new(1,-ad.X.Offset,1,-ac)

local af=E("ScrollingFrame","TabsScroll",{
AutomaticCanvasSize=Enum.AutomaticSize.Y,
ScrollingDirection=Enum.ScrollingDirection.Y,
Position=UDim2.new(0,0,1,0),
AnchorPoint=Vector2.new(0,1),
ScrollBarThickness=2.2,
BackgroundTransparency=1,
ScrollBarImageTransparency=0.2,
CanvasSize=UDim2.new(),
BorderSizePixel=0,
Size=ad,
ThemeTag={
ScrollBarImageColor3="Colors.ScrollBar"
},
Elements={
Padding={
PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10),
PaddingTop=UDim.new(0,10),
PaddingBottom=UDim.new(0,10)
},
ListLayout={
Padding=UDim.new(0,5)
}
}
})

local ag=E("Frame","Containers",{
Size=ae,
AnchorPoint=Vector2.new(1,1),
Position=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
ClipsDescendants=true
})

return af,ag end


function s:GetIconByName(ab)
if ab==nil then return end
assert(ab,`"Library.GetIconByName". 'string' expected, got {typeof(ab)}`)

if O(ab)or#ab==0 then
return ab
end

local ac=M(ab)

if self.Icons[ac]then
return"rbxassetid://"..self.Icons[ac]
end

for ad,ae in self.Icons do
if ad:find(ac,1,true)then
return"rbxassetid://"..ae
end
end
end

function s:IsValidTheme(ab)
assert(type(ab)=="string",`"Library.IsValidTheme". string extected, got {typeof(ab)}`)

return self.Themes[ab]~=nil
end

function s:GetThemes()
local ab={}
for ac,ad in self.Themes do
table.insert(ab,ac)
end
return ab
end

function s:GetTheme(ab)
assert(ab==nil or type(ab)=="string",`"Library.GetTheme". 'string' expected, got {typeof(ab)}`)

if ab==nil then
return self.CurrentTheme
end

local ac=self.Themes[ab]
assert(ac~=nil,`"Library.GetTheme". theme not found: {ab}`)
return ac
end

function s:SetTheme(ab)
assert(type(ab)=="string",`"Library.SetTheme". string extected, got {typeof(ab)}`)
local ac=self.Themes[ab]
assert(ac,`"Library.SetTheme". theme not found: {ab}`)

self.CurrentTheme=ac
self.WindowSettings.SelectedTheme=ac.Name

C:update(true)
end

function s:SetUIScale(ab)
local ac=B.MIN_SCALE
local ad=B.MAX_SCALE

assert(type(ab)=="number",`"Library.SetUIScale". 'number' expected, got {typeof(ab)}`)
assert(ab>=ac and ab<=ad,`"Library.SetUIScale". Min Scale: {ac}, Max Scale: {ad}`)

I.Scale.Scale=P(ab)
end

function s:GetMaxScale()
return B.MAX_SCALE
end

function s:GetMinScale()
return B.MIN_SCALE
end

function s:GetCurrentTheme()
if not self.LOADED_UI_LIBRARY then
return error("failed to get current theme: UI is not loaded",2)
end
return self.CurrentTheme
end

function s:ForceUpdateTheme()
if self.ThemesObjects then
self.ThemesObjects:update(true)
end
end

function s:SetBackgroundTransparency(ab)
assert(type(ab)=="number",`"Library.SetBackgroundTransparency". 'number' expected, got {typeof(ab)}`)
local ac=self.CurrentTheme
if ac then
ac.BackgroundTransparency=ab
self:ForceUpdateTheme()
end
end

function s:SetFont(ab)
assert(type(ab)=="table",`"Library.SetFont". 'table' expected, got {typeof(ab)}`)
local ac=self.CurrentTheme
if ac and ac.Font then
ac.Font=ab
self:ForceUpdateTheme()
end
end

function s:Destroy()
for ab,ac in self.Connections do
ac:Disconnect()
end

if I and I:GetAttribute"UID"==self.SCREENGUI_UID then
pcall(I.Destroy,I)
end
end

function s:MakeWindow(ab)
if self.LOADED_UI_LIBRARY then
return error("you can create only 1 Window",2)
end

local ac=math.random()
I:SetAttribute("UID",ac)
self.SCREENGUI_UID=ac
I:ClearAllChildren()

local ad=E("UIScale","Scale",I,{
Scale=P(1)
})

local ae={
Title=ab[1]or ab.Name or ab.Title,
SubTitle=ab[2]or ab.SubName or ab.SubTitle,
ScriptFolder=ab[3]or ab.ScriptFolder or ab.FolderName
}

assert(type(ae.Title)=="string",`"Window.Title". 'string' expected, got {typeof(ae.Title)}`)
assert(type(ae.SubTitle)=="string",`"Window.SubTitle". 'string' expected, got {typeof(ae.SubTitle)}`)

if ae.ScriptFolder~=nil and type(ae.ScriptFolder)~="string"then
return error(`"Window.ScriptFolder". 'string', or nil expected, got {typeof(ae.ScriptFolder)}`,2)
end

if ae.ScriptFolder~=nil and string.find(ae.ScriptFolder,"/")then
return error("\"Window.ScriptFolder\" is not valid, unexpected char \"/\"",2)
end

local af=(function()
local af=ae.ScriptFolder
local ag=false

local ah,ai=pcall(function()
return af and k:JSONDecode(f(`{af}/LibrarySettings.json`))
end)

if type(ai)~="table"then
ai={}
end local aj=function()


ag=false

return pcall(function()
return z(`{af}/LibrarySettings.json`,k:JSONEncode(ai))
end)end local ak=function(


ak, al, am)
rawset(ai,al,am)

if af and not ag then
ag=true
task.delay(0.5,aj)
end end


return setmetatable({},{
__newindex=ak,
__index=ai
})
end)()

local ag=(function()
local ag=ae.ScriptFolder
local ah=false

local ai,aj=pcall(function()
return ag and k:JSONDecode(f(`{ag}/ScriptFlags.json`))
end)

if type(aj)~="table"then
aj={}
end local ak=function()


ah=false

return pcall(function()
z(`{ag}/ScriptFlags.json`,k:JSONEncode(aj))
end)end local al=function(


al, am, an)
rawset(aj,am,an)

if ag and not ah then
ah=true
task.delay(0.5,ak)
end end local am=function()



table.clear(aj)
return pcall(function()
return ag and c(`{ag}/ScriptFlags.json`)
end)end


return setmetatable({},{
__newindex=al,
__call=am,
__index=aj
})
end)()

self.ThemesObjects=C
self.WindowSettings=af
self.Flags=ag

self.Icons=(function()
local ah=ae.ScriptFolder

local ai,aj=pcall(function()
return loadstring(f(`{ah}/Icons.lua`))()
end)

if ai and type(aj)=="table"then
return aj
end

local ak=`https://raw.githubusercontent.com/{self.Information.GitHubOwner}`
local al=`{ak}/Library/refs/heads/main/redz-V5-remake/Utils/Icons.lua`
local am local an=function()


return z(`{ah}/Icons.lua`,am)end


local ao,ap=pcall(function()
am=game:HttpGet(al)
return loadstring(am)()
end)

if ao and type(ap)=="table"then
if type(am)=="string"then
pcall(an)
end

return ap
end

return{}
end)()

if type(af.SelectedTheme)=="string"and self:IsValidTheme(af.SelectedTheme)then
self:SetTheme(af.SelectedTheme)
else
self:SetTheme(self.Default.Theme)
end

self.LOADED_UI_LIBRARY=true

local ah=self.Default.UISize

if af and type(af.UISize)=="table"then
local ak,al=unpack(af.UISize)

if type(ak)=="number"and type(al)=="number"then
local am=I.AbsoluteSize
ak=math.clamp(ak,430,1000)
al=math.clamp(al,200,500)
ah=UDim2.fromOffset(ak,al)
end
end

local ak=E("Frame","Window",I,{
Position=UDim2.new(0.5,-ah.X.Offset/2,0.5,-ah.Y.Offset/2),
Active=true,
Size=ah,
BackgroundColor3=Color3.fromRGB(25,25,25),
ThemeTag={
BackgroundTransparency="BackgroundTransparency"
},
Elements={
Corner=UDim.new(0,8),
Gradient={
Rotation=45,
ThemeTag={
Color="Colors.Background"
}
}
}
})

-- Diagonal stripe pattern overlay
local aStripe=E("ImageLabel","StripePattern",ak,{
Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,
Image="rbxassetid://2159415882",
ImageTransparency=0.92,
ImageColor3=Color3.fromRGB(255,255,255),
ScaleType=Enum.ScaleType.Tile,
SliceCenter=Rect.new(0,0,64,64),
TileSize=UDim2.fromOffset(28,28),
ZIndex=0,
Elements={
Corner=UDim.new(0,8)
}
})

u(ak.Destroying,function()
self:Destroy()
end)

u(I:GetAttributeChangedSignal"UID",function()
self:Destroy()
ak:Destroy()
end)

D.Draggable(ak,ad,0.5)

local al=E("Folder","Components",ak)
local am=E("Folder","Dropdowns",I)

local an=E("Frame","TopBar",al,{
Size=UDim2.new(1,0,0,28),
BackgroundTransparency=1
})

local ao=E("TextLabel","Title",an,{
TextXAlignment=Enum.TextXAlignment.Left,
AutomaticSize=Enum.AutomaticSize.XY,
Position=UDim2.new(0,15,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
Text=ae.Title,
TextSize=12,
BackgroundTransparency=1,
ThemeTag={
TextColor3="Colors.Text.Default",
Font="Font.Bold"
},
Childs={
E("TextLabel","SubTitle",{
Size=UDim2.fromScale(0,1),
AutomaticSize="X",
AnchorPoint=Vector2.new(0,1),
Position=UDim2.new(1,5,0.9),
Text=ae.SubTitle,
BackgroundTransparency=1,
TextXAlignment="Left",
TextYAlignment="Bottom",
TextSize=8,
ThemeTag={
TextColor3="Colors.Text.Dark",
Font="Font.Normal"
}
})
}
})

local ap=E("Folder","Buttons",an,{
Childs={
E("ImageButton","Close",{
Size=UDim2.new(0,18,0,18),
Position=UDim2.new(1,-10,0.5),
AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=1,
BackgroundColor3=Color3.fromRGB(255,35,35),
AutoButtonColor=false,
ThemeTag={
Image="Icons.Close"
},
Elements={
Corner=UDim.new(0.2,0)
}
}),
E("ImageButton","Minimize",{
Size=UDim2.new(0,18,0,18),
Position=UDim2.new(1,-35,0.5),
AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=1,
BackgroundColor3=Color3.new(1,1,1),
Image="rbxassetid://10734896206",
AutoButtonColor=false,
Elements={
Corner=UDim.new(0.2,0)
}
})
}
})

local aq=ap.Minimize
local ar=ap.Close

local as=setmetatable(ae,{
__index=R.Window
})

local at,au=aa(af,an)

at.Parent=al
au.Parent=al

local av=table.freeze{
ContainerHolder=au,
TabsContainer=at,
Components=al,
MainFrame=ak
}

function as:GetElements()
return av
end

local aw=E("Frame","ControlWindowSize",ak,{
Size=UDim2.new(0,35,0,35),
Position=ak.Size,
AnchorPoint=Vector2.new(0.8,0.8),
BackgroundTransparency=1,
Active=true,
Elements={
Corner=UDim.new(0,6)
},
ThemeTag={
BackgroundColor3="Colors.OnPrimary"
}
})

local ax=E("Frame","ControlTabsSize",ak,{
Size=UDim2.new(0,16,0.75,-30),
Position=UDim2.new(0,at.Size.X.Offset,0.5,15),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
Active=true,
Elements={
Corner=UDim.new(0,6)
},
ThemeTag={
BackgroundColor3="Colors.OnPrimary"
}
})local ay=function(

ay)
local az=ay:GetAttribute"Resizing"
ay:SetAttribute("Resizing",tick())

if az and(tick()-az)<=0.1 then
return nil
end

J(ay,"BackgroundTransparency",0.5,0.3):Play()
while tick()-ay:GetAttribute"Resizing"<=0.1 do task.wait()end
J(ay,"BackgroundTransparency",1,0.4):Play()end


u(aw:GetPropertyChangedSignal"Position",function()
ay(aw)
local az=aw.Position
ak.Size=az
af.UISize={az.X.Offset,az.Y.Offset}
end)

u(ax:GetPropertyChangedSignal"Position",function()
ay(ax)
local az=ax.Position
at.Size=UDim2.new(0,az.X.Offset,1,-an.Size.Y.Offset)
au.Size=UDim2.new(1,-at.Size.X.Offset,1,-an.Size.Y.Offset)
af.TabSize=az.X.Offset
end)

D.Draggable(aw,ad,0.68,function(az,aA,aB,aC)
return UDim2.fromOffset(math.clamp(aA,430,1000),math.clamp(aC,200,500))
end)

D.Draggable(ax,ad,0.68,function(aA,aB)
return UDim2.new(0,math.clamp(aB,135,210),0.5,15)
end)

local aA={
Title="Hacker Hub",
Content="Do You Want Close This UI?",
Options={
{
Title="Yes",
Callback=function()self:Destroy()end
},
{
Title="No"
}
}
}

u(aq.MouseEnter,function()aq.BackgroundTransparency=0.65 end)
u(aq.MouseLeave,function()aq.BackgroundTransparency=1.00 end)

u(ar.MouseEnter,function()ar.BackgroundTransparency=0.65 end)
u(ar.MouseLeave,function()ar.BackgroundTransparency=1.00 end)

as.SetUIScale=self.SetUIScale
as.SUBTITLE_LABEL=ao.SubTitle
as.TITLE_LABEL=ao

local aB=as:StartWindow{
Resizers={aw,ax},
MinimizeButton=aq,
Dropdowns=am,
MainFrame=ak,
TopBar=an,

SubTitle=ao.SubTitle,
Title=ao,

UIScale=ad,
Flags=ag
}

u(aq.Activated,function()
as:MinimizeButton()
end)

u(ar.Activated,function()
as:Dialog(aA)
end)

return as
end

return s
