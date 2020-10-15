
enum SCNFilterMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case nearest
  case linear
}
enum SCNWrapMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case clamp
  case `repeat`
  case clampToBorder
  case mirror
}
class SCNMaterialProperty : NSObject, SCNAnimatable, NSSecureCoding {
  convenience init(contents: Any)
  var contents: Any?
  var intensity: CGFloat
  var minificationFilter: SCNFilterMode
  var magnificationFilter: SCNFilterMode
  var mipFilter: SCNFilterMode
  var contentsTransform: SCNMatrix4
  var wrapS: SCNWrapMode
  var wrapT: SCNWrapMode
  var mappingChannel: Int
  @available(tvOS 11.0, *)
  var textureComponents: SCNColorMask
  var maxAnisotropy: CGFloat
}
