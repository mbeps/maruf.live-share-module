#^ DEPENDENCIES
function title() {
	# clear
	echo $1
}

function installExtensions() {
	extensions=$1
	for extension in "${extensions[@]}"; do
		code --install-extension $extension
	done
}

function liveCoding() {
	title "Live Coding"
	
	extensions=(
		"ms-vsliveshare.vsliveshare" 					# Live Share
		"ms-vsliveshare.vsliveshare-audio" 				# Live Share Audio
		"lostintangent.vsls-whiteboard" 				# Live Share Whiteboard
	)
	installExtensions "${extensions[@]}"
}