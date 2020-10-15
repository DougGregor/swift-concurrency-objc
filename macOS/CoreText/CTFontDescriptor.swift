
class CTFontDescriptor : _CFObject {
}
@available(macOS 10.5, *)
func CTFontDescriptorGetTypeID() -> CFTypeID
@available(macOS 10.6, *)
let kCTFontURLAttribute: CFString
@available(macOS 10.5, *)
let kCTFontNameAttribute: CFString
@available(macOS 10.5, *)
let kCTFontDisplayNameAttribute: CFString
@available(macOS 10.5, *)
let kCTFontFamilyNameAttribute: CFString
@available(macOS 10.5, *)
let kCTFontStyleNameAttribute: CFString
@available(macOS 10.5, *)
let kCTFontTraitsAttribute: CFString
@available(macOS 10.5, *)
let kCTFontVariationAttribute: CFString
@available(macOS 10.13, *)
let kCTFontVariationAxesAttribute: CFString
@available(macOS 10.5, *)
let kCTFontSizeAttribute: CFString
@available(macOS 10.5, *)
let kCTFontMatrixAttribute: CFString
@available(macOS 10.5, *)
let kCTFontCascadeListAttribute: CFString
@available(macOS 10.5, *)
let kCTFontCharacterSetAttribute: CFString
@available(macOS 10.5, *)
let kCTFontLanguagesAttribute: CFString
@available(macOS 10.5, *)
let kCTFontBaselineAdjustAttribute: CFString
@available(macOS 10.5, *)
let kCTFontMacintoshEncodingsAttribute: CFString
@available(macOS 10.5, *)
let kCTFontFeaturesAttribute: CFString
@available(macOS 10.5, *)
let kCTFontFeatureSettingsAttribute: CFString
@available(macOS 10.5, *)
let kCTFontFixedAdvanceAttribute: CFString
@available(macOS 10.5, *)
let kCTFontOrientationAttribute: CFString
enum CTFontOrientation : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case `default`
  case horizontal
  case vertical
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontDefaultOrientation: CTFontOrientation { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontHorizontalOrientation: CTFontOrientation { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTFontVerticalOrientation: CTFontOrientation { get }
}
@available(macOS 10.6, *)
let kCTFontFormatAttribute: CFString
enum CTFontFormat : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case unrecognized
  case openTypePostScript
  case openTypeTrueType
  case trueType
  case postScript
  case bitmap
}
@available(macOS 10.6, *)
let kCTFontRegistrationScopeAttribute: CFString
@available(macOS 10.6, *)
let kCTFontPriorityAttribute: CFString
var kCTFontPrioritySystem: Int { get }
var kCTFontPriorityNetwork: Int { get }
var kCTFontPriorityComputer: Int { get }
var kCTFontPriorityUser: Int { get }
var kCTFontPriorityDynamic: Int { get }
var kCTFontPriorityProcess: Int { get }
typealias CTFontPriority = UInt32
@available(macOS 10.6, *)
let kCTFontEnabledAttribute: CFString
@available(macOS 10.8, *)
let kCTFontDownloadableAttribute: CFString
@available(macOS 10.12, *)
let kCTFontDownloadedAttribute: CFString
@available(macOS 10.9, *)
let kCTFontOpticalSizeAttribute: CFString
@available(macOS 10.5, *)
func CTFontDescriptorCreateWithNameAndSize(_ name: CFString, _ size: CGFloat) -> CTFontDescriptor
@available(macOS 10.5, *)
func CTFontDescriptorCreateWithAttributes(_ attributes: CFDictionary) -> CTFontDescriptor
@available(macOS 10.5, *)
func CTFontDescriptorCreateCopyWithAttributes(_ original: CTFontDescriptor, _ attributes: CFDictionary) -> CTFontDescriptor
@available(macOS 10.9, *)
func CTFontDescriptorCreateCopyWithFamily(_ original: CTFontDescriptor, _ family: CFString) -> CTFontDescriptor?
@available(macOS 10.9, *)
func CTFontDescriptorCreateCopyWithSymbolicTraits(_ original: CTFontDescriptor, _ symTraitValue: CTFontSymbolicTraits, _ symTraitMask: CTFontSymbolicTraits) -> CTFontDescriptor?
@available(macOS 10.5, *)
func CTFontDescriptorCreateCopyWithVariation(_ original: CTFontDescriptor, _ variationIdentifier: CFNumber, _ variationValue: CGFloat) -> CTFontDescriptor
@available(macOS 10.5, *)
func CTFontDescriptorCreateCopyWithFeature(_ original: CTFontDescriptor, _ featureTypeIdentifier: CFNumber, _ featureSelectorIdentifier: CFNumber) -> CTFontDescriptor
@available(macOS 10.5, *)
func CTFontDescriptorCreateMatchingFontDescriptors(_ descriptor: CTFontDescriptor, _ mandatoryAttributes: CFSet?) -> CFArray?
@available(macOS 10.5, *)
func CTFontDescriptorCreateMatchingFontDescriptor(_ descriptor: CTFontDescriptor, _ mandatoryAttributes: CFSet?) -> CTFontDescriptor?
enum CTFontDescriptorMatchingState : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case didBegin
  case didFinish
  case willBeginQuerying
  case stalled
  case willBeginDownloading
  case downloading
  case didFinishDownloading
  case didMatch
  case didFailWithError
}
@available(macOS 10.8, *)
let kCTFontDescriptorMatchingSourceDescriptor: CFString
@available(macOS 10.8, *)
let kCTFontDescriptorMatchingDescriptors: CFString
@available(macOS 10.8, *)
let kCTFontDescriptorMatchingResult: CFString
@available(macOS 10.8, *)
let kCTFontDescriptorMatchingPercentage: CFString
@available(macOS 10.8, *)
let kCTFontDescriptorMatchingCurrentAssetSize: CFString
@available(macOS 10.8, *)
let kCTFontDescriptorMatchingTotalDownloadedSize: CFString
@available(macOS 10.8, *)
let kCTFontDescriptorMatchingTotalAssetSize: CFString
@available(macOS 10.8, *)
let kCTFontDescriptorMatchingError: CFString
typealias CTFontDescriptorProgressHandler = (CTFontDescriptorMatchingState, CFDictionary) -> Bool
@available(macOS 10.9, *)
func CTFontDescriptorMatchFontDescriptorsWithProgressHandler(_ descriptors: CFArray, _ mandatoryAttributes: CFSet?, _ progressBlock: @escaping CTFontDescriptorProgressHandler) -> Bool
@available(macOS 10.5, *)
func CTFontDescriptorCopyAttributes(_ descriptor: CTFontDescriptor) -> CFDictionary
@available(macOS 10.5, *)
func CTFontDescriptorCopyAttribute(_ descriptor: CTFontDescriptor, _ attribute: CFString) -> CFTypeRef?
@available(macOS 10.5, *)
func CTFontDescriptorCopyLocalizedAttribute(_ descriptor: CTFontDescriptor, _ attribute: CFString, _ language: UnsafeMutablePointer<Unmanaged<CFString>?>?) -> CFTypeRef?
