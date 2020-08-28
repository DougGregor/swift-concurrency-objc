
let kMACaptionAppearanceSettingsChangedNotification: CFString
@available(macOS 10.9, *)
enum MACaptionAppearanceDomain : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case `default`
  case user
}
@available(macOS 10.9, *)
enum MACaptionAppearanceDisplayType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case forcedOnly
  case automatic
  case alwaysOn
}
@available(macOS 10.9, *)
enum MACaptionAppearanceBehavior : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case useValue
  case useContentIfAvailable
}
@available(macOS 10.9, *)
enum MACaptionAppearanceFontStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case `default`
  case monospacedWithSerif
  case proportionalWithSerif
  case monospacedWithoutSerif
  case proportionalWithoutSerif
  case casual
  case cursive
  case smallCapital
}
@available(macOS 10.9, *)
enum MACaptionAppearanceTextEdgeStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case undefined
  case none
  case raised
  case depressed
  case uniform
  case dropShadow
}
@available(macOS 10.9, *)
let MAMediaCharacteristicDescribesMusicAndSoundForAccessibility: CFString
@available(macOS 10.9, *)
let MAMediaCharacteristicTranscribesSpokenDialogForAccessibility: CFString
func MACaptionAppearanceDidDisplayCaptions(_ strings: CFArray)
@available(macOS 10.9, *)
func MACaptionAppearanceAddSelectedLanguage(_ domain: MACaptionAppearanceDomain, _ language: CFString) -> Bool
@available(macOS 10.9, *)
func MACaptionAppearanceCopySelectedLanguages(_ domain: MACaptionAppearanceDomain) -> Unmanaged<CFArray>
@available(macOS 10.9, *)
func MACaptionAppearanceGetDisplayType(_ domain: MACaptionAppearanceDomain) -> MACaptionAppearanceDisplayType
@available(macOS 10.9, *)
func MACaptionAppearanceSetDisplayType(_ domain: MACaptionAppearanceDomain, _ displayType: MACaptionAppearanceDisplayType)
@available(macOS 10.9, *)
func MACaptionAppearanceCopyPreferredCaptioningMediaCharacteristics(_ domain: MACaptionAppearanceDomain) -> Unmanaged<CFArray>
@available(macOS 10.9, *)
func MACaptionAppearanceCopyForegroundColor(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>?) -> Unmanaged<CGColor>
@available(macOS 10.9, *)
func MACaptionAppearanceCopyBackgroundColor(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>?) -> Unmanaged<CGColor>
@available(macOS 10.9, *)
func MACaptionAppearanceCopyWindowColor(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>?) -> Unmanaged<CGColor>
@available(macOS 10.9, *)
func MACaptionAppearanceGetForegroundOpacity(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>?) -> CGFloat
@available(macOS 10.9, *)
func MACaptionAppearanceGetBackgroundOpacity(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>?) -> CGFloat
@available(macOS 10.9, *)
func MACaptionAppearanceGetWindowOpacity(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>?) -> CGFloat
@available(macOS 10.9, *)
func MACaptionAppearanceGetWindowRoundedCornerRadius(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>?) -> CGFloat
@available(macOS 10.9, *)
func MACaptionAppearanceCopyFontDescriptorForStyle(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>?, _ fontStyle: MACaptionAppearanceFontStyle) -> Unmanaged<CTFontDescriptor>
@available(macOS 10.9, *)
func MACaptionAppearanceGetRelativeCharacterSize(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>?) -> CGFloat
@available(macOS 10.9, *)
func MACaptionAppearanceGetTextEdgeStyle(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>?) -> MACaptionAppearanceTextEdgeStyle
