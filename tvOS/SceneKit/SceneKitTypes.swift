
var SCN_ENABLE_METAL: Int32 { get }
var SCN_ENABLE_OPENGL: Int32 { get }
@available(tvOS 8.0, *)
enum SCNActionTimingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case linear
  case easeIn
  case easeOut
  case easeInEaseOut
}
@available(tvOS 11.0, *)
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
  var x: Float
  var y: Float
  var z: Float
  init()
  init(x: Float, y: Float, z: Float)
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
  var x: Float
  var y: Float
  var z: Float
  var w: Float
  init()
  init(x: Float, y: Float, z: Float, w: Float)
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
let SCNVector3Zero: SCNVector3
let SCNVector4Zero: SCNVector4
func SCNVector3EqualToVector3(_ a: SCNVector3, _ b: SCNVector3) -> Bool
func SCNVector4EqualToVector4(_ a: SCNVector4, _ b: SCNVector4) -> Bool
func SCNVector3Make(_ x: Float, _ y: Float, _ z: Float) -> SCNVector3
func SCNVector4Make(_ x: Float, _ y: Float, _ z: Float, _ w: Float) -> SCNVector4
typealias SCNQuaternion = SCNVector4
struct SCNMatrix4 {
  var m11: Float
  var m12: Float
  var m13: Float
  var m14: Float
  var m21: Float
  var m22: Float
  var m23: Float
  var m24: Float
  var m31: Float
  var m32: Float
  var m33: Float
  var m34: Float
  var m41: Float
  var m42: Float
  var m43: Float
  var m44: Float
  init()
  init(m11: Float, m12: Float, m13: Float, m14: Float, m21: Float, m22: Float, m23: Float, m24: Float, m31: Float, m32: Float, m33: Float, m34: Float, m41: Float, m42: Float, m43: Float, m44: Float)
}

extension SCNMatrix4 {
  init(_ m: float4x4)
  init(_ m: double4x4)
}

extension SCNMatrix4 : _ObjectiveCBridgeable {
}
let SCNMatrix4Identity: SCNMatrix4
func SCNMatrix4IsIdentity(_ m: SCNMatrix4) -> Bool
func SCNMatrix4EqualToMatrix4(_ a: SCNMatrix4, _ b: SCNMatrix4) -> Bool
func SCNMatrix4MakeTranslation(_ tx: Float, _ ty: Float, _ tz: Float) -> SCNMatrix4
func SCNMatrix4MakeScale(_ sx: Float, _ sy: Float, _ sz: Float) -> SCNMatrix4
func SCNMatrix4MakeRotation(_ angle: Float, _ x: Float, _ y: Float, _ z: Float) -> SCNMatrix4
func SCNMatrix4Translate(_ m: SCNMatrix4, _ tx: Float, _ ty: Float, _ tz: Float) -> SCNMatrix4
func SCNMatrix4Scale(_ m: SCNMatrix4, _ sx: Float, _ sy: Float, _ sz: Float) -> SCNMatrix4
func SCNMatrix4Rotate(_ m: SCNMatrix4, _ angle: Float, _ x: Float, _ y: Float, _ z: Float) -> SCNMatrix4
func SCNMatrix4Invert(_ m: SCNMatrix4) -> SCNMatrix4
func SCNMatrix4Mult(_ a: SCNMatrix4, _ b: SCNMatrix4) -> SCNMatrix4
func SCNVector3FromGLKVector3(_ vector: GLKVector3) -> SCNVector3
func SCNVector3ToGLKVector3(_ vector: SCNVector3) -> GLKVector3
func SCNVector4FromGLKVector4(_ vector: GLKVector4) -> SCNVector4
func SCNVector4ToGLKVector4(_ vector: SCNVector4) -> GLKVector4
func SCNMatrix4ToGLKMatrix4(_ mat: SCNMatrix4) -> GLKMatrix4
func SCNMatrix4FromGLKMatrix4(_ mat: GLKMatrix4) -> SCNMatrix4
extension NSValue {
  /*not inherited*/ init(scnVector3 v: SCNVector3)
  /*not inherited*/ init(scnVector4 v: SCNVector4)
  /*not inherited*/ init(scnMatrix4 v: SCNMatrix4)
  var scnVector3Value: SCNVector3 { get }
  var scnVector4Value: SCNVector4 { get }
  var scnMatrix4Value: SCNMatrix4 { get }
}
let SCNErrorDomain: String
var SCNProgramCompilationError: Int { get }
