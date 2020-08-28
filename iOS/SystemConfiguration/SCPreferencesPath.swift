
func SCPreferencesPathCreateUniqueChild(_ prefs: SCPreferences, _ prefix: CFString) -> CFString?
func SCPreferencesPathGetValue(_ prefs: SCPreferences, _ path: CFString) -> CFDictionary?
func SCPreferencesPathGetLink(_ prefs: SCPreferences, _ path: CFString) -> CFString?
func SCPreferencesPathSetValue(_ prefs: SCPreferences, _ path: CFString, _ value: CFDictionary) -> Bool
func SCPreferencesPathSetLink(_ prefs: SCPreferences, _ path: CFString, _ link: CFString) -> Bool
func SCPreferencesPathRemoveValue(_ prefs: SCPreferences, _ path: CFString) -> Bool
