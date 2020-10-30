
typealias MTLAutoreleasedArgument = MTLArgument
@available(tvOS 10.0, *)
enum MTLPatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case triangle
  case quad
}
@available(tvOS 8.0, *)
class MTLVertexAttribute : NSObject {
  var name: String { get }
  var attributeIndex: Int { get }
  @available(tvOS 8.3, *)
  var attributeType: MTLDataType { get }
  var isActive: Bool { get }
  @available(tvOS 10.0, *)
  var isPatchData: Bool { get }
  @available(tvOS 10.0, *)
  var isPatchControlPointData: Bool { get }
}
@available(tvOS 10.0, *)
class MTLAttribute : NSObject {
  var name: String { get }
  var attributeIndex: Int { get }
  var attributeType: MTLDataType { get }
  var isActive: Bool { get }
  @available(tvOS 10.0, *)
  var isPatchData: Bool { get }
  @available(tvOS 10.0, *)
  var isPatchControlPointData: Bool { get }
}
@available(tvOS 8.0, *)
enum MTLFunctionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case vertex
  case fragment
  case kernel
  @available(tvOS 14.0, *)
  case visible
}
@available(tvOS 10.0, *)
class MTLFunctionConstant : NSObject {
  var name: String { get }
  var type: MTLDataType { get }
  var index: Int { get }
  var required: Bool { get }
}
@available(tvOS 8.0, *)
protocol MTLFunction : NSObjectProtocol {
  @available(tvOS 10.0, *)
  var label: String? { get set }
  var device: MTLDevice { get }
  var functionType: MTLFunctionType { get }
  @available(tvOS 10.0, *)
  var patchType: MTLPatchType { get }
  @available(tvOS 10.0, *)
  var patchControlPointCount: Int { get }
  var vertexAttributes: [MTLVertexAttribute]? { get }
  @available(tvOS 10.0, *)
  var stageInputAttributes: [MTLAttribute]? { get }
  var name: String { get }
  @available(tvOS 10.0, *)
  var functionConstantsDictionary: [String : MTLFunctionConstant] { get }
  @available(tvOS 11.0, *)
  func makeArgumentEncoder(bufferIndex: Int) -> MTLArgumentEncoder
  @available(tvOS 11.0, *)
  func makeArgumentEncoder(bufferIndex: Int, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedArgument?>?) -> MTLArgumentEncoder
}
@available(tvOS 9.0, *)
enum MTLLanguageVersion : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(tvOS 9.0, *)
  case version1_0
  @available(tvOS 9.0, *)
  case version1_1
  @available(tvOS 10.0, *)
  case version1_2
  @available(tvOS 11.0, *)
  case version2_0
  @available(tvOS 12.0, *)
  case version2_1
  @available(tvOS 13.0, *)
  case version2_2
  @available(tvOS 14.0, *)
  case version2_3
}
@available(tvOS 14.0, *)
enum MTLLibraryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case executable
  case dynamic
}
@available(tvOS 8.0, *)
class MTLCompileOptions : NSObject, NSCopying {
  var preprocessorMacros: [String : NSObject]?
  var fastMathEnabled: Bool
  @available(tvOS 9.0, *)
  var languageVersion: MTLLanguageVersion
  @available(tvOS 14.0, *)
  var libraryType: MTLLibraryType
  @available(tvOS 14.0, *)
  var installName: String?
  @available(tvOS 14.0, *)
  var libraries: [MTLDynamicLibrary]?
  @available(tvOS 13.0, *)
  var preserveInvariance: Bool
}
@available(tvOS 8.0, *)
let MTLLibraryErrorDomain: String
@available(tvOS 8.0, *)
struct MTLLibraryError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unsupported: MTLLibraryError.Code { get }
  static var `internal`: MTLLibraryError.Code { get }
  static var compileFailure: MTLLibraryError.Code { get }
  static var compileWarning: MTLLibraryError.Code { get }
  @available(tvOS 10.0, *)
  static var functionNotFound: MTLLibraryError.Code { get }
  @available(tvOS 10.0, *)
  static var fileNotFound: MTLLibraryError.Code { get }
}
@available(tvOS 8.0, *)
protocol MTLLibrary : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  func makeFunction(name functionName: String) -> MTLFunction?
  @available(tvOS 10.0, *)
  func makeFunction(name: String, constantValues: MTLFunctionConstantValues) throws -> MTLFunction
  @available(tvOS 10.0, *)
  func makeFunction(name: String, constantValues: MTLFunctionConstantValues, completionHandler: @escaping (MTLFunction?, Error?) -> Void)
  @available(tvOS 10.0, *)
  func makeFunction(name: String, constantValues: MTLFunctionConstantValues) async throws -> MTLFunction
  @available(tvOS 14.0, *)
  func makeFunction(descriptor: MTLFunctionDescriptor, completionHandler: @escaping (MTLFunction?, Error?) -> Void)
  @available(tvOS 14.0, *)
  func makeFunction(descriptor: MTLFunctionDescriptor) async throws -> MTLFunction
  @available(tvOS 14.0, *)
  func makeFunction(descriptor: MTLFunctionDescriptor) throws -> MTLFunction
  var functionNames: [String] { get }
  @available(tvOS 14.0, *)
  var type: MTLLibraryType { get }
  @available(tvOS 14.0, *)
  var installName: String? { get }
}
