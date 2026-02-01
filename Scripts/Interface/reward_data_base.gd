extends Node

const ICON_PATH = "res://Bilder/Items/"

const REWARDS = {
	
	
	
	# BOOTS
		"Crocs1": {
		"icon": ICON_PATH + "Crocs.png",
		"displayname": "Crocs im Sportmodus",
		"detail": "Crocs die im Sportmodus sind, gewähren mehr Lauftempo! +10 Lauftempo",
		"level": "Level: 1",
		"prerequisite": [],
		"type": "boots"
	},
		"Crocs2": {
		"icon": ICON_PATH + "Crocs.png",
		"displayname": "Crocs im Sportmodus",
		"detail": "Crocs die im Sportmodus sind, gewähren mehr Lauftempo! +10 Lauftempo",
		"level": "Level: 2",
		"prerequisite": ["Crocs1"],
		"type": "boots"
	},
	
	
	
	# WAFFEN
"M110Gewehr": {
		"icon": ICON_PATH + "M110Gewehr.png",
		"displayname": "M110 Marksmanrifle",
		"detail": "Ein verbessertes Gewehr mit einem höherem Kaliber und mehr Munition! +5 Kugeln, +1 Durschschlagskraft, +50 Kugelgeschwindigkeit & +5 Schaden",
		"level": "Entwicklung!",
		"prerequisite": ["Hohlspitz2", "LargeMag2", "RedMag2"],
		"type": "waffe",
	},
	#"Hohlspitz2","LargeMag2","RedMag2"
	
	# CONTAINER
	"Herz1": {
	"icon": ICON_PATH + "Herz.png",
		"displayname": "Herz Kontainer",
		"detail": "Ein weiteres Herz, erhöht das maximale Leben! +20 Leben",
		"level": "Level: 1",
		"prerequisite": [],
		"type": "container",
	},
	"Herz2": {
		"icon": ICON_PATH + "Herz.png",
		"displayname": "Herz Kontainer",
		"detail": "Ein weiteres Herz, erhöht das maximale Leben! +20 Leben",
		"level": "Level: 1",
		"prerequisite": ["Herz1"],
		"type": "container",
	},
	
	
	
	# UPGRADES
	"Hohlspitz1": {
		"icon": ICON_PATH + "Hohlspitzgeschoss.png",
		"displayname": "Hohlspitzgeschoss",
		"detail": "Ein verbessertes Geschoss! Wird beim Jagen verwendet! +5 Schaden",
		"level": "Level: 1",
		"prerequisite": [],
		"type": "upgrade",
	},
		"Hohlspitz2": {
		"icon": ICON_PATH + "Hohlspitzgeschoss.png",
		"displayname": "Hohlspitzgeschoss",
		"detail": "Ein verbessertes Geschoss! Wird beim Jagen verwendet! +5 Schaden",
		"level": "Level: 2",
		"prerequisite": ["Hohlspitz1"],
		"type": "upgrade",
	},
	"LargeMag1": {
		"icon": ICON_PATH + "Large_Magazine.png.png",
		"displayname": "Größeres Magazin",
		"detail": "Ein größeres Magazin, erhöht die Anzahl der Kugeln! +5 Kugeln",
		"level": "Level: 1",
		"prerequisite": [],
		"type": "upgrade",
	},
	"LargeMag2": {
		"icon": ICON_PATH + "Large_Magazine.png.png",
		"displayname": "Größeres Magazin",
		"detail": "Ein größeres Magazin, erhöht die Anzahl der Kugeln! +5 Kugeln",
		"level": "Level: 2",
		"prerequisite": ["LargeMag1"],
		"type": "upgrade",
	},
	"TapedMag1": {
		"icon": ICON_PATH + "Magazine_Taped.png.png",
		"displayname": "Geklebtes Magazin",
		"detail": "Ein zusammen geklebtes Magazin, verringert die Nachladegeschwindigkeit! -0.25 Sekunden",
		"level": "Level: 1",
		"prerequisite": [],
		"type": "upgrade",
	},
	"TapedMag2": {
		"icon": ICON_PATH + "Magazine_Taped.png.png",
		"displayname": "Größeres Magazin",
		"detail": "Ein zusammen geklebtes Magazin, verringert die Nachladegeschwindigkeit! -0.25 Sekunden",
		"level": "Level: 2",
		"prerequisite": ["TapedMag1"],
		"type": "upgrade",
	},
	"RedMag1": {
		"icon": ICON_PATH + "Magazine_rot_morePEN.png",
		"displayname": "Panzerbrechende Kugeln",
		"detail": "Panzerbrechende Kugeln, sie sorgen für mehr Durchschlagskraft! +1 Durchschlagskraft",
		"level": "Level: 1",
		"prerequisite": [],
		"type": "upgrade",
	},
	"RedMag2": {
		"icon": ICON_PATH + "Magazine_rot_morePEN.png",
		"displayname": "Panzerbrechende Kugeln",
		"detail": "Panzerbrechende Kugeln, sie sorgen für mehr Durschschlagskraft! +1 Durchschlagskraft",
		"level": "Level: 2",
		"prerequisite": ["RedMag1"],
		"type": "upgrade",
	},
	"MAX": {
		"icon": ICON_PATH + "Herz.png",
		"displayname": "MAXIMALE UPGRADES ERREICHT!",
		"detail": "",
		"level": "Level: MAX",
		"prerequisite": ["RedMag1"],
		"type": "MAX",
	},
}
