
@available(tvOS 3.0, *)
class UILocalizedIndexedCollation : NSObject {
  class func current() -> Self
  var sectionTitles: [String] { get }
  var sectionIndexTitles: [String] { get }
  func section(forSectionIndexTitle indexTitleIndex: Int) -> Int
  func section(for object: Any, collationStringSelector selector: Selector) -> Int
  func sortedArray(from array: [Any], collationStringSelector selector: Selector) -> [Any]
}
