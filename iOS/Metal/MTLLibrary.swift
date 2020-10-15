
typealias MTLAutoreleasedArgument = MTLArgument
@available(iOS 10.0, *)
enum MTLPatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case triangle
  case quad
}
@available(iOS 8.0, *)
class MTLVertexAttribute : NSObject {
  var name: String { get }
  var attributeIndex: Int { get }
  @available(iOS 8.3, *)
  var attributeType: MTLDataType { get }
  var isActive: Bool { get }
  @available(iOS 10.0, *)
  var isPatchData: Bool { get }
  @available(iOS 10.0, *)
  var isPatchControlPointData: Bool { get }
}
@available(iOS 10.0, *)
class MTLAttribute : NSObject {
  var name: String { get }
  var attributeIndex: Int { get }
  var attributeType: MTLDataType { get }
  var isActive: Bool { get }
  @available(iOS 10.0, *)
  var isPatchData: Bool { get }
  @available(iOS 10.0, *)
  var isPatchControlPointData: Bool { get }
}
@available(iOS 8.0, *)
enum MTLFunctionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case vertex
  case fragment
  case kernel
  @available(iOS 14.0, *)
  case visible
  @available(iOS 14.0, *)
  case intersection
}
@available(iOS 10.0, *)
class MTLFunctionConstant : NSObject {
  var name: String { get }
  var type: MTLDataType { get }
  var index: Int { get }
  var required: Bool { get }
}
@available(iOS 8.0, *)
protocol MTLFunction : NSObjectProtocol {
  @available(iOS 10.0, *)
  var label: String? { get set }
  var device: MTLDevice { get }
  var functionType: MTLFunctionType { get }
  @available(iOS 10.0, *)
  var patchType: MTLPatchType { get }
  @available(iOS 10.0, *)
  var patchControlPointCount: Int { get }
  var vertexAttributes: [MTLVertexAttribute]? { get }
  @available(iOS 10.0, *)
  var stageInputAttributes: [MTLAttribute]? { get }
  var name: String { get }
  @available(iOS 10.0, *)
  var functionConstantsDictionary: [String : MTLFunctionConstant] { get }
  @available(iOS 11.0, *)
  func makeArgumentEncoder(bufferIndex: Int) -> MTLArgumentEncoder
  @available(iOS 11.0, *)
  func makeArgumentEncoder(bufferIndex: Int, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedArgument?>?) -> MTLArgumentEncoder
  @available(iOS 14.0, *)
  var options: MTLFunctionOptions { get }
}
@available(iOS 9.0, *)
enum MTLLanguageVersion : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(iOS 9.0, *)
  case version1_0
  @available(iOS 9.0, *)
  case version1_1
  @available(iOS 10.0, *)
  case version1_2
  @available(iOS 11.0, *)
  case version2_0
  @available(iOS 12.0, *)
  case version2_1
  @available(iOS 13.0, *)
  case version2_2
  @available(iOS 14.0, *)
  case version2_3
}
@available(iOS 14.0, *)
enum MTLLibraryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case executable
  case dynamic
}
@available(iOS 8.0, *)
class MTLCompileOptions : NSObject, NSCopying {
  var preprocessorMacros: [String : NSObject]?
  var fastMathEnabled: Bool
  @available(iOS 9.0, *)
  var languageVersion: MTLLanguageVersion
  @available(iOS 14.0, *)
  var libraryType: MTLLibraryType
  @available(iOS 14.0, *)
  var installName: String?
  @available(iOS 14.0, *)
  var libraries: [MTLDynamicLibrary]?
  @available(iOS 13.0, *)
  var preserveInvariance: Bool
}
@available(iOS 8.0, *)
let MTLLibraryErrorDomain: String
@available(iOS 8.0, *)
struct MTLLibraryError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unsupported: MTLLibraryError.Code { get }
  static var `internal`: MTLLibraryError.Code { get }
  static var compileFailure: MTLLibraryError.Code { get }
  static var compileWarning: MTLLibraryError.Code { get }
  @available(iOS 10.0, *)
  static var functionNotFound: MTLLibraryError.Code { get }
  @available(iOS 10.0, *)
  static var fileNotFound: MTLLibraryError.Code { get }
}
@available(iOS 8.0, *)
protocol MTLLibrary : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  func makeFunction(name functionName: String) -> MTLFunction?
  @available(iOS 10.0, *)
  func makeFunction(name: String, constantValues: MTLFunctionConstantValues) throws -> MTLFunction
  @available(iOS 10.0, *)
  func makeFunction(name: String, constantValues: MTLFunctionConstantValues, completionHandler: @escaping (MTLFunction?, Error?) -> Void)
  @available(iOS 10.0, *)
  func makeFunction(name: String, constantValues: MTLFunctionConstantValues) async throws -> MTLFunction?
  @available(iOS 14.0, *)
  func makeFunction(descriptor: MTLFunctionDescriptor, completionHandler: @escaping (MTLFunction?, Error?) -> Void)
  @available(iOS 14.0, *)
  func makeFunction(descriptor: MTLFunctionDescriptor) async throws -> MTLFunction?
  @available(iOS 14.0, *)
  func makeFunction(descriptor: MTLFunctionDescriptor) throws -> MTLFunction
  @available(iOS 14.0, *)
  func makeIntersectionFunction(descriptor: MTLIntersectionFunctionDescriptor, completionHandler: @escaping (MTLFunction?, Error?) -> Void)
  @available(iOS 14.0, *)
  func makeIntersectionFunction(descriptor: MTLIntersectionFunctionDescriptor) async throws -> MTLFunction?
  @available(iOS 14.0, *)
  func makeIntersectionFunction(descriptor: MTLIntersectionFunctionDescriptor) throws -> MTLFunction
  var functionNames: [String] { get }
  @available(iOS 14.0, *)
  var type: MTLLibraryType { get }
  @available(iOS 14.0, *)
  var installName: String? { get }
}
