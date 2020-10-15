
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
class NCWidgetSearchViewController : NSViewController {
  @IBOutlet weak var delegate: @sil_weak NCWidgetSearchViewDelegate?
  var searchResults: [Any]?
  var searchDescription: String?
  var searchResultsPlaceholderString: String?
  var searchResultKeyPath: String?
}
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
protocol NCWidgetSearchViewDelegate : NSObjectProtocol {
  func widgetSearch(_ controller: NCWidgetSearchViewController, searchForTerm searchTerm: String, maxResults max: Int)
  func widgetSearchTermCleared(_ controller: NCWidgetSearchViewController)
  func widgetSearch(_ controller: NCWidgetSearchViewController, resultSelected object: Any)
}
