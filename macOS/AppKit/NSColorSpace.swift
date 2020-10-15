
extension NSColorSpace {
  enum Model : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case gray
    case rgb
    case cmyk
    case lab
    case deviceN
    case indexed
    case patterned
  }
}
class NSColorSpace : NSObject, NSSecureCoding {
  init?(iccProfileData iccData: Data)
  var iccProfileData: Data? { get }
  init?(colorSyncProfile prof: UnsafeMutableRawPointer)
  var colorSyncProfile: UnsafeMutableRawPointer? { get }
  @available(macOS 10.5, *)
  init?(cgColorSpace: CGColorSpace)
  @available(macOS 10.5, *)
  var cgColorSpace: CGColorSpace? { get }
  var numberOfColorComponents: Int { get }
  var colorSpaceModel: NSColorSpace.Model { get }
  var localizedName: String? { get }
  @available(macOS 10.5, *)
  class var sRGB: NSColorSpace { get }
  @available(macOS 10.6, *)
  class var genericGamma22Gray: NSColorSpace { get }
  @available(macOS 10.12, *)
  class var extendedSRGB: NSColorSpace { get }
  @available(macOS 10.12, *)
  class var extendedGenericGamma22Gray: NSColorSpace { get }
  @available(macOS 10.12, *)
  class var displayP3: NSColorSpace { get }
  @available(macOS 10.5, *)
  class var adobeRGB1998: NSColorSpace { get }
  class var genericRGB: NSColorSpace { get }
  class var genericGray: NSColorSpace { get }
  class var genericCMYK: NSColorSpace { get }
  class var deviceRGB: NSColorSpace { get }
  class var deviceGray: NSColorSpace { get }
  class var deviceCMYK: NSColorSpace { get }
  @available(macOS 10.6, *)
  class func availableColorSpaces(with model: NSColorSpace.Model) -> [NSColorSpace]
}
