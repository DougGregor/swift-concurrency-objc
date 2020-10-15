
@available(macOS 10.1, *)
func DHCPClientPreferencesSetApplicationOptions(_ applicationID: CFString, _ options: UnsafePointer<UInt8>?, _ count: CFIndex) -> Bool
@available(macOS 10.1, *)
func DHCPClientPreferencesCopyApplicationOptions(_ applicationID: CFString, _ count: UnsafeMutablePointer<CFIndex>) -> UnsafeMutablePointer<UInt8>?
