
@available(macOS 10.15, *)
let EPErrorDomain: String
@available(macOS 10.15, *)
struct EPError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var generic: EPError.Code { get }
  static var notADeveloperTool: EPError.Code { get }
}
