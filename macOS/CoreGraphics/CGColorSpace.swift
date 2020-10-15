
class CGColorSpace : _CFObject {
}

extension CGColorSpace {
  var colorTable: [UInt8]? { get }
}
enum CGColorRenderingIntent : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case defaultIntent
  case absoluteColorimetric
  case relativeColorimetric
  case perceptual
  case saturation
}
enum CGColorSpaceModel : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case monochrome
  case rgb
  case cmyk
  case lab
  case deviceN
  case indexed
  case pattern
  case XYZ
}
var CG_HDR_BT_2100: Int32 { get }
extension CGColorSpace {
  @available(macOS 10.4, *)
  class let genericCMYK: CFString
  @available(macOS 10.11.2, *)
  class let displayP3: CFString
  @available(macOS 10.5, *)
  class let genericRGBLinear: CFString
  @available(macOS 10.5, *)
  class let adobeRGB1998: CFString
  @available(macOS 10.5, *)
  class let sRGB: CFString
  @available(macOS 10.6, *)
  class let genericGrayGamma2_2: CFString
  @available(macOS 10.11, *)
  class let genericXYZ: CFString
  @available(macOS 10.13, *)
  class let genericLab: CFString
  @available(macOS 10.11, *)
  class let acescgLinear: CFString
  @available(macOS 10.11, *)
  class let itur_709: CFString
  @available(macOS 10.11, *)
  class let itur_2020: CFString
  @available(macOS 10.11, *)
  class let rommrgb: CFString
  @available(macOS 10.11, *)
  class let dcip3: CFString
  @available(macOS 11.0, *)
  class let extendedITUR_2020: CFString
  @available(macOS 10.14.3, *)
  class let extendedLinearITUR_2020: CFString
  @available(macOS 11.0, *)
  class let extendedDisplayP3: CFString
  @available(macOS 10.14.3, *)
  class let extendedLinearDisplayP3: CFString
  @available(macOS 10.15.4, *)
  class let displayP3_PQ: CFString
  @available(macOS 10.14.6, *)
  class let displayP3_HLG: CFString
  @available(macOS, introduced: 10.15.4, deprecated: 11.0, message: "No longer supported")
  class let itur_2020_PQ: CFString
  @available(macOS, introduced: 10.15.6, deprecated: 11.0, message: "No longer supported")
  class let itur_2020_HLG: CFString
  @available(macOS, introduced: 10.14.6, deprecated: 10.15.4, message: "No longer supported")
  class let displayP3_PQ_EOTF: CFString
  @available(macOS, introduced: 10.14.6, deprecated: 10.15.4, message: "No longer supported")
  class let itur_2020_PQ_EOTF: CFString
  @available(macOS 10.12, *)
  class let extendedSRGB: CFString
  @available(macOS 10.12, *)
  class let linearSRGB: CFString
  @available(macOS 10.12, *)
  class let extendedLinearSRGB: CFString
  @available(macOS 10.12, *)
  class let extendedGray: CFString
  @available(macOS 10.12, *)
  class let linearGray: CFString
  @available(macOS 10.12, *)
  class let extendedLinearGray: CFString
  @available(macOS 10.0, *)
  /*not inherited*/ init?(calibratedGrayWhitePoint whitePoint: UnsafePointer<CGFloat>, blackPoint: UnsafePointer<CGFloat>?, gamma: CGFloat)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(calibratedRGBWhitePoint whitePoint: UnsafePointer<CGFloat>, blackPoint: UnsafePointer<CGFloat>?, gamma: UnsafePointer<CGFloat>?, matrix: UnsafePointer<CGFloat>?)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(labWhitePoint whitePoint: UnsafePointer<CGFloat>, blackPoint: UnsafePointer<CGFloat>?, range: UnsafePointer<CGFloat>?)
  @available(macOS 10.12, *)
  /*not inherited*/ init?(iccData data: CFTypeRef)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(iccBasedNComponents nComponents: Int, range: UnsafePointer<CGFloat>?, profile: CGDataProvider, alternate: CGColorSpace?)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(indexedBaseSpace baseSpace: CGColorSpace, last lastIndex: Int, colorTable: UnsafePointer<UInt8>)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(patternBaseSpace baseSpace: CGColorSpace?)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(platformColorSpaceRef ref: UnsafeRawPointer)
  @available(macOS 10.2, *)
  /*not inherited*/ init?(name: CFString)
  @available(macOS 10.13, *)
  var __name: CFString? { get }
  @available(macOS 10.6, *)
  var name: CFString? { get }
  @available(macOS 10.2, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.0, *)
  var numberOfComponents: Int { get }
  @available(macOS 10.5, *)
  var model: CGColorSpaceModel { get }
  @available(macOS 10.5, *)
  var baseColorSpace: CGColorSpace? { get }
  @available(macOS 10.5, *)
  var __colorTableCount: Int { get }
  @available(macOS 10.5, *)
  func __unsafeGetColorTable(_ table: UnsafeMutablePointer<UInt8>)
  @available(macOS 10.12, *)
  func copyICCData() -> CFData?
  @available(macOS 10.12, *)
  var isWideGamutRGB: Bool { get }
  @available(macOS, introduced: 10.15, deprecated: 10.15.4, message: "No longer supported")
  func isHDR() -> Bool
  @available(macOS 10.12, *)
  var supportsOutput: Bool { get }
  @available(macOS 10.12, *)
  func copyPropertyList() -> CFPropertyList?
  @available(macOS 10.12, *)
  /*not inherited*/ init?(propertyListPlist plist: CFPropertyList)
  @available(macOS, introduced: 10.5, deprecated: 10.13, message: "No longer supported")
  /*not inherited*/ init?(iccProfileData data: CFData)
  @available(macOS, introduced: 10.5, deprecated: 10.13, message: "No longer supported")
  var iccData: CFData? { get }
}
@available(macOS 11.0, *)
let kCGColorSpaceITUR_2100_PQ: CFString
@available(macOS 11.0, *)
let kCGColorSpaceITUR_2100_HLG: CFString
@available(macOS 10.0, *)
func CGColorSpaceCreateDeviceGray() -> CGColorSpace
@available(macOS 10.0, *)
func CGColorSpaceCreateDeviceRGB() -> CGColorSpace
@available(macOS 10.0, *)
func CGColorSpaceCreateDeviceCMYK() -> CGColorSpace
@available(macOS 11.0, *)
func CGColorSpaceUsesITUR_2100TF(_: CGColorSpace) -> Bool
@available(macOS 10.12, *)
func CGColorSpaceUsesExtendedRange(_ space: CGColorSpace) -> Bool
@available(macOS 11.0, *)
func CGColorSpaceCreateLinearized(_ space: CGColorSpace) -> CGColorSpace?
@available(macOS 11.0, *)
func CGColorSpaceCreateExtended(_ space: CGColorSpace) -> CGColorSpace?
@available(macOS 11.0, *)
func CGColorSpaceCreateExtendedLinearized(_ space: CGColorSpace) -> CGColorSpace?
