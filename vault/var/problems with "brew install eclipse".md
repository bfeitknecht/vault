

[[var]]
### Problem:

- when i install eclipse using homebrew, it displays "NewApplication" in the top left as app name
- when i open the app, the splash screen is inverted on on its axis




bf@mbp ~> rm -rf /Applications/Eclipse\ Java.app
bf@mbp ~> rm -rf eclipse-workspace/
bf@mbp ~> brew uninstall --cask eclipse-java
bf@mbp ~> rm -rf .eclipse/
bf@mbp ~> cd Library/Preferences/
bf@mbp ~/L/Preferences> rm -rf epp.package.java.plist 
	(bf@mbp ~/L/Preferences> rm -rf epp.package.jee.plist)
	(bf@mbp ~/L/Preferences> rm -rf epp.package.committers.plist)
bf@mbp ~/L/Preferences> cd ..
bf@mbp ~/Library> rm -rf Saved\ Application\ State/epp.package.java.savedState/
	(bf@mbp ~/Library> rm -rf Saved\ Application\ State/epp.package.committers.savedState/)





