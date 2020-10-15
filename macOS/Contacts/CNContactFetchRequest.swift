
@available(macOS 10.11, *)
class CNContactFetchRequest : CNFetchRequest, NSSecureCoding {
  init(keysToFetch: [CNKeyDescriptor])
  @NSCopying var predicate: NSPredicate?
  var keysToFetch: [CNKeyDescriptor]
  @available(macOS 10.12, *)
  var mutableObjects: Bool
  var unifyResults: Bool
  var sortOrder: CNContactSortOrder
}
