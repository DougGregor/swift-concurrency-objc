
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
class NCWidgetController : NSObject {
  class func widgetController() -> Self
  @available(*, deprecated, message: "Use widgetController instead.")
  class func `default`() -> NCWidgetController
  func setHasContent(_ flag: Bool, forWidgetWithBundleIdentifier bundleID: String)
}
