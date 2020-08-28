
@available(watchOS 3.0, *)
class CKFetchShareMetadataOperation : CKOperation {
  convenience init(shareURLs: [URL])
  var shareURLs: [URL]?
  var shouldFetchRootRecord: Bool
  var __rootRecordDesiredKeys: [String]?
  var perShareMetadataBlock: ((URL, CKShare.Metadata?, Error?) -> Void)?
  var fetchShareMetadataCompletionBlock: ((Error?) -> Void)?
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@nonobjc extension CKFetchShareMetadataOperation {
  @available(swift 4.2)
  var rootRecordDesiredKeys: [CKRecord.FieldKey]?
}
