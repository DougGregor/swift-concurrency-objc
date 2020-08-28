
struct SCNShaderModifierEntryPoint : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(tvOS 9.0, *)
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
typealias SCNBufferBindingBlock = (SCNBufferStream, SCNNode, SCNShadable, SCNRenderer) -> Void
typealias SCNBindingBlock = (UInt32, UInt32, SCNNode?, SCNRenderer) -> Void
protocol SCNShadable : NSObjectProtocol {
  optional var program: SCNProgram? { get set }
  optional func handleBinding(ofSymbol symbol: String, handler block: SCNBindingBlock? = nil)
  optional func handleUnbinding(ofSymbol symbol: String, handler block: SCNBindingBlock? = nil)
  optional var shaderModifiers: [SCNShaderModifierEntryPoint : String]? { get set }
}
let SCNProgramMappingChannelKey: String
class SCNProgram : NSObject, NSCopying, NSSecureCoding {
  var vertexShader: String?
  var fragmentShader: String?
  @available(tvOS 9.0, *)
  var vertexFunctionName: String?
  @available(tvOS 9.0, *)
  var fragmentFunctionName: String?
  @available(tvOS 9.0, *)
  func handleBinding(ofBufferNamed name: String, frequency: SCNBufferFrequency, handler block: @escaping SCNBufferBindingBlock)
  var isOpaque: Bool
  func setSemantic(_ semantic: String?, forSymbol symbol: String, options: [String : Any]? = nil)
  func semantic(forSymbol symbol: String) -> String?
  unowned(unsafe) var delegate: @sil_unmanaged SCNProgramDelegate?
  @available(tvOS 9.0, *)
  var library: MTLLibrary?
}
protocol SCNProgramDelegate : NSObjectProtocol {
  optional func program(_ program: SCNProgram, handleError error: Error)
}
extension SCNShaderModifierEntryPoint {
  static let geometry: SCNShaderModifierEntryPoint
  static let surface: SCNShaderModifierEntryPoint
  static let lightingModel: SCNShaderModifierEntryPoint
  static let fragment: SCNShaderModifierEntryPoint
}
