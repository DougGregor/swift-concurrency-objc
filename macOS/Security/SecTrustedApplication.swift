
func SecTrustedApplicationGetTypeID() -> CFTypeID
@available(macOS, introduced: 10.0, deprecated: 10.15, message: "No longer supported")
func SecTrustedApplicationCreateFromPath(_ path: UnsafePointer<CChar>?, _ app: UnsafeMutablePointer<SecTrustedApplication?>) -> OSStatus
@available(macOS, introduced: 10.0, deprecated: 10.15, message: "No longer supported")
func SecTrustedApplicationCopyData(_ appRef: SecTrustedApplication, _ data: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(macOS, introduced: 10.0, deprecated: 10.15, message: "No longer supported")
func SecTrustedApplicationSetData(_ appRef: SecTrustedApplication, _ data: CFData) -> OSStatus
