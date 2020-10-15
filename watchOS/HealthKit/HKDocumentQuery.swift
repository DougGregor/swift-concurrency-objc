
@available(watchOS 3.0, *)
class HKDocumentQuery : HKQuery {
  var limit: Int { get }
  var sortDescriptors: [NSSortDescriptor]? { get }
  var includeDocumentData: Bool { get }
  init(documentType: HKDocumentType, predicate: NSPredicate?, limit: Int, sortDescriptors: [NSSortDescriptor]?, includeDocumentData: Bool, resultsHandler: @escaping (HKDocumentQuery, [HKDocumentSample]?, Bool, Error?) -> Void)
}
