
@available(macOS 11.0, *)
let MTLBinaryArchiveDomain: String
@available(macOS 11.0, *)
struct MTLBinaryArchiveError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var none: MTLBinaryArchiveError.Code { get }
  static var invalidFile: MTLBinaryArchiveError.Code { get }
  static var unexpectedElement: MTLBinaryArchiveError.Code { get }
  static var compilationFailure: MTLBinaryArchiveError.Code { get }
}
@available(macOS 11.0, *)
class MTLBinaryArchiveDescriptor : NSObject, NSCopying {
  var url: URL?
}
@available(macOS 11.0, *)
protocol MTLBinaryArchive : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  func addComputePipelineFunctions(descriptor: MTLComputePipelineDescriptor) throws
  func addRenderPipelineFunctions(descriptor: MTLRenderPipelineDescriptor) throws
  func addTileRenderPipelineFunctions(descriptor: MTLTileRenderPipelineDescriptor) throws
  func serialize(to url: URL) throws
}
