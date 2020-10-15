
@available(macOS 10.12, *)
class CKAcceptSharesOperation : CKOperation {
  convenience init(shareMetadatas: [CKShare.Metadata])
  var shareMetadatas: [CKShare.Metadata]?
  var perShareCompletionBlock: ((CKShare.Metadata, CKShare?, Error?) -> Void)?
  var acceptSharesCompletionBlock: ((Error?) -> Void)?
}
