
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
  @available(iOS 10.0, *)
  static let physicallyBased: SCNMaterial.LightingModel
  @available(iOS 13.0, *)
  static let shadowOnly: SCNMaterial.LightingModel
}
@available(iOS 11.0, *)
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
  @available(iOS 11.0, *)
  case singleLayer
  @available(iOS 11.0, *)
  case dualLayer
  @available(iOS 11.0, *)
  static var `default`: SCNTransparencyMode { get }
}
@available(iOS 9.0, *)
enum SCNBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case alpha
  case add
  case subtract
  case multiply
  case screen
  case replace
  @available(iOS 11.0, *)
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
  @available(iOS 11.0, *)
  var displacement: SCNMaterialProperty { get }
  @available(iOS 9.0, *)
  var ambientOcclusion: SCNMaterialProperty { get }
  @available(iOS 9.0, *)
  var selfIllumination: SCNMaterialProperty { get }
  @available(iOS 10.0, *)
  var metalness: SCNMaterialProperty { get }
  @available(iOS 10.0, *)
  var roughness: SCNMaterialProperty { get }
  @available(iOS 13.0, *)
  var clearCoat: SCNMaterialProperty { get }
  @available(iOS 13.0, *)
  var clearCoatRoughness: SCNMaterialProperty { get }
  @available(iOS 13.0, *)
  var clearCoatNormal: SCNMaterialProperty { get }
  var shininess: CGFloat
  var transparency: CGFloat
  var lightingModel: SCNMaterial.LightingModel
  var isLitPerPixel: Bool
  var isDoubleSided: Bool
  @available(iOS 11.0, *)
  var fillMode: SCNFillMode
  var cullMode: SCNCullMode
  var transparencyMode: SCNTransparencyMode
  var locksAmbientWithDiffuse: Bool
  var writesToDepthBuffer: Bool
  @available(iOS 11.0, *)
  var colorBufferWriteMask: SCNColorMask
  var readsFromDepthBuffer: Bool
  var fresnelExponent: CGFloat
  @available(iOS 9.0, *)
  var blendMode: SCNBlendMode
}
