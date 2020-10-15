
class ABMultiValue : NSObject, NSCopying, NSMutableCopying, NSFastEnumeration {
  func count() -> Int
  func value(at index: Int) -> Any!
  func label(at index: Int) -> String!
  func identifier(at index: Int) -> String!
  func index(forIdentifier identifier: String!) -> Int
  func primaryIdentifier() -> String!
  func propertyType() -> ABPropertyType
  func value(forIdentifier identifier: String!) -> Any!
  func label(forIdentifier identifier: String!) -> Any!
}
class ABMutableMultiValue : ABMultiValue {
  func add(_ value: Any!, withLabel label: String!) -> String!
  func insert(_ value: Any!, withLabel label: String!, at index: Int) -> String!
  func removeAndLabel(at index: Int) -> Bool
  func replace(at index: Int, withValue value: Any!) -> Bool
  func replaceLabel(at index: Int, withLabel label: String!) -> Bool
  func setPrimaryIdentifier(_ identifier: String!) -> Bool
}
