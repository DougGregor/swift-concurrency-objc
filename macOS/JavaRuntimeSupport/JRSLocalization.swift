
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is no longer supported as it does not seem to be used in Java 8+. It may be removed in a future version of macOS.")
func JRSCopyPrimaryLanguage() -> UnsafeMutablePointer<CChar>!
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is no longer supported as it does not seem to be used in Java 8+. It may be removed in a future version of macOS.")
func JRSCopyCanonicalLanguageForPrimaryLanguage(_ primaryLanguage: UnsafePointer<CChar>!) -> UnsafeMutablePointer<CChar>!
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is no longer supported as it does not seem to be used in Java 8+. It may be removed in a future version of macOS.")
func JRSSetDefaultLocalization(_ primaryLanguage: UnsafePointer<CChar>!)
