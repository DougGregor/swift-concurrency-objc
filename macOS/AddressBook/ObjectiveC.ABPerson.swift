
class ABPerson : ABRecord {
  func parentGroups() -> [Any]!
  @available(macOS 10.8, *)
  func linkedPeople() -> [Any]!
}
extension ABPerson {
  class func addPropertiesAndTypes(_ properties: [AnyHashable : Any]!) -> Int
  class func removeProperties(_ properties: [Any]!) -> Int
  class func properties() -> [Any]!
  class func type(ofProperty property: String!) -> ABPropertyType
}
extension ABPerson {
  class func searchElement(forProperty property: String!, label: String!, key: String!, value: Any!, comparison: ABSearchComparison) -> ABSearchElement!
}
extension ABPerson {
  init!(vCardRepresentation vCardData: Data!)
  func vCardRepresentation() -> Data!
}
