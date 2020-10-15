
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
enum NCUpdateResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case newData
  case noData
  case failed
}
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
protocol NCWidgetProviding : NSExtensionRequestHandling {
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  optional func widgetPerformUpdate(completionHandler: @escaping (NCUpdateResult) -> Void)
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  optional func widgetPerformUpdate() async -> NCUpdateResult
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  optional func widgetMarginInsets(forProposedMarginInsets defaultMarginInset: NSEdgeInsets) -> NSEdgeInsets
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  optional var widgetAllowsEditing: Bool { get }
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  @asyncHandler optional func widgetDidBeginEditing()
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  @asyncHandler optional func widgetDidEndEditing()
}
extension NSViewController {
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  func present(inWidget viewController: NSViewController)
}
