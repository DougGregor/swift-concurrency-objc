
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
  @available(watchOS 2.0, *)
  class let genericCMYK: CFString
  @available(watchOS 2.3, *)
  class let displayP3: CFString
  @available(watchOS 2.0, *)
  class let genericRGBLinear: CFString
  @available(watchOS 2.0, *)
  class let adobeRGB1998: CFString
  @available(watchOS 2.0, *)
  class let sRGB: CFString
  @available(watchOS 2.0, *)
  class let genericGrayGamma2_2: CFString
  @available(watchOS 2.0, *)
  class let genericXYZ: CFString
  @available(watchOS 4.0, *)
  class let genericLab: CFString
  @available(watchOS 2.0, *)
  class let acescgLinear: CFString
  @available(watchOS 2.0, *)
  class let itur_709: CFString
  @available(watchOS 2.0, *)
  class let itur_2020: CFString
  @available(watchOS 2.0, *)
  class let rommrgb: CFString
  @available(watchOS 2.0, *)
  class let dcip3: CFString
  @available(watchOS 7.0, *)
  class let extendedITUR_2020: CFString
  @available(watchOS 5.3, *)
  class let extendedLinearITUR_2020: CFString
  @available(watchOS 7.0, *)
  class let extendedDisplayP3: CFString
  @available(watchOS 5.3, *)
  class let extendedLinearDisplayP3: CFString
  @available(watchOS 6.4, *)
  class let displayP3_PQ: CFString
  @available(watchOS 5.6, *)
  class let displayP3_HLG: CFString
  @available(watchOS, introduced: 6.4, deprecated: 7.0, message: "No longer supported")
  class let itur_2020_PQ: CFString
  @available(watchOS, introduced: 5.6, deprecated: 7.0, message: "No longer supported")
  class let itur_2020_HLG: CFString
  @available(watchOS, introduced: 5.6, deprecated: 6.4, message: "No longer supported")
  class let displayP3_PQ_EOTF: CFString
  @available(watchOS, introduced: 5.6, deprecated: 6.4, message: "No longer supported")
  class let itur_2020_PQ_EOTF: CFString
  @available(watchOS 3.0, *)
  class let extendedSRGB: CFString
  @available(watchOS 3.0, *)
  class let linearSRGB: CFString
  @available(watchOS 3.0, *)
  class let extendedLinearSRGB: CFString
  @available(watchOS 3.0, *)
  class let extendedGray: CFString
  @available(watchOS 3.0, *)
  class let linearGray: CFString
  @available(watchOS 3.0, *)
  class let extendedLinearGray: CFString
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(calibratedGrayWhitePoint whitePoint: UnsafePointer<CGFloat>, blackPoint: UnsafePointer<CGFloat>?, gamma: CGFloat)
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(calibratedRGBWhitePoint whitePoint: UnsafePointer<CGFloat>, blackPoint: UnsafePointer<CGFloat>?, gamma: UnsafePointer<CGFloat>?, matrix: UnsafePointer<CGFloat>?)
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(labWhitePoint whitePoint: UnsafePointer<CGFloat>, blackPoint: UnsafePointer<CGFloat>?, range: UnsafePointer<CGFloat>?)
  @available(watchOS 3.0, *)
  /*not inherited*/ init?(iccData data: CFTypeRef)
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(iccBasedNComponents nComponents: Int, range: UnsafePointer<CGFloat>?, profile: CGDataProvider, alternate: CGColorSpace?)
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(indexedBaseSpace baseSpace: CGColorSpace, last lastIndex: Int, colorTable: UnsafePointer<UInt8>)
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(patternBaseSpace baseSpace: CGColorSpace?)
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(platformColorSpaceRef ref: UnsafeRawPointer)
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(name: CFString)
  @available(watchOS 4.0, *)
  var __name: CFString? { get }
  @available(watchOS 3.0, *)
  var name: CFString? { get }
  @available(watchOS 2.0, *)
  class var typeID: CFTypeID { get }
  @available(watchOS 2.0, *)
  var numberOfComponents: Int { get }
  @available(watchOS 2.0, *)
  var model: CGColorSpaceModel { get }
  @available(watchOS 2.0, *)
  var baseColorSpace: CGColorSpace? { get }
  @available(watchOS 2.0, *)
  var __colorTableCount: Int { get }
  @available(watchOS 2.0, *)
  func __unsafeGetColorTable(_ table: UnsafeMutablePointer<UInt8>)
  @available(watchOS 3.0, *)
  func copyICCData() -> CFData?
  @available(watchOS 3.0, *)
  var isWideGamutRGB: Bool { get }
  @available(watchOS, introduced: 6.0, deprecated: 6.4, message: "No longer supported")
  func isHDR() -> Bool
  @available(watchOS 3.0, *)
  var supportsOutput: Bool { get }
  @available(watchOS 3.0, *)
  func copyPropertyList() -> CFPropertyList?
  @available(watchOS 3.0, *)
  /*not inherited*/ init?(propertyListPlist plist: CFPropertyList)
  @available(watchOS, introduced: 2.0, deprecated: 4.0, message: "No longer supported")
  /*not inherited*/ init?(iccProfileData data: CFData)
  @available(watchOS, introduced: 2.0, deprecated: 4.0, message: "No longer supported")
  var iccData: CFData? { get }
}
@available(watchOS 7.0, *)
let kCGColorSpaceITUR_2100_PQ: CFString
@available(watchOS 7.0, *)
let kCGColorSpaceITUR_2100_HLG: CFString
@available(watchOS 2.0, *)
func CGColorSpaceCreateDeviceGray() -> CGColorSpace
@available(watchOS 2.0, *)
func CGColorSpaceCreateDeviceRGB() -> CGColorSpace
@available(watchOS 2.0, *)
func CGColorSpaceCreateDeviceCMYK() -> CGColorSpace
@available(watchOS 7.0, *)
func CGColorSpaceUsesITUR_2100TF(_: CGColorSpace) -> Bool
@available(watchOS 3.0, *)
func CGColorSpaceUsesExtendedRange(_ space: CGColorSpace) -> Bool
@available(watchOS 7.0, *)
func CGColorSpaceCreateLinearized(_ space: CGColorSpace) -> CGColorSpace?
@available(watchOS 7.0, *)
func CGColorSpaceCreateExtended(_ space: CGColorSpace) -> CGColorSpace?
@available(watchOS 7.0, *)
func CGColorSpaceCreateExtendedLinearized(_ space: CGColorSpace) -> CGColorSpace?
