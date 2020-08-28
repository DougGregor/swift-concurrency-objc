
@available(iOS 13.0, *)
class CNChangeHistoryFetchRequest : CNFetchRequest, NSSecureCoding {
  var startingToken: Data?
  var additionalContactKeyDescriptors: [CNKeyDescriptor]?
  var shouldUnifyResults: Bool
  var mutableObjects: Bool
  var includeGroupChanges: Bool
  var excludedTransactionAuthors: [String]?
}
