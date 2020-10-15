
@available(macOS 10.4, *)
class CISampler : NSObject, NSCopying {
  convenience init(image im: CIImage)
  init(image im: CIImage, options dict: [AnyHashable : Any]? = nil)
  var definition: CIFilterShape { get }
  var extent: CGRect { get }
}
@available(macOS 10.4, *)
let kCISamplerAffineMatrix: String
@available(macOS 10.4, *)
let kCISamplerWrapMode: String
@available(macOS 10.4, *)
let kCISamplerFilterMode: String
@available(macOS 10.4, *)
let kCISamplerWrapBlack: String
@available(macOS 10.4, *)
let kCISamplerWrapClamp: String
@available(macOS 10.4, *)
let kCISamplerFilterNearest: String
@available(macOS 10.4, *)
let kCISamplerFilterLinear: String
@available(macOS 10.4, *)
let kCISamplerColorSpace: String
