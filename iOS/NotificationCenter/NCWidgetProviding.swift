
@available(iOS, introduced: 8.0, deprecated: 14.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
enum NCUpdateResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case newData
  case noData
  case failed
}
@available(iOS, introduced: 10.0, deprecated: 14.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
protocol NCWidgetProviding : NSObjectProtocol {
  @available(iOS, introduced: 8.0, deprecated: 14.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  optional func widgetPerformUpdate(completionHandler: @escaping (NCUpdateResult) -> Void)
  @available(iOS, introduced: 8.0, deprecated: 14.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  optional func widgetPerformUpdate() async -> NCUpdateResult
  @available(iOS, introduced: 10.0, deprecated: 14.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  @asyncHandler optional func widgetActiveDisplayModeDidChange(_ activeDisplayMode: NCWidgetDisplayMode, withMaximumSize maxSize: CGSize)
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "This method will not be called on widgets linked against iOS versions 10.0 and later.")
  optional func widgetMarginInsets(forProposedMarginInsets defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets
}
@available(iOS, introduced: 10.0, deprecated: 14.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
extension NSExtensionContext {
  @available(iOS, introduced: 10.0, deprecated: 14.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  var widgetLargestAvailableDisplayMode: NCWidgetDisplayMode
  @available(iOS, introduced: 10.0, deprecated: 14.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  var widgetActiveDisplayMode: NCWidgetDisplayMode { get }
  @available(iOS, introduced: 10.0, deprecated: 14.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  func widgetMaximumSize(for displayMode: NCWidgetDisplayMode) -> CGSize
}
extension UIVibrancyEffect {
  @available(iOS, introduced: 13.0, deprecated: 14.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
  class func widgetEffect(forVibrancyStyle vibrancyStyle: UIVibrancyEffectStyle) -> UIVibrancyEffect
}
extension UIVibrancyEffect {
  @available(iOS, introduced: 10.0, deprecated: 13.0)
  class func widgetPrimary() -> UIVibrancyEffect
  @available(iOS, introduced: 10.0, deprecated: 13.0)
  class func widgetSecondary() -> UIVibrancyEffect
  @available(iOS, introduced: 8.0, deprecated: 10.0)
  class func notificationCenter() -> UIVibrancyEffect
}
