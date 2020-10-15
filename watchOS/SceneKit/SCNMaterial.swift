
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
  @available(watchOS 3.0, *)
  static let physicallyBased: SCNMaterial.LightingModel
  @available(watchOS 6.0, *)
  static let shadowOnly: SCNMaterial.LightingModel
}
@available(watchOS 4.0, *)
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
  @available(watchOS 4.0, *)
  case singleLayer
  @available(watchOS 4.0, *)
  case dualLayer
  @available(watchOS 4.0, *)
  static var `default`: SCNTransparencyMode { get }
}
@available(watchOS 2.0, *)
enum SCNBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case alpha
  case add
  case subtract
  case multiply
  case screen
  case replace
  @available(watchOS 4.0, *)
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
  @available(watchOS 4.0, *)
  var displacement: SCNMaterialProperty { get }
  @available(watchOS 2.0, *)
  var ambientOcclusion: SCNMaterialProperty { get }
  @available(watchOS 2.0, *)
  var selfIllumination: SCNMaterialProperty { get }
  @available(watchOS 3.0, *)
  var metalness: SCNMaterialProperty { get }
  @available(watchOS 3.0, *)
  var roughness: SCNMaterialProperty { get }
  @available(watchOS 6.0, *)
  var clearCoat: SCNMaterialProperty { get }
  @available(watchOS 6.0, *)
  var clearCoatRoughness: SCNMaterialProperty { get }
  @available(watchOS 6.0, *)
  var clearCoatNormal: SCNMaterialProperty { get }
  var shininess: CGFloat
  var transparency: CGFloat
  var lightingModel: SCNMaterial.LightingModel
  var isLitPerPixel: Bool
  var isDoubleSided: Bool
  @available(watchOS 4.0, *)
  var fillMode: SCNFillMode
  var cullMode: SCNCullMode
  var transparencyMode: SCNTransparencyMode
  var locksAmbientWithDiffuse: Bool
  var writesToDepthBuffer: Bool
  @available(watchOS 4.0, *)
  var colorBufferWriteMask: SCNColorMask
  var readsFromDepthBuffer: Bool
  var fresnelExponent: CGFloat
  @available(watchOS 2.0, *)
  var blendMode: SCNBlendMode
}
