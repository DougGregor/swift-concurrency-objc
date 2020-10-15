
struct NSAppKitVersion : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: Double)
  init(rawValue: Double)
  let rawValue: Double
}

@available(swift 4)
extension NSAppKitVersion : _AppKitKitNumericRawRepresentable {
}
extension NSAppKitVersion {
  static let current: NSAppKitVersion
  static let macOS10_0: NSAppKitVersion
  static let macOS10_1: NSAppKitVersion
  static let macOS10_2: NSAppKitVersion
  static let macOS10_2_3: NSAppKitVersion
  static let macOS10_3: NSAppKitVersion
  static let macOS10_3_2: NSAppKitVersion
  static let macOS10_3_3: NSAppKitVersion
  static let macOS10_3_5: NSAppKitVersion
  static let macOS10_3_7: NSAppKitVersion
  static let macOS10_3_9: NSAppKitVersion
  static let macOS10_4: NSAppKitVersion
  static let macOS10_4_1: NSAppKitVersion
  static let macOS10_4_3: NSAppKitVersion
  static let macOS10_4_4: NSAppKitVersion
  static let macOS10_4_7: NSAppKitVersion
  static let macOS10_5: NSAppKitVersion
  static let macOS10_5_2: NSAppKitVersion
  static let macOS10_5_3: NSAppKitVersion
  static let macOS10_6: NSAppKitVersion
  static let macOS10_7: NSAppKitVersion
  static let macOS10_7_2: NSAppKitVersion
  static let macOS10_7_3: NSAppKitVersion
  static let macOS10_7_4: NSAppKitVersion
  static let macOS10_8: NSAppKitVersion
  static let macOS10_9: NSAppKitVersion
  static let macOS10_10: NSAppKitVersion
  static let macOS10_10_2: NSAppKitVersion
  static let macOS10_10_3: NSAppKitVersion
  static let macOS10_10_4: NSAppKitVersion
  static let macOS10_10_5: NSAppKitVersion
  static let macOS10_10_Max: NSAppKitVersion
  static let macOS10_11: NSAppKitVersion
  static let macOS10_11_1: NSAppKitVersion
  static let macOS10_11_2: NSAppKitVersion
  static let macOS10_11_3: NSAppKitVersion
  static let macOS10_12: NSAppKitVersion
  static let macOS10_12_1: NSAppKitVersion
  static let macOS10_12_2: NSAppKitVersion
  static let macOS10_13: NSAppKitVersion
  static let macOS10_13_1: NSAppKitVersion
  static let macOS10_13_2: NSAppKitVersion
  static let macOS10_13_4: NSAppKitVersion
  static let number10_14: NSAppKitVersion
  static let number10_14_1: NSAppKitVersion
  static let number10_14_2: NSAppKitVersion
  static let number10_14_3: NSAppKitVersion
  static let number10_14_4: NSAppKitVersion
  static let number10_14_5: NSAppKitVersion
  static let number10_15: NSAppKitVersion
}
extension RunLoop.Mode {
  static let modalPanel: RunLoop.Mode
  static let eventTracking: RunLoop.Mode
}
extension NSApplication.ModalResponse {
  @available(macOS 10.9, *)
  static let stop: NSApplication.ModalResponse
  @available(macOS 10.9, *)
  static let abort: NSApplication.ModalResponse
  @available(macOS 10.9, *)
  static let `continue`: NSApplication.ModalResponse
}
class NSApplication : NSResponder, NSUserInterfaceValidations, NSMenuItemValidation, NSAccessibilityElementProtocol, NSAccessibilityProtocol {
  class var shared: NSApplication { get }
  weak var delegate: @sil_weak NSApplicationDelegate?
  func hide(_ sender: Any?)
  func unhide(_ sender: Any?)
  func unhideWithoutActivation()
  func window(withWindowNumber windowNum: Int) -> NSWindow?
  weak var mainWindow: @sil_weak NSWindow? { get }
  weak var keyWindow: @sil_weak NSWindow? { get }
  var isActive: Bool { get }
  var isHidden: Bool { get }
  var isRunning: Bool { get }
  func deactivate()
  func activate(ignoringOtherApps flag: Bool)
  func hideOtherApplications(_ sender: Any?)
  func unhideAllApplications(_ sender: Any?)
  func finishLaunching()
  func run()
  func runModal(for window: NSWindow) -> NSApplication.ModalResponse
  func stop(_ sender: Any?)
  func stopModal()
  func stopModal(withCode returnCode: NSApplication.ModalResponse)
  func abortModal()
  var modalWindow: NSWindow? { get }
  func beginModalSession(for window: NSWindow) -> NSApplication.ModalSession
  func runModalSession(_ session: NSApplication.ModalSession) -> NSApplication.ModalResponse
  func endModalSession(_ session: NSApplication.ModalSession)
  func terminate(_ sender: Any?)
  func requestUserAttention(_ requestType: NSApplication.RequestUserAttentionType) -> Int
  func cancelUserAttentionRequest(_ request: Int)
  @available(macOS 10.12, *)
  func enumerateWindows(options: NSApplication.WindowListOptions = [], using block: (NSWindow, UnsafeMutablePointer<ObjCBool>) -> Void)
  func preventWindowOrdering()
  var windows: [NSWindow] { get }
  func setWindowsNeedUpdate(_ needUpdate: Bool)
  func updateWindows()
  var mainMenu: NSMenu?
  @available(macOS 10.6, *)
  var helpMenu: NSMenu?
  var applicationIconImage: NSImage!
  @available(macOS 10.6, *)
  func activationPolicy() -> NSApplication.ActivationPolicy
  @available(macOS 10.6, *)
  func setActivationPolicy(_ activationPolicy: NSApplication.ActivationPolicy) -> Bool
  @available(macOS 10.5, *)
  var dockTile: NSDockTile { get }
  func reportException(_ exception: NSException)
  class func detachDrawingThread(_ selector: Selector, toTarget target: Any, with argument: Any?)
  func reply(toApplicationShouldTerminate shouldTerminate: Bool)
  func reply(toOpenOrPrint reply: NSApplication.DelegateReply)
  func orderFrontCharacterPalette(_ sender: Any?)
  @available(macOS 10.6, *)
  var presentationOptions: NSApplication.PresentationOptions
  @available(macOS 10.6, *)
  var currentSystemPresentationOptions: NSApplication.PresentationOptions { get }
  @available(macOS 10.9, *)
  var occlusionState: NSApplication.OcclusionState { get }
}

extension NSApplication {
  @available(swift 4)
  static func loadApplication()
}
var NSApp: NSApplication!
extension NSApplication {
  enum RequestUserAttentionType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case criticalRequest
    case informationalRequest
  }
  enum DelegateReply : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case success
    case cancel
    case failure
  }
  enum TerminateReply : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case terminateCancel
    case terminateNow
    case terminateLater
  }
  enum PrintReply : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case printingCancelled
    case printingSuccess
    case printingFailure
    case printingReplyLater
  }
  struct AboutPanelOptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct RemoteNotificationType : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    @available(macOS 10.7, *)
    static var badge: NSApplication.RemoteNotificationType { get }
    @available(macOS 10.8, *)
    static var sound: NSApplication.RemoteNotificationType { get }
    @available(macOS 10.8, *)
    static var alert: NSApplication.RemoteNotificationType { get }
  }
  class let didBecomeActiveNotification: NSNotification.Name
  class let didHideNotification: NSNotification.Name
  class let didFinishLaunchingNotification: NSNotification.Name
  class let didResignActiveNotification: NSNotification.Name
  class let didUnhideNotification: NSNotification.Name
  class let didUpdateNotification: NSNotification.Name
  class let willBecomeActiveNotification: NSNotification.Name
  class let willHideNotification: NSNotification.Name
  class let willFinishLaunchingNotification: NSNotification.Name
  class let willResignActiveNotification: NSNotification.Name
  class let willUnhideNotification: NSNotification.Name
  class let willUpdateNotification: NSNotification.Name
  class let willTerminateNotification: NSNotification.Name
  class let didChangeScreenParametersNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let launchIsDefaultUserInfoKey: String
  @available(macOS 10.8, *)
  class let launchUserNotificationUserInfoKey: String
  @available(macOS 10.9, *)
  class let didChangeOcclusionStateNotification: NSNotification.Name
  struct ModalResponse : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: Int)
    init(rawValue: Int)
    let rawValue: Int
  }
  class var updateWindowsRunLoopOrdering: Int { get }
  @available(macOS 10.6, *)
  struct PresentationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var autoHideDock: NSApplication.PresentationOptions { get }
    static var hideDock: NSApplication.PresentationOptions { get }
    static var autoHideMenuBar: NSApplication.PresentationOptions { get }
    static var hideMenuBar: NSApplication.PresentationOptions { get }
    static var disableAppleMenu: NSApplication.PresentationOptions { get }
    static var disableProcessSwitching: NSApplication.PresentationOptions { get }
    static var disableForceQuit: NSApplication.PresentationOptions { get }
    static var disableSessionTermination: NSApplication.PresentationOptions { get }
    static var disableHideApplication: NSApplication.PresentationOptions { get }
    static var disableMenuBarTransparency: NSApplication.PresentationOptions { get }
    @available(macOS 10.7, *)
    static var fullScreen: NSApplication.PresentationOptions { get }
    @available(macOS 10.7, *)
    static var autoHideToolbar: NSApplication.PresentationOptions { get }
    @available(macOS 10.11.2, *)
    static var disableCursorLocationAssistance: NSApplication.PresentationOptions { get }
  }
  @available(macOS 10.9, *)
  struct OcclusionState : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var visible: NSApplication.OcclusionState { get }
  }
  @available(macOS 10.12, *)
  struct WindowListOptions : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    static var orderedFrontToBack: NSApplication.WindowListOptions { get }
  }
  typealias ModalSession = OpaquePointer
}
extension NSApplication : NSAppearanceCustomization {
}
extension NSApplication {
  func sendEvent(_ event: NSEvent)
  func postEvent(_ event: NSEvent, atStart flag: Bool)
  var currentEvent: NSEvent? { get }
  func nextEvent(matching mask: NSEvent.EventTypeMask, until expiration: Date?, inMode mode: RunLoop.Mode, dequeue deqFlag: Bool) -> NSEvent?
  func discardEvents(matching mask: NSEvent.EventTypeMask, before lastEvent: NSEvent?)
}
extension NSApplication {
  func sendAction(_ action: Selector, to target: Any?, from sender: Any?) -> Bool
  func target(forAction action: Selector) -> Any?
  func target(forAction action: Selector, to target: Any?, from sender: Any?) -> Any?
}
extension NSApplication {
  var windowsMenu: NSMenu?
  func arrangeInFront(_ sender: Any?)
  func removeWindowsItem(_ win: NSWindow)
  func addWindowsItem(_ win: NSWindow, title string: String, filename isFilename: Bool)
  func changeWindowsItem(_ win: NSWindow, title string: String, filename isFilename: Bool)
  func updateWindowsItem(_ win: NSWindow)
  func miniaturizeAll(_ sender: Any?)
}
extension NSApplication {
  @available(macOS 10.6, *)
  var isFullKeyboardAccessEnabled: Bool { get }
}
protocol NSApplicationDelegate : NSObjectProtocol {
  optional func applicationShouldTerminate(_ sender: NSApplication) -> NSApplication.TerminateReply
  @available(macOS 10.13, *)
  optional func application(_ application: NSApplication, open urls: [URL])
  optional func application(_ sender: NSApplication, openFile filename: String) -> Bool
  optional func application(_ sender: NSApplication, openFiles filenames: [String])
  optional func application(_ sender: NSApplication, openTempFile filename: String) -> Bool
  optional func applicationShouldOpenUntitledFile(_ sender: NSApplication) -> Bool
  optional func applicationOpenUntitledFile(_ sender: NSApplication) -> Bool
  optional func application(_ sender: Any, openFileWithoutUI filename: String) -> Bool
  optional func application(_ sender: NSApplication, printFile filename: String) -> Bool
  optional func application(_ application: NSApplication, printFiles fileNames: [String], withSettings printSettings: [NSPrintInfo.AttributeKey : Any], showPrintPanels: Bool) -> NSApplication.PrintReply
  optional func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool
  optional func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool
  optional func applicationDockMenu(_ sender: NSApplication) -> NSMenu?
  optional func application(_ application: NSApplication, willPresentError error: Error) -> Error
  @available(macOS 10.7, *)
  @asyncHandler optional func application(_ application: NSApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data)
  @available(macOS 10.7, *)
  @asyncHandler optional func application(_ application: NSApplication, didFailToRegisterForRemoteNotificationsWithError error: Error)
  @available(macOS 10.7, *)
  @asyncHandler optional func application(_ application: NSApplication, didReceiveRemoteNotification userInfo: [String : Any])
  @available(macOS 10.7, *)
  optional func application(_ app: NSApplication, willEncodeRestorableState coder: NSCoder)
  @available(macOS 10.7, *)
  @asyncHandler optional func application(_ app: NSApplication, didDecodeRestorableState coder: NSCoder)
  @available(macOS 10.10, *)
  optional func application(_ application: NSApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  @available(macOS 10.10, *)
  optional func application(_ application: NSApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([NSUserActivityRestoring]) -> Void) -> Bool
  @available(macOS 10.10, *)
  @asyncHandler optional func application(_ application: NSApplication, didFailToContinueUserActivityWithType userActivityType: String, error: Error)
  @available(macOS 10.10, *)
  @asyncHandler optional func application(_ application: NSApplication, didUpdate userActivity: NSUserActivity)
  @available(macOS 10.12, *)
  optional func application(_ application: NSApplication, userDidAcceptCloudKitShareWith metadata: CKShare.Metadata)
  optional func application(_ sender: NSApplication, delegateHandlesKey key: String) -> Bool
  optional func applicationWillFinishLaunching(_ notification: Notification)
  @asyncHandler optional func applicationDidFinishLaunching(_ notification: Notification)
  optional func applicationWillHide(_ notification: Notification)
  @asyncHandler optional func applicationDidHide(_ notification: Notification)
  optional func applicationWillUnhide(_ notification: Notification)
  @asyncHandler optional func applicationDidUnhide(_ notification: Notification)
  optional func applicationWillBecomeActive(_ notification: Notification)
  @asyncHandler optional func applicationDidBecomeActive(_ notification: Notification)
  optional func applicationWillResignActive(_ notification: Notification)
  @asyncHandler optional func applicationDidResignActive(_ notification: Notification)
  optional func applicationWillUpdate(_ notification: Notification)
  @asyncHandler optional func applicationDidUpdate(_ notification: Notification)
  optional func applicationWillTerminate(_ notification: Notification)
  @asyncHandler optional func applicationDidChangeScreenParameters(_ notification: Notification)
  @available(macOS 10.9, *)
  @asyncHandler optional func applicationDidChangeOcclusionState(_ notification: Notification)
}

extension NSApplicationDelegate {
  @_alwaysEmitIntoClient static func main()
}
extension NSApplication {
  var servicesMenu: NSMenu?
  func registerServicesMenuSendTypes(_ sendTypes: [NSPasteboard.PasteboardType], returnTypes: [NSPasteboard.PasteboardType])
}
protocol NSServicesMenuRequestor : NSObjectProtocol {
  optional func writeSelection(to pboard: NSPasteboard, types: [NSPasteboard.PasteboardType]) -> Bool
  optional func readSelection(from pboard: NSPasteboard) -> Bool
}
extension NSApplication {
  var servicesProvider: Any?
}
extension NSApplication.AboutPanelOptionKey {
  @available(macOS 10.13, *)
  static let credits: NSApplication.AboutPanelOptionKey
  @available(macOS 10.13, *)
  static let applicationName: NSApplication.AboutPanelOptionKey
  @available(macOS 10.13, *)
  static let applicationIcon: NSApplication.AboutPanelOptionKey
  @available(macOS 10.13, *)
  static let version: NSApplication.AboutPanelOptionKey
  @available(macOS 10.13, *)
  static let applicationVersion: NSApplication.AboutPanelOptionKey
}
extension NSApplication {
  func orderFrontStandardAboutPanel(_ sender: Any?)
  func orderFrontStandardAboutPanel(options optionsDictionary: [NSApplication.AboutPanelOptionKey : Any] = [:])
}
extension NSApplication {
  @available(macOS 10.6, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection { get }
}
extension NSApplication {
  @available(macOS 10.7, *)
  func disableRelaunchOnLogin()
  @available(macOS 10.7, *)
  func enableRelaunchOnLogin()
}
extension NSApplication {
  @available(macOS 10.14, *)
  func registerForRemoteNotifications()
  @available(macOS 10.7, *)
  func unregisterForRemoteNotifications()
  @available(macOS 10.14, *)
  var isRegisteredForRemoteNotifications: Bool { get }
  @available(macOS 10.7, *)
  func registerForRemoteNotifications(matching types: NSApplication.RemoteNotificationType)
  @available(macOS 10.7, *)
  var enabledRemoteNotificationTypes: NSApplication.RemoteNotificationType { get }
}
func __NSApplicationMain(_ argc: Int32, _ argv: UnsafeMutablePointer<UnsafePointer<CChar>>) -> Int32
func __NSApplicationLoad() -> Bool
func NSShowsServicesMenuItem(_ itemName: String) -> Bool
func NSSetShowsServicesMenuItem(_ itemName: String, _ enabled: Bool) -> Int
func NSUpdateDynamicServices()
func NSPerformService(_ itemName: String, _ pboard: NSPasteboard?) -> Bool
typealias NSServiceProviderName = String
func NSRegisterServicesProvider(_ provider: Any?, _ name: NSServiceProviderName)
func NSUnregisterServicesProvider(_ name: NSServiceProviderName)
extension NSApplication {
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use -[NSWindow beginSheet:completionHandler:] instead")
  func beginSheet(_ sheet: NSWindow, modalFor docWindow: NSWindow, modalDelegate: Any?, didEnd didEndSelector: Selector?, contextInfo: UnsafeMutableRawPointer!)
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use -[NSWindow endSheet:] instead")
  func endSheet(_ sheet: NSWindow)
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use -[NSWindow endSheet:returnCode:] instead")
  func endSheet(_ sheet: NSWindow, returnCode: Int)
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use -enumerateWindowsWithOptions:usingBlock: instead")
  func makeWindowsPerform(_ selector: Selector, inOrder flag: Bool) -> NSWindow?
  @available(macOS, introduced: 10.0, deprecated: 10.12, message: "This method always returns nil. If you need access to the current drawing context, use [NSGraphicsContext currentContext] inside of a draw operation.")
  var context: NSGraphicsContext? { get }
}
@available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use NSModalResponseStop instead")
var NSRunStoppedResponse: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use NSModalResponseAbort instead")
var NSRunAbortedResponse: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use NSModalResponseContinue instead")
var NSRunContinuesResponse: Int { get }
