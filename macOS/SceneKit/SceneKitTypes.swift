
var SCN_ENABLE_METAL: Int32 { get }
var SCN_ENABLE_OPENGL: Int32 { get }
@available(macOS 10.10, *)
enum SCNActionTimingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case linear
  case easeIn
  case easeOut
  case easeInEaseOut
}
@available(macOS 10.13, *)
struct SCNColorMask : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  static var red: SCNColorMask { get }
  static var green: SCNColorMask { get }
  static var blue: SCNColorMask { get }
  static var alpha: SCNColorMask { get }
  static var all: SCNColorMask { get }
}
struct SCNVector3 {
  var x: CGFloat
  var y: CGFloat
  var z: CGFloat
  init()
  init(x: CGFloat, y: CGFloat, z: CGFloat)
}

extension SCNVector3 {
  init(_ x: Float, _ y: Float, _ z: Float)
  init(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat)
  init(_ x: Double, _ y: Double, _ z: Double)
  init(_ x: Int, _ y: Int, _ z: Int)
  init(_ v: SIMD3<Float>)
  init(_ v: SIMD3<Double>)
}

extension SCNVector3 : _ObjectiveCBridgeable {
}
struct SCNVector4 {
  var x: CGFloat
  var y: CGFloat
  var z: CGFloat
  var w: CGFloat
  init()
  init(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat)
}

extension SCNVector4 {
  init(_ x: Float, _ y: Float, _ z: Float, _ w: Float)
  init(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat, _ w: CGFloat)
  init(_ x: Double, _ y: Double, _ z: Double, _ w: Double)
  init(_ x: Int, _ y: Int, _ z: Int, _ w: Int)
  init(_ v: SIMD4<Float>)
  init(_ v: SIMD4<Double>)
}

extension SCNVector4 : _ObjectiveCBridgeable {
}
@available(macOS 10.10, *)
let SCNVector3Zero: SCNVector3
@available(macOS 10.10, *)
let SCNVector4Zero: SCNVector4
func SCNVector3EqualToVector3(_ a: SCNVector3, _ b: SCNVector3) -> Bool
func SCNVector4EqualToVector4(_ a: SCNVector4, _ b: SCNVector4) -> Bool
func SCNVector3Make(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNVector3
func SCNVector4Make(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat, _ w: CGFloat) -> SCNVector4
typealias SCNQuaternion = SCNVector4
typealias SCNMatrix4 = CATransform3D
@available(macOS 10.10, *)
let SCNMatrix4Identity: SCNMatrix4
@available(macOS 10.10, *)
func SCNMatrix4IsIdentity(_ m: SCNMatrix4) -> Bool
@available(macOS 10.10, *)
func SCNMatrix4EqualToMatrix4(_ a: SCNMatrix4, _ b: SCNMatrix4) -> Bool
func SCNMatrix4MakeTranslation(_ tx: CGFloat, _ ty: CGFloat, _ tz: CGFloat) -> SCNMatrix4
func SCNMatrix4MakeScale(_ sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> SCNMatrix4
@available(macOS 10.10, *)
func SCNMatrix4MakeRotation(_ angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNMatrix4
func SCNMatrix4Translate(_ m: SCNMatrix4, _ tx: CGFloat, _ ty: CGFloat, _ tz: CGFloat) -> SCNMatrix4
@available(macOS 10.10, *)
func SCNMatrix4Scale(_ m: SCNMatrix4, _ sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> SCNMatrix4
@available(macOS 10.10, *)
func SCNMatrix4Rotate(_ m: SCNMatrix4, _ angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNMatrix4
@available(macOS 10.10, *)
func SCNMatrix4Invert(_ m: SCNMatrix4) -> SCNMatrix4
@available(macOS 10.10, *)
func SCNMatrix4Mult(_ a: SCNMatrix4, _ b: SCNMatrix4) -> SCNMatrix4
func SCNVector3FromGLKVector3(_ vector: GLKVector3) -> SCNVector3
func SCNVector3ToGLKVector3(_ vector: SCNVector3) -> GLKVector3
func SCNVector4FromGLKVector4(_ vector: GLKVector4) -> SCNVector4
func SCNVector4ToGLKVector4(_ vector: SCNVector4) -> GLKVector4
@available(macOS 10.10, *)
func SCNMatrix4ToGLKMatrix4(_ mat: SCNMatrix4) -> GLKMatrix4
@available(macOS 10.10, *)
func SCNMatrix4FromGLKMatrix4(_ mat: GLKMatrix4) -> SCNMatrix4
extension NSValue {
  /*not inherited*/ init(scnVector3 v: SCNVector3)
  /*not inherited*/ init(scnVector4 v: SCNVector4)
  @available(macOS 10.10, *)
  /*not inherited*/ init(scnMatrix4 v: SCNMatrix4)
  var scnVector3Value: SCNVector3 { get }
  var scnVector4Value: SCNVector4 { get }
  @available(macOS 10.10, *)
  var scnMatrix4Value: SCNMatrix4 { get }
}
let SCNErrorDomain: String
var SCNProgramCompilationError: Int { get }
