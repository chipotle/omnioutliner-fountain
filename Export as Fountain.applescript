use scripting additionsset myScript to "var topics = new Array();
var indent = '#';

rootItem.descendants.forEach(function (item) {
	itemString = indent.repeat(item.level) + ' ' + item.topic;
	topics.push(itemString);
	if (item.note) {
		topics.push('= ' + item.note);
	}
});

topics.join('\\n\\n');"tell application "OmniOutliner"	set myFountainFile to evaluate javascript myScript	set myName to name of front documentend tell-- set the clipboard to myFountainFiledisplay dialog ¬	"Export Fountain text to…" buttons {"Cancel", "Clipboard", "File"} ¬	default button "Clipboard" cancel button "Cancel"set desiredOutput to button returned of resultif desiredOutput is "Clipboard" then	set the clipboard to myFountainFileelse if desiredOutput is "File" then	set theFilePath to ¬		choose file name with prompt "Save the file as:" default name myName & ".fountain"	set fileStatus to writeTextToFile(myFountainFile, theFilePath)	if fileStatus is false then		display dialog ("File write failed.") buttons {"OK"} with icon stop	end ifend if-- modified from Mac Automation Scripting Guide at https://developer.apple.com/on writeTextToFile(theText, theFile)	try		set theFile to theFile as string		set theOpenedFile to open for access file theFile with write permission		set eof of theOpenedFile to 0		write theText to theOpenedFile starting at eof as «class utf8»		close access theOpenedFile		return true			on error		try			close access file theFile		end try		return false	end tryend writeTextToFile