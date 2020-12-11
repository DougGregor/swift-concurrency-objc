
@available(iOS 12.0, *)
class CPSearchTemplate : CPTemplate {
  weak var delegate: @sil_weak CPSearchTemplateDelegate?
}
@available(iOS 12.0, *)
protocol CPSearchTemplateDelegate : NSObjectProtocol {
  func searchTemplate(_ searchTemplate: CPSearchTemplate, updatedSearchText searchText: String, completionHandler: @escaping ([CPListItem]) -> Void)
  func searchTemplate(_ searchTemplate: CPSearchTemplate, updatedSearchText searchText: String) async -> [CPListItem]
  func searchTemplate(_ searchTemplate: CPSearchTemplate, selectedResult item: CPListItem, completionHandler: @escaping () -> Void)
  func searchTemplate(_ searchTemplate: CPSearchTemplate, selectedResult item: CPListItem) async
  optional func searchTemplateSearchButtonPressed(_ searchTemplate: CPSearchTemplate)
}
