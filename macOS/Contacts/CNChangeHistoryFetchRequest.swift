
@available(macOS 10.15, *)
class CNChangeHistoryFetchRequest : CNFetchRequest, NSSecureCoding {
  var startingToken: Data?
  var additionalContactKeyDescriptors: [CNKeyDescriptor]?
  var shouldUnifyResults: Bool
  var mutableObjects: Bool
  var includeGroupChanges: Bool
  var excludedTransactionAuthors: [String]?
}
