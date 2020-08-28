
@available(macOS 10.1, *)
func SCPreferencesPathCreateUniqueChild(_ prefs: SCPreferences, _ prefix: CFString) -> CFString?
@available(macOS 10.1, *)
func SCPreferencesPathGetValue(_ prefs: SCPreferences, _ path: CFString) -> CFDictionary?
@available(macOS 10.1, *)
func SCPreferencesPathGetLink(_ prefs: SCPreferences, _ path: CFString) -> CFString?
@available(macOS 10.1, *)
func SCPreferencesPathSetValue(_ prefs: SCPreferences, _ path: CFString, _ value: CFDictionary) -> Bool
@available(macOS 10.1, *)
func SCPreferencesPathSetLink(_ prefs: SCPreferences, _ path: CFString, _ link: CFString) -> Bool
@available(macOS 10.1, *)
func SCPreferencesPathRemoveValue(_ prefs: SCPreferences, _ path: CFString) -> Bool
