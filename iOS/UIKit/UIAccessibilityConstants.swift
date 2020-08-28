
struct UIAccessibilityTraits : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  let rawValue: UInt64
}

extension UIAccessibilityTraits : OptionSet {
}
extension UIAccessibilityTraits {
  static var none: UIAccessibilityTraits
  static var button: UIAccessibilityTraits
  static var link: UIAccessibilityTraits
  @available(iOS 6.0, *)
  static var header: UIAccessibilityTraits
  static var searchField: UIAccessibilityTraits
  static var image: UIAccessibilityTraits
  static var selected: UIAccessibilityTraits
  static var playsSound: UIAccessibilityTraits
  static var keyboardKey: UIAccessibilityTraits
  static var staticText: UIAccessibilityTraits
  static var summaryElement: UIAccessibilityTraits
  static var notEnabled: UIAccessibilityTraits
  static var updatesFrequently: UIAccessibilityTraits
  @available(iOS 4.0, *)
  static var startsMediaSession: UIAccessibilityTraits
  @available(iOS 4.0, *)
  static var adjustable: UIAccessibilityTraits
  @available(iOS 5.0, *)
  static var allowsDirectInteraction: UIAccessibilityTraits
  @available(iOS 5.0, *)
  static var causesPageTurn: UIAccessibilityTraits
  @available(iOS 10.0, *)
  static var tabBar: UIAccessibilityTraits
}
extension UIAccessibility {
  struct Notification : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: UInt32)
    let rawValue: UInt32
  }
  @available(iOS 6.0, *)
  static let announcementDidFinishNotification: NSNotification.Name
  @available(iOS 6.0, *)
  static let announcementStringValueUserInfoKey: String
  @available(iOS 6.0, *)
  static let announcementWasSuccessfulUserInfoKey: String
  @available(iOS 9.0, *)
  static let elementFocusedNotification: NSNotification.Name
  @available(iOS 9.0, *)
  static let focusedElementUserInfoKey: String
  @available(iOS 9.0, *)
  static let unfocusedElementUserInfoKey: String
  @available(iOS 9.0, *)
  static let assistiveTechnologyUserInfoKey: String
  struct AssistiveTechnologyIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension UIAccessibility.Notification {
  static var screenChanged: UIAccessibility.Notification
  static var layoutChanged: UIAccessibility.Notification
  @available(iOS 4.0, *)
  static var announcement: UIAccessibility.Notification
  @available(iOS 4.2, *)
  static var pageScrolled: UIAccessibility.Notification
  @available(iOS 8.0, *)
  static var pauseAssistiveTechnology: UIAccessibility.Notification
  @available(iOS 8.0, *)
  static var resumeAssistiveTechnology: UIAccessibility.Notification
}
extension UIAccessibility.AssistiveTechnologyIdentifier {
  @available(iOS 8.0, *)
  static let notificationSwitchControl: UIAccessibility.AssistiveTechnologyIdentifier
  @available(iOS 9.0, *)
  static let notificationVoiceOver: UIAccessibility.AssistiveTechnologyIdentifier
}
@available(iOS 8.0, *)
enum UIAccessibilityNavigationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case separate
  case combined
}
@available(iOS 11.0, *)
enum UIAccessibilityContainerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case dataTable
  case list
  case landmark
  @available(iOS 13.0, *)
  case semanticGroup
}
@available(iOS 13.0, *)
struct UIAccessibilityTextualContext : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension UIAccessibilityTextualContext {
  @available(iOS 13.0, *)
  static let wordProcessing: UIAccessibilityTextualContext
  @available(iOS 13.0, *)
  static let narrative: UIAccessibilityTextualContext
  @available(iOS 13.0, *)
  static let messaging: UIAccessibilityTextualContext
  @available(iOS 13.0, *)
  static let spreadsheet: UIAccessibilityTextualContext
  @available(iOS 13.0, *)
  static let fileSystem: UIAccessibilityTextualContext
  @available(iOS 13.0, *)
  static let sourceCode: UIAccessibilityTextualContext
  @available(iOS 13.0, *)
  static let console: UIAccessibilityTextualContext
}
extension NSAttributedString.Key {
  @available(iOS 7.0, *)
  static let accessibilitySpeechPunctuation: NSAttributedString.Key
  @available(iOS 7.0, *)
  static let accessibilitySpeechLanguage: NSAttributedString.Key
  @available(iOS 7.0, *)
  static let accessibilitySpeechPitch: NSAttributedString.Key
  @available(iOS 11.0, *)
  static let accessibilitySpeechQueueAnnouncement: NSAttributedString.Key
  @available(iOS 11.0, *)
  static let accessibilitySpeechIPANotation: NSAttributedString.Key
  @available(iOS 13.0, *)
  static let accessibilitySpeechSpellOut: NSAttributedString.Key
  @available(iOS 11.0, *)
  static let accessibilityTextHeadingLevel: NSAttributedString.Key
  @available(iOS 11.0, *)
  static let accessibilityTextCustom: NSAttributedString.Key
  @available(iOS 13.0, *)
  static let UIAccessibilityTextAttributeContext: NSAttributedString.Key
}
struct UIAccessibility {
  var _reserved: UnsafeMutableRawPointer
  init(_reserved: UnsafeMutableRawPointer)
}
