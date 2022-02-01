cask "justinmind" do
	# url is https://download.justinmind.com/Justinmind_Prototyper_MacOS.dmg
	version "9.6.0"
	sha256 :no_check

	url "https://download.justinmind.com/Justinmind_Prototyper_MacOS.dmg"
	name "Justinmind"
	desc "A free design and prototyping tool for web and mobile apps."
	homepage "https://www.justinmind.com"

	livecheck do
		skip "No version number is available on the Justinmind website."
	end

	auto_updates true

	app "Justinmind.app"
end