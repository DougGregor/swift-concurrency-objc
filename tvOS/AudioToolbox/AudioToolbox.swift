
var AUDIO_TOOLBOX_VERSION: Int32 { get }
@available(tvOS 9.0, *)
func CopyNameFromSoundBank(_ inURL: CFURL, _ outName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(tvOS 9.0, *)
func CopyInstrumentInfoFromSoundBank(_ inURL: CFURL, _ outInstrumentInfo: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
var kInstrumentInfoKey_Name: String { get }
var kInstrumentInfoKey_MSB: String { get }
var kInstrumentInfoKey_LSB: String { get }
var kInstrumentInfoKey_Program: String { get }
