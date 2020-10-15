
@available(iOS 12.0, *)
class CPListTemplate : CPTemplate, CPBarButtonProviding {
  init(title: String?, sections: [CPListSection])
  @available(iOS, introduced: 12.0, deprecated: 14.0)
  weak var delegate: @sil_weak CPListTemplateDelegate?
  @available(iOS 14.0, *)
  class var maximumItemCount: Int { get }
  @available(iOS 14.0, *)
  class var maximumSectionCount: Int { get }
  var sections: [CPListSection] { get }
  var title: String? { get }
  func updateSections(_ sections: [CPListSection])
  @available(iOS 14.0, *)
  var sectionCount: Int { get }
  @available(iOS 14.0, *)
  var itemCount: Int { get }
  @available(iOS 14.0, *)
  func indexPath(for item: CPListTemplateItem) -> IndexPath?
  @available(iOS 14.0, *)
  var emptyViewTitleVariants: [String]
  @available(iOS 14.0, *)
  var emptyViewSubtitleVariants: [String]
}
@available(iOS, introduced: 12.0, deprecated: 14.0)
protocol CPListTemplateDelegate : NSObjectProtocol {
  @available(iOS, introduced: 12.0, deprecated: 14.0)
  @asyncHandler func listTemplate(_ listTemplate: CPListTemplate, didSelect item: CPListItem, completionHandler: @escaping () -> Void)
  @available(iOS, introduced: 12.0, deprecated: 14.0)
  func listTemplate(_ listTemplate: CPListTemplate, didSelect item: CPListItem) async
}
