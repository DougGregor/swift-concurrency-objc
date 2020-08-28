
extension SCNMaterial {
  struct LightingModel : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension SCNMaterial.LightingModel {
  static let phong: SCNMaterial.LightingModel
  static let blinn: SCNMaterial.LightingModel
  static let lambert: SCNMaterial.LightingModel
  static let constant: SCNMaterial.LightingModel
  @available(macOS 10.12, *)
  static let physicallyBased: SCNMaterial.LightingModel
  @available(macOS 10.15, *)
  static let shadowOnly: SCNMaterial.LightingModel
}
@available(macOS 10.13, *)
enum SCNFillMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case fill
  case lines
}
enum SCNCullMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case back
  case front
}
enum SCNTransparencyMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case aOne
  case rgbZero
  @available(macOS 10.13, *)
  case singleLayer
  @available(macOS 10.13, *)
  case dualLayer
  @available(macOS 10.13, *)
  static var `default`: SCNTransparencyMode { get }
}
@available(macOS 10.11, *)
enum SCNBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case alpha
  case add
  case subtract
  case multiply
  case screen
  case replace
  @available(macOS 10.13, *)
  case max
}
class SCNMaterial : NSObject, SCNAnimatable, SCNShadable, NSCopying, NSSecureCoding {
  var name: String?
  var diffuse: SCNMaterialProperty { get }
  var ambient: SCNMaterialProperty { get }
  var specular: SCNMaterialProperty { get }
  var emission: SCNMaterialProperty { get }
  var transparent: SCNMaterialProperty { get }
  var reflective: SCNMaterialProperty { get }
  var multiply: SCNMaterialProperty { get }
  var normal: SCNMaterialProperty { get }
  @available(macOS 10.13, *)
  var displacement: SCNMaterialProperty { get }
  @available(macOS 10.11, *)
  var ambientOcclusion: SCNMaterialProperty { get }
  @available(macOS 10.11, *)
  var selfIllumination: SCNMaterialProperty { get }
  @available(macOS 10.12, *)
  var metalness: SCNMaterialProperty { get }
  @available(macOS 10.12, *)
  var roughness: SCNMaterialProperty { get }
  @available(macOS 10.15, *)
  var clearCoat: SCNMaterialProperty { get }
  @available(macOS 10.15, *)
  var clearCoatRoughness: SCNMaterialProperty { get }
  @available(macOS 10.15, *)
  var clearCoatNormal: SCNMaterialProperty { get }
  var shininess: CGFloat
  var transparency: CGFloat
  var lightingModel: SCNMaterial.LightingModel
  var isLitPerPixel: Bool
  var isDoubleSided: Bool
  @available(macOS 10.13, *)
  var fillMode: SCNFillMode
  var cullMode: SCNCullMode
  var transparencyMode: SCNTransparencyMode
  var locksAmbientWithDiffuse: Bool
  var writesToDepthBuffer: Bool
  @available(macOS 10.13, *)
  var colorBufferWriteMask: SCNColorMask
  @available(macOS 10.9, *)
  var readsFromDepthBuffer: Bool
  @available(macOS 10.9, *)
  var fresnelExponent: CGFloat
  @available(macOS 10.11, *)
  var blendMode: SCNBlendMode
}
