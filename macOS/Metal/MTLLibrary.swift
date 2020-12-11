
typealias MTLAutoreleasedArgument = MTLArgument
@available(macOS 10.12, *)
enum MTLPatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case triangle
  case quad
}
@available(macOS 10.11, *)
class MTLVertexAttribute : NSObject {
  var name: String { get }
  var attributeIndex: Int { get }
  @available(macOS 10.11, *)
  var attributeType: MTLDataType { get }
  var isActive: Bool { get }
  @available(macOS 10.12, *)
  var isPatchData: Bool { get }
  @available(macOS 10.12, *)
  var isPatchControlPointData: Bool { get }
}
@available(macOS 10.12, *)
class MTLAttribute : NSObject {
  var name: String { get }
  var attributeIndex: Int { get }
  var attributeType: MTLDataType { get }
  var isActive: Bool { get }
  @available(macOS 10.12, *)
  var isPatchData: Bool { get }
  @available(macOS 10.12, *)
  var isPatchControlPointData: Bool { get }
}
@available(macOS 10.11, *)
enum MTLFunctionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case vertex
  case fragment
  case kernel
  @available(macOS 11.0, *)
  case visible
  @available(macOS 11.0, *)
  case intersection
}
@available(macOS 10.12, *)
class MTLFunctionConstant : NSObject {
  var name: String { get }
  var type: MTLDataType { get }
  var index: Int { get }
  var required: Bool { get }
}
@available(macOS 10.11, *)
protocol MTLFunction : NSObjectProtocol {
  @available(macOS 10.12, *)
  var label: String? { get set }
  var device: MTLDevice { get }
  var functionType: MTLFunctionType { get }
  @available(macOS 10.12, *)
  var patchType: MTLPatchType { get }
  @available(macOS 10.12, *)
  var patchControlPointCount: Int { get }
  var vertexAttributes: [MTLVertexAttribute]? { get }
  @available(macOS 10.12, *)
  var stageInputAttributes: [MTLAttribute]? { get }
  var name: String { get }
  @available(macOS 10.12, *)
  var functionConstantsDictionary: [String : MTLFunctionConstant] { get }
  @available(macOS 10.13, *)
  func makeArgumentEncoder(bufferIndex: Int) -> MTLArgumentEncoder
  @available(macOS 10.13, *)
  func makeArgumentEncoder(bufferIndex: Int, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedArgument?>?) -> MTLArgumentEncoder
  @available(macOS 11.0, *)
  var options: MTLFunctionOptions { get }
}
@available(macOS 10.11, *)
enum MTLLanguageVersion : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.11, *)
  case version1_1
  @available(macOS 10.12, *)
  case version1_2
  @available(macOS 10.13, *)
  case version2_0
  @available(macOS 10.14, *)
  case version2_1
  @available(macOS 10.15, *)
  case version2_2
  @available(macOS 11.0, *)
  case version2_3
}
@available(macOS 11.0, *)
enum MTLLibraryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case executable
  case dynamic
}
@available(macOS 10.11, *)
class MTLCompileOptions : NSObject, NSCopying {
  var preprocessorMacros: [String : NSObject]?
  var fastMathEnabled: Bool
  @available(macOS 10.11, *)
  var languageVersion: MTLLanguageVersion
  @available(macOS 11.0, *)
  var libraryType: MTLLibraryType
  @available(macOS 11.0, *)
  var installName: String?
  @available(macOS 11.0, *)
  var libraries: [MTLDynamicLibrary]?
  @available(macOS 11.0, *)
  var preserveInvariance: Bool
}
@available(macOS 10.11, *)
let MTLLibraryErrorDomain: String
@available(macOS 10.11, *)
struct MTLLibraryError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unsupported: MTLLibraryError.Code { get }
  static var `internal`: MTLLibraryError.Code { get }
  static var compileFailure: MTLLibraryError.Code { get }
  static var compileWarning: MTLLibraryError.Code { get }
  @available(macOS 10.12, *)
  static var functionNotFound: MTLLibraryError.Code { get }
  @available(macOS 10.12, *)
  static var fileNotFound: MTLLibraryError.Code { get }
}
@available(macOS 10.11, *)
protocol MTLLibrary : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  func makeFunction(name functionName: String) -> MTLFunction?
  @available(macOS 10.12, *)
  func makeFunction(name: String, constantValues: MTLFunctionConstantValues) throws -> MTLFunction
  @available(macOS 10.12, *)
  func makeFunction(name: String, constantValues: MTLFunctionConstantValues, completionHandler: @escaping (MTLFunction?, Error?) -> Void)
  @available(macOS 10.12, *)
  func makeFunction(name: String, constantValues: MTLFunctionConstantValues) async throws -> MTLFunction
  @available(macOS 11.0, *)
  func makeFunction(descriptor: MTLFunctionDescriptor, completionHandler: @escaping (MTLFunction?, Error?) -> Void)
  @available(macOS 11.0, *)
  func makeFunction(descriptor: MTLFunctionDescriptor) async throws -> MTLFunction
  @available(macOS 11.0, *)
  func makeFunction(descriptor: MTLFunctionDescriptor) throws -> MTLFunction
  @available(macOS 11.0, *)
  func makeIntersectionFunction(descriptor: MTLIntersectionFunctionDescriptor, completionHandler: @escaping (MTLFunction?, Error?) -> Void)
  @available(macOS 11.0, *)
  func makeIntersectionFunction(descriptor: MTLIntersectionFunctionDescriptor) async throws -> MTLFunction
  @available(macOS 11.0, *)
  func makeIntersectionFunction(descriptor: MTLIntersectionFunctionDescriptor) throws -> MTLFunction
  var functionNames: [String] { get }
  @available(macOS 11.0, *)
  var type: MTLLibraryType { get }
  @available(macOS 11.0, *)
  var installName: String? { get }
}
