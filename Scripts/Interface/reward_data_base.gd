extends Node

const ICON_PATH = "res://Bilder/Items/"

const REWARDS = {
	"Crocs1": {
		"icon": ICON_PATH + "Crocs.png",
		"displayname": "Crocs im Sportmodus",
		"detail": "Crocs die im Sportmodus sind, sie gewähren mehr Lauftempo!",
		"level": "Level: 1",
		"prerequisite": [],
		"type": "boots"
	},
"M110Gewehr": {
		"icon": ICON_PATH + "M110Gewehr.png",
		"displayname": "M110 Marksmanrifle",
		"detail": "Ein verbessertes Gewehr mit einem höherem Kaliber und mehr Munition!",
		"level": "Level: MAX",
		"prerequisite": ["RedMag1","Hohlspitz2","LargeMag1"],
		"type": "waffe",
	},
	"Herz1": {
		"icon": ICON_PATH + "Herz.png",
		"displayname": "Herz Kontainer",
		"detail": "Ein weiteres Herz, erhöht das maximale Leben!",
		"level": "Level: 1",
		"prerequisite": [],
		"type": "container",
	},
}
