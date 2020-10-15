
@available(iOS 12.0, *)
class CPListSection : NSObject, NSSecureCoding {
  init(items: [CPListTemplateItem], header: String?, sectionIndexTitle: String?)
  init(items: [CPListTemplateItem])
  var header: String? { get }
  var sectionIndexTitle: String? { get }
  var items: [CPListTemplateItem] { get }
  func index(of item: CPListTemplateItem) -> Int
  func item(at index: Int) -> CPListTemplateItem
}
