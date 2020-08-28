
@available(watchOS 2.0, *)
class CNContactFetchRequest : CNFetchRequest, NSSecureCoding {
  init(keysToFetch: [CNKeyDescriptor])
  @NSCopying var predicate: NSPredicate?
  var keysToFetch: [CNKeyDescriptor]
  @available(watchOS 3.0, *)
  var mutableObjects: Bool
  var unifyResults: Bool
  var sortOrder: CNContactSortOrder
}
