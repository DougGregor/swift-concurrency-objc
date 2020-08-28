
@available(iOS 9.0, *)
class CNContactFetchRequest : CNFetchRequest, NSSecureCoding {
  init(keysToFetch: [CNKeyDescriptor])
  @NSCopying var predicate: NSPredicate?
  var keysToFetch: [CNKeyDescriptor]
  @available(iOS 10.0, *)
  var mutableObjects: Bool
  var unifyResults: Bool
  var sortOrder: CNContactSortOrder
}
