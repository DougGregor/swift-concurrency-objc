
@available(watchOS 2.0, *)
enum WKUserNotificationInterfaceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case custom
}
@available(watchOS 2.0, *)
@available(watchOS, deprecated: 7.0)
enum WKMenuItemIcon : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case accept
  case add
  case block
  case decline
  case info
  case maybe
  case more
  case mute
  case pause
  case play
  case `repeat`
  case resume
  case share
  case shuffle
  case speaker
  case trash
}
enum WKTextInputMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case plain
  case allowEmoji
  @available(watchOS, introduced: 2.0, deprecated: 6.0, message: "Animated Emojis are no longer supported. Use WKTextInputModeAllowEmoji instead")
  case allowAnimatedEmoji
}
@available(watchOS 2.0, *)
enum WKAlertControllerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case alert
  case sideBySideButtonsAlert
  case actionSheet
}
@available(watchOS 4.0, *)
enum WKPageOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case horizontal
  case vertical
}
@available(watchOS 4.0, *)
enum WKInterfaceScrollPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case top
  case centeredVertically
  case bottom
}
@available(watchOS 2.0, *)
enum WKVideoGravity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case resizeAspect
  case resizeAspectFill
  case resize
}
@available(watchOS 2.0, *)
enum WKAudioRecorderPreset : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case narrowBandSpeech
  case wideBandSpeech
  case highQualityAudio
}
@available(watchOS 2.0, *)
class WKInterfaceController : NSObject {
  func awake(withContext context: Any?)
  var contentFrame: CGRect { get }
  var crownSequencer: WKCrownSequencer { get }
  @available(watchOS 5.0, *)
  var contentSafeAreaInsets: UIEdgeInsets { get }
  @available(watchOS 5.0, *)
  var systemMinimumLayoutMargins: NSDirectionalEdgeInsets { get }
  @available(watchOS 5.0, *)
  var isTableScrollingHapticFeedbackEnabled: Bool
  func willActivate()
  func didDeactivate()
  @available(watchOS 2.0, *)
  func didAppear()
  @available(watchOS 2.0, *)
  func willDisappear()
  @available(watchOS 2.0, *)
  func pickerDidFocus(_ picker: WKInterfacePicker)
  @available(watchOS 2.0, *)
  func pickerDidResignFocus(_ picker: WKInterfacePicker)
  @available(watchOS 2.0, *)
  func pickerDidSettle(_ picker: WKInterfacePicker)
  func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int)
  func setTitle(_ title: String?)
  func pushController(withName name: String, context: Any?)
  func pop()
  func popToRootController()
  @available(watchOS 4.0, *)
  func scroll(to object: WKInterfaceObject, at scrollPosition: WKInterfaceScrollPosition, animated: Bool)
  @available(watchOS 4.0, *)
  func interfaceDidScrollToTop()
  @available(watchOS 4.0, *)
  func interfaceOffsetDidScrollToTop()
  @available(watchOS 4.0, *)
  func interfaceOffsetDidScrollToBottom()
  @available(watchOS 4.0, *)
  class func reloadRootPageControllers(withNames names: [String], contexts: [Any]?, orientation: WKPageOrientation, pageIndex: Int)
  func becomeCurrentPage()
  func presentController(withName name: String, context: Any?)
  func presentController(withNames names: [String], contexts: [Any]?)
  func dismiss()
  func presentTextInputController(withSuggestions suggestions: [String]?, allowedInputMode inputMode: WKTextInputMode, completion: @escaping ([Any]?) -> Void)
  func presentTextInputControllerWithSuggestions(forLanguage suggestionsHandler: ((String) -> [Any]?)?, allowedInputMode inputMode: WKTextInputMode, completion: @escaping ([Any]?) -> Void)
  func dismissTextInputController()
  @available(watchOS 2.0, *)
  func presentMediaPlayerController(with URL: URL, options: [AnyHashable : Any]? = nil, completion: @escaping (Bool, TimeInterval, Error?) -> Void)
  @available(watchOS 2.0, *)
  func dismissMediaPlayerController()
  @available(watchOS 2.0, *)
  func presentAudioRecorderController(withOutputURL URL: URL, preset: WKAudioRecorderPreset, options: [AnyHashable : Any]? = nil, completion: @escaping (Bool, Error?) -> Void)
  @available(watchOS 2.0, *)
  func dismissAudioRecorderController()
  func contextForSegue(withIdentifier segueIdentifier: String) -> Any?
  func contextsForSegue(withIdentifier segueIdentifier: String) -> [Any]?
  func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any?
  func contextsForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> [Any]?
  @available(watchOS 2.0, *)
  func animate(withDuration duration: TimeInterval, animations: @escaping () -> Void)
  @available(watchOS 2.0, *)
  func presentAlert(withTitle title: String?, message: String?, preferredStyle: WKAlertControllerStyle, actions: [WKAlertAction])
  @available(watchOS 2.0, *)
  func dismissAddPassesController()
  @available(watchOS 5.0, *)
  func update(_ userActivity: NSUserActivity)
  func invalidateUserActivity()
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 4.0, message: "Glances are no longer supported")
  func beginGlanceUpdates()
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 4.0, message: "Glances are no longer supported")
  func endGlanceUpdates()
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 5.0, message: "use updateUserActivity:")
  func updateUserActivity(_ type: String, userInfo: [AnyHashable : Any]? = nil, webpageURL: URL?)
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 4.0, message: "use reloadRootPageControllersWithNames:contexts:orientation:pageIndex:")
  class func reloadRootControllers(withNames names: [String], contexts: [Any]?)
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 4.0, message: "use WKExtensionDelegate's handleUserActivity:")
  func handleUserActivity(_ userInfo: [AnyHashable : Any]?)
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 7.0)
  func addMenuItem(with image: UIImage, title: String, action: Selector)
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 7.0)
  func addMenuItem(withImageNamed imageName: String, title: String, action: Selector)
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 7.0)
  func addMenuItem(with itemIcon: WKMenuItemIcon, title: String, action: Selector)
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 7.0)
  func clearAllMenuItems()
}

@available(iOS 8.2, *)
extension WKInterfaceController {
  class func reloadRootControllers(withNamesAndContexts namesAndContexts: [(name: String, context: AnyObject)])
  @available(*, deprecated, renamed: "presentController(withNamesAndContexts:)")
  @nonobjc final func presentController(_ namesAndContexts: [(name: String, context: AnyObject)])
  func presentController(withNamesAndContexts namesAndContexts: [(name: String, context: AnyObject)])
}
@available(watchOS 2.0, *)
let WKMediaPlayerControllerOptionsAutoplayKey: String
@available(watchOS 2.0, *)
let WKMediaPlayerControllerOptionsStartTimeKey: String
@available(watchOS 2.0, *)
let WKMediaPlayerControllerOptionsVideoGravityKey: String
@available(watchOS 2.0, *)
let WKMediaPlayerControllerOptionsLoopsKey: String
@available(watchOS 2.0, *)
let WKAudioRecorderControllerOptionsActionTitleKey: String
@available(watchOS 2.0, *)
let WKAudioRecorderControllerOptionsAlwaysShowActionTitleKey: String
@available(watchOS 2.0, *)
let WKAudioRecorderControllerOptionsAutorecordKey: String
@available(watchOS 2.0, *)
let WKAudioRecorderControllerOptionsMaximumDurationKey: String
@available(watchOS 2.0, *)
class WKUserNotificationInterfaceController : WKInterfaceController {
  @available(watchOS 5.0, *)
  func performNotificationDefaultAction()
  @available(watchOS 5.0, *)
  func performDismissAction()
}
