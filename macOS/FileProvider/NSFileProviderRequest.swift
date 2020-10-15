
@available(macOS 11.0, *)
class NSFileProviderRequest : NSObject {
  var isSystemRequest: Bool { get }
  var isFileViewerRequest: Bool { get }
  var requestingExecutable: URL? { get }
}
