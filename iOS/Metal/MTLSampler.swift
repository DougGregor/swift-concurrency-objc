
@available(iOS 8.0, *)
enum MTLSamplerMinMagFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case nearest
  case linear
}
@available(iOS 8.0, *)
enum MTLSamplerMipFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case notMipmapped
  case nearest
  case linear
}
@available(iOS 8.0, *)
enum MTLSamplerAddressMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case clampToEdge
  @available(iOS 14.0, *)
  case mirrorClampToEdge
  case `repeat`
  case mirrorRepeat
  case clampToZero
  @available(iOS 14.0, *)
  case clampToBorderColor
}
@available(iOS 14.0, *)
enum MTLSamplerBorderColor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case transparentBlack
  case opaqueBlack
  case opaqueWhite
}
@available(iOS 8.0, *)
class MTLSamplerDescriptor : NSObject, NSCopying {
  var minFilter: MTLSamplerMinMagFilter
  var magFilter: MTLSamplerMinMagFilter
  var mipFilter: MTLSamplerMipFilter
  var maxAnisotropy: Int
  var sAddressMode: MTLSamplerAddressMode
  var tAddressMode: MTLSamplerAddressMode
  var rAddressMode: MTLSamplerAddressMode
  @available(iOS 14.0, *)
  var borderColor: MTLSamplerBorderColor
  var normalizedCoordinates: Bool
  var lodMinClamp: Float
  var lodMaxClamp: Float
  @available(iOS 9.0, *)
  var lodAverage: Bool
  @available(iOS 9.0, *)
  var compareFunction: MTLCompareFunction
  @available(iOS 11.0, *)
  var supportArgumentBuffers: Bool
  var label: String?
}
@available(iOS 8.0, *)
protocol MTLSamplerState : NSObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
