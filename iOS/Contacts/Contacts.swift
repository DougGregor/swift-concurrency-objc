
@available(macOS 10.11, iOS 9.0, *)
extension CNError {
  var affectedRecords: [AnyObject]? { get }
  var affectedRecordIdentifiers: [String]? { get }
  var keyPaths: [String]? { get }
}

