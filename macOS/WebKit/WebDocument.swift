
@available(macOS, introduced: 10.3, deprecated: 10.14)
protocol WebDocumentView : NSObjectProtocol {
  func setDataSource(_ dataSource: WebDataSource!)
  func dataSourceUpdated(_ dataSource: WebDataSource!)
  func setNeedsLayout(_ flag: Bool)
  func layout()
  func viewWillMove(toHostWindow hostWindow: NSWindow!)
  func viewDidMoveToHostWindow()
}
@available(macOS, introduced: 10.3, deprecated: 10.14)
protocol WebDocumentSearching : NSObjectProtocol {
  func search(for string: String!, direction forward: Bool, caseSensitive caseFlag: Bool, wrap wrapFlag: Bool) -> Bool
}
@available(macOS, introduced: 10.3, deprecated: 10.14)
protocol WebDocumentText : NSObjectProtocol {
  func supportsTextEncoding() -> Bool
  func string() -> String!
  func attributedString() -> NSAttributedString!
  func selectedString() -> String!
  func selectedAttributedString() -> NSAttributedString!
  func selectAll()
  func deselectAll()
}
@available(macOS, introduced: 10.3, deprecated: 10.14)
protocol WebDocumentRepresentation : NSObjectProtocol {
  func setDataSource(_ dataSource: WebDataSource!)
  func receivedData(_ data: Data!, with dataSource: WebDataSource!)
  func receivedError(_ error: Error!, with dataSource: WebDataSource!)
  func finishedLoading(with dataSource: WebDataSource!)
  func canProvideDocumentSource() -> Bool
  func documentSource() -> String!
  func title() -> String!
}
