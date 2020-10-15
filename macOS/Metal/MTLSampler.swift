
@available(macOS 10.11, *)
enum MTLSamplerMinMagFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case nearest
  case linear
}
@available(macOS 10.11, *)
enum MTLSamplerMipFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case notMipmapped
  case nearest
  case linear
}
@available(macOS 10.11, *)
enum MTLSamplerAddressMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case clampToEdge
  @available(macOS 10.11, *)
  case mirrorClampToEdge
  case `repeat`
  case mirrorRepeat
  case clampToZero
  @available(macOS 10.12, *)
  case clampToBorderColor
}
@available(macOS 10.12, *)
enum MTLSamplerBorderColor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case transparentBlack
  case opaqueBlack
  case opaqueWhite
}
@available(macOS 10.11, *)
class MTLSamplerDescriptor : NSObject, NSCopying {
  var minFilter: MTLSamplerMinMagFilter
  var magFilter: MTLSamplerMinMagFilter
  var mipFilter: MTLSamplerMipFilter
  var maxAnisotropy: Int
  var sAddressMode: MTLSamplerAddressMode
  var tAddressMode: MTLSamplerAddressMode
  var rAddressMode: MTLSamplerAddressMode
  @available(macOS 10.12, *)
  var borderColor: MTLSamplerBorderColor
  var normalizedCoordinates: Bool
  var lodMinClamp: Float
  var lodMaxClamp: Float
  @available(macOS 11.0, *)
  var lodAverage: Bool
  @available(macOS 10.11, *)
  var compareFunction: MTLCompareFunction
  @available(macOS 10.13, *)
  var supportArgumentBuffers: Bool
  var label: String?
}
@available(macOS 10.11, *)
protocol MTLSamplerState : NSObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
