
struct UIAccessibilityTraits : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  let rawValue: UInt64
}

extension UIAccessibilityTraits : OptionSet {
}
extension UIAccessibilityTraits {
  static var none: UIAccessibilityTraits
  static var button: UIAccessibilityTraits
  static var link: UIAccessibilityTraits
  @available(tvOS 6.0, *)
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
  @available(tvOS 4.0, *)
  static var startsMediaSession: UIAccessibilityTraits
  @available(tvOS 4.0, *)
  static var adjustable: UIAccessibilityTraits
  @available(tvOS 5.0, *)
  static var allowsDirectInteraction: UIAccessibilityTraits
  @available(tvOS 5.0, *)
  static var causesPageTurn: UIAccessibilityTraits
  @available(tvOS 10.0, *)
  static var tabBar: UIAccessibilityTraits
}
extension UIAccessibility {
  struct Notification : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: UInt32)
    let rawValue: UInt32
  }
  @available(tvOS 6.0, *)
  static let announcementDidFinishNotification: NSNotification.Name
  @available(tvOS 6.0, *)
  static let announcementStringValueUserInfoKey: String
  @available(tvOS 6.0, *)
  static let announcementWasSuccessfulUserInfoKey: String
  @available(tvOS 9.0, *)
  static let elementFocusedNotification: NSNotification.Name
  @available(tvOS 9.0, *)
  static let focusedElementUserInfoKey: String
  @available(tvOS 9.0, *)
  static let unfocusedElementUserInfoKey: String
  @available(tvOS 9.0, *)
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
  @available(tvOS 4.0, *)
  static var announcement: UIAccessibility.Notification
  @available(tvOS 4.2, *)
  static var pageScrolled: UIAccessibility.Notification
  @available(tvOS 8.0, *)
  static var pauseAssistiveTechnology: UIAccessibility.Notification
  @available(tvOS 8.0, *)
  static var resumeAssistiveTechnology: UIAccessibility.Notification
}
extension UIAccessibility.AssistiveTechnologyIdentifier {
  @available(tvOS 8.0, *)
  static let notificationSwitchControl: UIAccessibility.AssistiveTechnologyIdentifier
  @available(tvOS 9.0, *)
  static let notificationVoiceOver: UIAccessibility.AssistiveTechnologyIdentifier
}
@available(tvOS 8.0, *)
enum UIAccessibilityNavigationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case separate
  case combined
}
@available(tvOS 11.0, *)
enum UIAccessibilityContainerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case dataTable
  case list
  case landmark
  @available(tvOS 13.0, *)
  case semanticGroup
}
@available(tvOS 13.0, *)
struct UIAccessibilityTextualContext : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension UIAccessibilityTextualContext {
  @available(tvOS 13.0, *)
  static let wordProcessing: UIAccessibilityTextualContext
  @available(tvOS 13.0, *)
  static let narrative: UIAccessibilityTextualContext
  @available(tvOS 13.0, *)
  static let messaging: UIAccessibilityTextualContext
  @available(tvOS 13.0, *)
  static let spreadsheet: UIAccessibilityTextualContext
  @available(tvOS 13.0, *)
  static let fileSystem: UIAccessibilityTextualContext
  @available(tvOS 13.0, *)
  static let sourceCode: UIAccessibilityTextualContext
  @available(tvOS 13.0, *)
  static let console: UIAccessibilityTextualContext
}
extension NSAttributedString.Key {
  @available(tvOS 7.0, *)
  static let accessibilitySpeechPunctuation: NSAttributedString.Key
  @available(tvOS 7.0, *)
  static let accessibilitySpeechLanguage: NSAttributedString.Key
  @available(tvOS 7.0, *)
  static let accessibilitySpeechPitch: NSAttributedString.Key
  @available(tvOS 11.0, *)
  static let accessibilitySpeechQueueAnnouncement: NSAttributedString.Key
  @available(tvOS 11.0, *)
  static let accessibilitySpeechIPANotation: NSAttributedString.Key
  @available(tvOS 13.0, *)
  static let accessibilitySpeechSpellOut: NSAttributedString.Key
  @available(tvOS 11.0, *)
  static let accessibilityTextHeadingLevel: NSAttributedString.Key
  @available(tvOS 11.0, *)
  static let accessibilityTextCustom: NSAttributedString.Key
  @available(tvOS 13.0, *)
  static let UIAccessibilityTextAttributeContext: NSAttributedString.Key
}
struct UIAccessibility {
  var _reserved: UnsafeMutableRawPointer
  init(_reserved: UnsafeMutableRawPointer)
}
