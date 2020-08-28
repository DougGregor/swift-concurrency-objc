
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is no longer supported as it does not seem to be used in Java 8+. It may be removed in a future version of macOS.")
func JRSCopyOSName() -> UnsafeMutablePointer<CChar>!
@available(macOS, introduced: 10.10, deprecated: 11.0)
func JRSCopyOSVersion() -> UnsafeMutablePointer<CChar>!
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is longer supported as it does not seem to be used in Java 7+. It may be removed in a future version of macOS.")
func JRSCopyOSJavaSupportVersion() -> UnsafeMutablePointer<CChar>!
