
@available(iOS 8.2, *)
extension WKInterfaceController {
  class func reloadRootControllers(withNamesAndContexts namesAndContexts: [(name: String, context: AnyObject)])
  @available(*, deprecated, renamed: "presentController(withNamesAndContexts:)")
  @nonobjc final func presentController(_ namesAndContexts: [(name: String, context: AnyObject)])
  func presentController(withNamesAndContexts namesAndContexts: [(name: String, context: AnyObject)])
}


// MARK: - SwiftUI Additions


// Available when SwiftUI is imported with WatchKit
@available(watchOS 7.0, *)
struct NowPlayingView : View {
  init()
}

