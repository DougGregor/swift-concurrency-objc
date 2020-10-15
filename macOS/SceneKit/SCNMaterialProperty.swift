
@available(macOS 10.9, *)
enum SCNFilterMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case nearest
  case linear
}
@available(macOS 10.9, *)
enum SCNWrapMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case clamp
  case `repeat`
  case clampToBorder
  case mirror
}
class SCNMaterialProperty : NSObject, SCNAnimatable, NSSecureCoding {
  @available(macOS 10.9, *)
  convenience init(contents: Any)
  var contents: Any?
  @available(macOS 10.9, *)
  var intensity: CGFloat
  var minificationFilter: SCNFilterMode
  var magnificationFilter: SCNFilterMode
  var mipFilter: SCNFilterMode
  var contentsTransform: SCNMatrix4
  var wrapS: SCNWrapMode
  var wrapT: SCNWrapMode
  var mappingChannel: Int
  @available(macOS 10.13, *)
  var textureComponents: SCNColorMask
  @available(macOS 10.9, *)
  var maxAnisotropy: CGFloat
}
