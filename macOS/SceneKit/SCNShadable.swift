
struct SCNShaderModifierEntryPoint : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 10.11, *)
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
  @available(macOS 10.9, *)
  optional func handleBinding(ofSymbol symbol: String, handler block: SCNBindingBlock? = nil)
  @available(macOS 10.9, *)
  optional func handleUnbinding(ofSymbol symbol: String, handler block: SCNBindingBlock? = nil)
  @available(macOS 10.9, *)
  optional var shaderModifiers: [SCNShaderModifierEntryPoint : String]? { get set }
}
let SCNProgramMappingChannelKey: String
class SCNProgram : NSObject, NSCopying, NSSecureCoding {
  var vertexShader: String?
  var fragmentShader: String?
  @available(macOS 10.10, *)
  var tessellationControlShader: String?
  @available(macOS 10.10, *)
  var tessellationEvaluationShader: String?
  @available(macOS 10.10, *)
  var geometryShader: String?
  @available(macOS 10.11, *)
  var vertexFunctionName: String?
  @available(macOS 10.11, *)
  var fragmentFunctionName: String?
  @available(macOS 10.11, *)
  func handleBinding(ofBufferNamed name: String, frequency: SCNBufferFrequency, handler block: @escaping SCNBufferBindingBlock)
  @available(macOS 10.10, *)
  var isOpaque: Bool
  func setSemantic(_ semantic: String?, forSymbol symbol: String, options: [String : Any]? = nil)
  func semantic(forSymbol symbol: String) -> String?
  unowned(unsafe) var delegate: @sil_unmanaged SCNProgramDelegate?
  @available(macOS 10.11, *)
  var library: MTLLibrary?
}
protocol SCNProgramDelegate : NSObjectProtocol {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use -[SCNShadable handleBindingOfSymbol:usingBlock:] instead")
  optional func program(_ program: SCNProgram, bindValueForSymbol symbol: String, atLocation location: UInt32, programID: UInt32, renderer: SCNRenderer) -> Bool
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use -[SCNShadable handleUnbindingOfSymbol:usingBlock:] instead")
  optional func program(_ program: SCNProgram, unbindValueForSymbol symbol: String, atLocation location: UInt32, programID: UInt32, renderer: SCNRenderer)
  optional func program(_ program: SCNProgram, handleError error: Error)
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use SCNProgram.opaque instead")
  optional func programIsOpaque(_ program: SCNProgram) -> Bool
}
extension SCNShaderModifierEntryPoint {
  @available(macOS 10.9, *)
  static let geometry: SCNShaderModifierEntryPoint
  @available(macOS 10.9, *)
  static let surface: SCNShaderModifierEntryPoint
  @available(macOS 10.9, *)
  static let lightingModel: SCNShaderModifierEntryPoint
  @available(macOS 10.9, *)
  static let fragment: SCNShaderModifierEntryPoint
}
