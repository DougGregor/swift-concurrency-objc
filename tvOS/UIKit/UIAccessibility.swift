
extension NSObject {
  var isAccessibilityElement: Bool
  var accessibilityLabel: String?
  @available(tvOS 11.0, *)
  @NSCopying var accessibilityAttributedLabel: NSAttributedString?
  var accessibilityHint: String?
  @available(tvOS 11.0, *)
  @NSCopying var accessibilityAttributedHint: NSAttributedString?
  var accessibilityValue: String?
  @available(tvOS 11.0, *)
  @NSCopying var accessibilityAttributedValue: NSAttributedString?
  var accessibilityTraits: UIAccessibilityTraits
  var accessibilityFrame: CGRect
  @available(tvOS 7.0, *)
  @NSCopying var accessibilityPath: UIBezierPath?
  @available(tvOS 5.0, *)
  var accessibilityActivationPoint: CGPoint
  var accessibilityLanguage: String?
  @available(tvOS 5.0, *)
  var accessibilityElementsHidden: Bool
  @available(tvOS 5.0, *)
  var accessibilityViewIsModal: Bool
  @available(tvOS 6.0, *)
  var shouldGroupAccessibilityChildren: Bool
  @available(tvOS 8.0, *)
  var accessibilityNavigationStyle: UIAccessibilityNavigationStyle
  @available(tvOS 13.0, *)
  var accessibilityRespondsToUserInteraction: Bool
  @available(tvOS 13.0, *)
  var accessibilityUserInputLabels: [String]!
  @available(tvOS 13.0, *)
  var accessibilityAttributedUserInputLabels: [NSAttributedString]!
  @available(tvOS 9.0, *)
  var accessibilityHeaderElements: [Any]?
  @available(tvOS 13.0, *)
  var accessibilityTextualContext: UIAccessibilityTextualContext?
  class func isAccessibilityElement() -> Bool
  class func setIsAccessibilityElement(_ isAccessibilityElement: Bool)
  class func accessibilityLabel() -> String?
  class func setAccessibilityLabel(_ accessibilityLabel: String?)
  class func accessibilityAttributedLabel() -> NSAttributedString?
  class func setAccessibilityAttributedLabel(_ accessibilityAttributedLabel: NSAttributedString?)
  class func accessibilityHint() -> String?
  class func setAccessibilityHint(_ accessibilityHint: String?)
  class func accessibilityAttributedHint() -> NSAttributedString?
  class func setAccessibilityAttributedHint(_ accessibilityAttributedHint: NSAttributedString?)
  class func accessibilityValue() -> String?
  class func setAccessibilityValue(_ accessibilityValue: String?)
  class func accessibilityAttributedValue() -> NSAttributedString?
  class func setAccessibilityAttributedValue(_ accessibilityAttributedValue: NSAttributedString?)
  class func accessibilityTraits() -> UIAccessibilityTraits
  class func setAccessibilityTraits(_ accessibilityTraits: UIAccessibilityTraits)
  class func accessibilityFrame() -> CGRect
  class func setAccessibilityFrame(_ accessibilityFrame: CGRect)
  class func accessibilityPath() -> UIBezierPath?
  class func setAccessibilityPath(_ accessibilityPath: UIBezierPath?)
  class func accessibilityActivationPoint() -> CGPoint
  class func setAccessibilityActivationPoint(_ accessibilityActivationPoint: CGPoint)
  class func accessibilityLanguage() -> String?
  class func setAccessibilityLanguage(_ accessibilityLanguage: String?)
  class func accessibilityElementsHidden() -> Bool
  class func setAccessibilityElementsHidden(_ accessibilityElementsHidden: Bool)
  class func accessibilityViewIsModal() -> Bool
  class func setAccessibilityViewIsModal(_ accessibilityViewIsModal: Bool)
  class func shouldGroupAccessibilityChildren() -> Bool
  class func setShouldGroupAccessibilityChildren(_ shouldGroupAccessibilityChildren: Bool)
  class func accessibilityNavigationStyle() -> UIAccessibilityNavigationStyle
  class func setAccessibilityNavigationStyle(_ accessibilityNavigationStyle: UIAccessibilityNavigationStyle)
  class func accessibilityRespondsToUserInteraction() -> Bool
  class func setAccessibilityRespondsToUserInteraction(_ accessibilityRespondsToUserInteraction: Bool)
  class func accessibilityUserInputLabels() -> [String]!
  class func setAccessibilityUserInputLabels(_ accessibilityUserInputLabels: [String]?)
  class func accessibilityAttributedUserInputLabels() -> [NSAttributedString]!
  class func setAccessibilityAttributedUserInputLabels(_ accessibilityAttributedUserInputLabels: [NSAttributedString]?)
  class func accessibilityHeaderElements() -> [Any]?
  class func setAccessibilityHeaderElements(_ accessibilityHeaderElements: [Any]?)
  class func accessibilityTextualContext() -> UIAccessibilityTextualContext?
  class func setAccessibilityTextualContext(_ accessibilityTextualContext: UIAccessibilityTextualContext?)
}
extension UIAccessibility {
  @available(tvOS 7.0, *)
  static func convertToScreenCoordinates(_ rect: CGRect, in view: UIView) -> CGRect
  @available(tvOS 7.0, *)
  static func convertToScreenCoordinates(_ path: UIBezierPath, in view: UIView) -> UIBezierPath
  @available(tvOS 9.0, *)
  static func focusedElement(using assistiveTechnologyIdentifier: UIAccessibility.AssistiveTechnologyIdentifier?) -> Any?
  static func post(notification: UIAccessibility.Notification, argument: Any?)
  @available(tvOS 4.0, *)
  static var isVoiceOverRunning: Bool { get }
  @available(tvOS 11.0, *)
  static let voiceOverStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 5.0, *)
  static var isMonoAudioEnabled: Bool { get }
  @available(tvOS 5.0, *)
  static let monoAudioStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 5.0, *)
  static var isClosedCaptioningEnabled: Bool { get }
  @available(tvOS 5.0, *)
  static let closedCaptioningStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 6.0, *)
  static var isInvertColorsEnabled: Bool { get }
  @available(tvOS 6.0, *)
  static let invertColorsStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 6.0, *)
  static var isGuidedAccessEnabled: Bool { get }
  @available(tvOS 6.0, *)
  static let guidedAccessStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 8.0, *)
  static var isBoldTextEnabled: Bool { get }
  @available(tvOS 8.0, *)
  static let boldTextStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 14.0, *)
  static var buttonShapesEnabled: Bool { get }
  @available(tvOS 14.0, *)
  static let buttonShapesEnabledStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 8.0, *)
  static var isGrayscaleEnabled: Bool { get }
  @available(tvOS 8.0, *)
  static let grayscaleStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 8.0, *)
  static var isReduceTransparencyEnabled: Bool { get }
  @available(tvOS 8.0, *)
  static let reduceTransparencyStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 8.0, *)
  static var isReduceMotionEnabled: Bool { get }
  @available(tvOS 8.0, *)
  static let reduceMotionStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 14.0, *)
  static var prefersCrossFadeTransitions: Bool { get }
  @available(tvOS 14.0, *)
  static let prefersCrossFadeTransitionsStatusDidChange: NSNotification.Name
  @available(tvOS 13.0, *)
  static var isVideoAutoplayEnabled: Bool { get }
  @available(tvOS 13.0, *)
  static let videoAutoplayStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 8.0, *)
  static var isDarkerSystemColorsEnabled: Bool { get }
  @available(tvOS 8.0, *)
  static let darkerSystemColorsStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 8.0, *)
  static var isSwitchControlRunning: Bool { get }
  @available(tvOS 8.0, *)
  static let switchControlStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 8.0, *)
  static var isSpeakSelectionEnabled: Bool { get }
  @available(tvOS 8.0, *)
  static let speakSelectionStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 8.0, *)
  static var isSpeakScreenEnabled: Bool { get }
  @available(tvOS 8.0, *)
  static let speakScreenStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 9.0, *)
  static var isShakeToUndoEnabled: Bool { get }
  @available(tvOS 9.0, *)
  static let shakeToUndoDidChangeNotification: NSNotification.Name
  @available(tvOS 10.0, *)
  static var isAssistiveTouchRunning: Bool { get }
  @available(tvOS 10.0, *)
  static let assistiveTouchStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 13.0, *)
  static var shouldDifferentiateWithoutColor: Bool { get }
  @available(tvOS 13.0, *)
  static let differentiateWithoutColorDidChangeNotification: String
  @available(tvOS 13.0, *)
  static var isOnOffSwitchLabelsEnabled: Bool { get }
  @available(tvOS 13.0, *)
  static let onOffSwitchLabelsDidChangeNotification: NSNotification.Name
  @available(tvOS 7.0, *)
  static func requestGuidedAccessSession(enabled enable: Bool, completionHandler: @escaping (Bool) -> Void)
  @available(tvOS 10.0, *)
  struct HearingDeviceEar : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var left: UIAccessibility.HearingDeviceEar { get }
    static var right: UIAccessibility.HearingDeviceEar { get }
    static var both: UIAccessibility.HearingDeviceEar { get }
  }
  @available(tvOS 10.0, *)
  static var hearingDevicePairedEar: UIAccessibility.HearingDeviceEar { get }
  @available(tvOS 10.0, *)
  static let hearingDevicePairedEarDidChangeNotification: NSNotification.Name
}
extension NSObject {
  @available(tvOS 4.0, *)
  class func accessibilityElementDidBecomeFocused()
  @available(tvOS 4.0, *)
  func accessibilityElementDidBecomeFocused()
  @available(tvOS 4.0, *)
  class func accessibilityElementDidLoseFocus()
  @available(tvOS 4.0, *)
  func accessibilityElementDidLoseFocus()
  @available(tvOS 4.0, *)
  class func accessibilityElementIsFocused() -> Bool
  @available(tvOS 4.0, *)
  func accessibilityElementIsFocused() -> Bool
  @available(tvOS 9.0, *)
  class func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<UIAccessibility.AssistiveTechnologyIdentifier>?
  @available(tvOS 9.0, *)
  func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<UIAccessibility.AssistiveTechnologyIdentifier>?
}
extension NSObject {
  @available(tvOS 7.0, *)
  class func accessibilityActivate() -> Bool
  @available(tvOS 7.0, *)
  func accessibilityActivate() -> Bool
  @available(tvOS 4.0, *)
  class func accessibilityIncrement()
  @available(tvOS 4.0, *)
  func accessibilityIncrement()
  @available(tvOS 4.0, *)
  class func accessibilityDecrement()
  @available(tvOS 4.0, *)
  func accessibilityDecrement()
  @available(tvOS 4.2, *)
  class func accessibilityScroll(_ direction: UIAccessibilityScrollDirection) -> Bool
  @available(tvOS 4.2, *)
  func accessibilityScroll(_ direction: UIAccessibilityScrollDirection) -> Bool
  @available(tvOS 5.0, *)
  class func accessibilityPerformEscape() -> Bool
  @available(tvOS 5.0, *)
  func accessibilityPerformEscape() -> Bool
  @available(tvOS 6.0, *)
  class func accessibilityPerformMagicTap() -> Bool
  @available(tvOS 6.0, *)
  func accessibilityPerformMagicTap() -> Bool
  @available(tvOS 8.0, *)
  var accessibilityCustomActions: [UIAccessibilityCustomAction]?
  class func accessibilityCustomActions() -> [UIAccessibilityCustomAction]?
  class func setAccessibilityCustomActions(_ accessibilityCustomActions: [UIAccessibilityCustomAction]?)
}
enum UIAccessibilityScrollDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case right
  case left
  case up
  case down
  @available(tvOS 5.0, *)
  case next
  @available(tvOS 5.0, *)
  case previous
}
protocol UIAccessibilityReadingContent {
  @available(tvOS 5.0, *)
  func accessibilityLineNumber(for point: CGPoint) -> Int
  @available(tvOS 5.0, *)
  func accessibilityContent(forLineNumber lineNumber: Int) -> String?
  @available(tvOS 5.0, *)
  func accessibilityFrame(forLineNumber lineNumber: Int) -> CGRect
  @available(tvOS 5.0, *)
  func accessibilityPageContent() -> String?
  @available(tvOS 11.0, *)
  optional func accessibilityAttributedContent(forLineNumber lineNumber: Int) -> NSAttributedString?
  @available(tvOS 11.0, *)
  optional func accessibilityAttributedPageContent() -> NSAttributedString?
}
extension NSObject {
  class func accessibilityDragSourceDescriptors() -> [UIAccessibilityLocationDescriptor]?
  class func setAccessibilityDragSourceDescriptors(_ accessibilityDragSourceDescriptors: [UIAccessibilityLocationDescriptor]?)
  class func accessibilityDropPointDescriptors() -> [UIAccessibilityLocationDescriptor]?
  class func setAccessibilityDropPointDescriptors(_ accessibilityDropPointDescriptors: [UIAccessibilityLocationDescriptor]?)
}
@available(tvOS, introduced: 9.0, deprecated: 11.0, renamed: "UIAccessibility.voiceOverStatusDidChangeNotification")
let UIAccessibilityVoiceOverStatusChanged: String
