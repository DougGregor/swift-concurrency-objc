
extension NSPrintPanel {
  @available(macOS 10.5, *)
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var showsCopies: NSPrintPanel.Options { get }
    static var showsPageRange: NSPrintPanel.Options { get }
    static var showsPaperSize: NSPrintPanel.Options { get }
    static var showsOrientation: NSPrintPanel.Options { get }
    static var showsScaling: NSPrintPanel.Options { get }
    @available(macOS 10.6, *)
    static var showsPrintSelection: NSPrintPanel.Options { get }
    static var showsPageSetupAccessory: NSPrintPanel.Options { get }
    static var showsPreview: NSPrintPanel.Options { get }
  }
  struct JobStyleHint : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct AccessorySummaryKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSPrintPanel.JobStyleHint {
  static let photo: NSPrintPanel.JobStyleHint
  @available(macOS 10.6, *)
  static let allPresets: NSPrintPanel.JobStyleHint
  @available(macOS 10.6, *)
  static let noPresets: NSPrintPanel.JobStyleHint
}
extension NSPrintPanel.AccessorySummaryKey {
  @available(macOS 10.5, *)
  static let itemName: NSPrintPanel.AccessorySummaryKey
  @available(macOS 10.5, *)
  static let itemDescription: NSPrintPanel.AccessorySummaryKey
}
protocol NSPrintPanelAccessorizing {
  func localizedSummaryItems() -> [[NSPrintPanel.AccessorySummaryKey : String]]
  optional func keyPathsForValuesAffectingPreview() -> Set<String>
}
class NSPrintPanel : NSObject {
  @available(macOS 10.5, *)
  func addAccessoryController(_ accessoryController: NSViewController & NSPrintPanelAccessorizing)
  @available(macOS 10.5, *)
  func removeAccessoryController(_ accessoryController: NSViewController & NSPrintPanelAccessorizing)
  @available(macOS 10.5, *)
  var accessoryControllers: [NSViewController] { get }
  @available(macOS 10.5, *)
  var options: NSPrintPanel.Options
  @available(macOS 10.5, *)
  func setDefaultButtonTitle(_ defaultButtonTitle: String?)
  @available(macOS 10.5, *)
  func defaultButtonTitle() -> String?
  @available(macOS 10.5, *)
  var helpAnchor: NSHelpManager.AnchorName?
  var jobStyleHint: NSPrintPanel.JobStyleHint?
  func beginSheet(with printInfo: NSPrintInfo, modalFor docWindow: NSWindow, delegate: Any?, didEnd didEndSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  @available(macOS 10.5, *)
  func runModal(with printInfo: NSPrintInfo) -> Int
  func runModal() -> Int
  @available(macOS 10.5, *)
  var printInfo: NSPrintInfo { get }
}
extension NSPrintPanel {
}
