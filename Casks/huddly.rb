cask "huddly" do
	version "3.1.1"
	sha256 :no_check

	url "https://app.huddly.com/download/latest/osx"
	name "Huddly"
	desc "The companion app for the smartest video conference camera out there."
	homepage "https://www.huddly.com"

	livecheck do
		skip "No version number is available on the Huddly website."
	end

	auto_updates true

	app "Huddly.app"
end