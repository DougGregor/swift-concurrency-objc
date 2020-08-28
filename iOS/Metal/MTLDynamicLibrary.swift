
@available(iOS 14.0, *)
let MTLDynamicLibraryDomain: String
@available(iOS 14.0, *)
struct MTLDynamicLibraryError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var none: MTLDynamicLibraryError.Code { get }
  static var invalidFile: MTLDynamicLibraryError.Code { get }
  static var compilationFailure: MTLDynamicLibraryError.Code { get }
  static var unresolvedInstallName: MTLDynamicLibraryError.Code { get }
  static var dependencyLoadFailure: MTLDynamicLibraryError.Code { get }
  static var unsupported: MTLDynamicLibraryError.Code { get }
}
@available(iOS 14.0, *)
protocol MTLDynamicLibrary : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  var installName: String { get }
  func serialize(to url: URL) throws
}
