
class ABGroup : ABRecord {
  func members() -> [Any]!
  func addMember(_ person: ABPerson!) -> Bool
  func removeMember(_ person: ABPerson!) -> Bool
  func subgroups() -> [Any]!
  func addSubgroup(_ group: ABGroup!) -> Bool
  func removeSubgroup(_ group: ABGroup!) -> Bool
  func parentGroups() -> [Any]!
  func setDistributionIdentifier(_ identifier: String!, forProperty property: String!, person: ABPerson!) -> Bool
  func distributionIdentifier(forProperty property: String!, person: ABPerson!) -> String!
}
extension ABGroup {
  class func addPropertiesAndTypes(_ properties: [AnyHashable : Any]!) -> Int
  class func removeProperties(_ properties: [Any]!) -> Int
  class func properties() -> [Any]!
  class func type(ofProperty property: String!) -> ABPropertyType
}
extension ABGroup {
  class func searchElement(forProperty property: String!, label: String!, key: String!, value: Any!, comparison: ABSearchComparison) -> ABSearchElement!
}
