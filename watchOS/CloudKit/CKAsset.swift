
@available(watchOS 3.0, *)
class CKAsset : NSObject {
  init(fileURL: URL)
  var fileURL: URL? { get }
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKAsset : CKRecordValueProtocol {
}
