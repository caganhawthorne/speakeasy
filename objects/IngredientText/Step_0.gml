// Dynamically change the text based on MakerContains
text = ""
for (i = 0; i < array_length_1d(global.makercontains); i++){
	if global.makercontains[i] != "none" and global.makercontains != "no ice" {
		text += global.makercontains[i]
		text += ", "
	}
}
if text != "" {text = string_delete(text,string_length(text)-1,2)}
