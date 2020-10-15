
struct SCNShaderModifierEntryPoint : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(watchOS 2.0, *)
enum SCNBufferFrequency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case perFrame
  case perNode
  case perShadable
}
protocol SCNBufferStream : NSObjectProtocol {
  func writeBytes(_ bytes: UnsafeRawPointer, count length: Int)
}
protocol SCNShadable : NSObjectProtocol {
  optional var shaderModifiers: [SCNShaderModifierEntryPoint : String]? { get set }
}
extension SCNShaderModifierEntryPoint {
  static let geometry: SCNShaderModifierEntryPoint
  static let surface: SCNShaderModifierEntryPoint
  static let lightingModel: SCNShaderModifierEntryPoint
  static let fragment: SCNShaderModifierEntryPoint
}
