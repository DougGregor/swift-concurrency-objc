
extension NSObject {
  var isAccessibilityElement: Bool
  var accessibilityLabel: String?
  @available(iOS 11.0, *)
  @NSCopying var accessibilityAttributedLabel: NSAttributedString?
  var accessibilityHint: String?
  @available(iOS 11.0, *)
  @NSCopying var accessibilityAttributedHint: NSAttributedString?
  var accessibilityValue: String?
  @available(iOS 11.0, *)
  @NSCopying var accessibilityAttributedValue: NSAttributedString?
  var accessibilityTraits: UIAccessibilityTraits
  var accessibilityFrame: CGRect
  @available(iOS 7.0, *)
  @NSCopying var accessibilityPath: UIBezierPath?
  @available(iOS 5.0, *)
  var accessibilityActivationPoint: CGPoint
  var accessibilityLanguage: String?
  @available(iOS 5.0, *)
  var accessibilityElementsHidden: Bool
  @available(iOS 5.0, *)
  var accessibilityViewIsModal: Bool
  @available(iOS 6.0, *)
  var shouldGroupAccessibilityChildren: Bool
  @available(iOS 8.0, *)
  var accessibilityNavigationStyle: UIAccessibilityNavigationStyle
  @available(iOS 13.0, *)
  var accessibilityRespondsToUserInteraction: Bool
  @available(iOS 13.0, *)
  var accessibilityUserInputLabels: [String]!
  @available(iOS 13.0, *)
  var accessibilityAttributedUserInputLabels: [NSAttributedString]!
  @available(iOS 13.0, *)
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
  @available(iOS 7.0, *)
  static func convertToScreenCoordinates(_ rect: CGRect, in view: UIView) -> CGRect
  @available(iOS 7.0, *)
  static func convertToScreenCoordinates(_ path: UIBezierPath, in view: UIView) -> UIBezierPath
  @available(iOS 9.0, *)
  static func focusedElement(using assistiveTechnologyIdentifier: UIAccessibility.AssistiveTechnologyIdentifier?) -> Any?
  static func post(notification: UIAccessibility.Notification, argument: Any?)
  @available(iOS 4.0, *)
  static var isVoiceOverRunning: Bool { get }
  @available(iOS 11.0, *)
  static let voiceOverStatusDidChangeNotification: NSNotification.Name
  @available(iOS 5.0, *)
  static var isMonoAudioEnabled: Bool { get }
  @available(iOS 5.0, *)
  static let monoAudioStatusDidChangeNotification: NSNotification.Name
  @available(iOS 5.0, *)
  static var isClosedCaptioningEnabled: Bool { get }
  @available(iOS 5.0, *)
  static let closedCaptioningStatusDidChangeNotification: NSNotification.Name
  @available(iOS 6.0, *)
  static var isInvertColorsEnabled: Bool { get }
  @available(iOS 6.0, *)
  static let invertColorsStatusDidChangeNotification: NSNotification.Name
  @available(iOS 6.0, *)
  static var isGuidedAccessEnabled: Bool { get }
  @available(iOS 6.0, *)
  static let guidedAccessStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isBoldTextEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let boldTextStatusDidChangeNotification: NSNotification.Name
  @available(iOS 14.0, *)
  static var buttonShapesEnabled: Bool { get }
  @available(iOS 14.0, *)
  static let buttonShapesEnabledStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isGrayscaleEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let grayscaleStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isReduceTransparencyEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let reduceTransparencyStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isReduceMotionEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let reduceMotionStatusDidChangeNotification: NSNotification.Name
  @available(iOS 14.0, *)
  static var prefersCrossFadeTransitions: Bool { get }
  @available(iOS 14.0, *)
  static let prefersCrossFadeTransitionsStatusDidChange: NSNotification.Name
  @available(iOS 13.0, *)
  static var isVideoAutoplayEnabled: Bool { get }
  @available(iOS 13.0, *)
  static let videoAutoplayStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isDarkerSystemColorsEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let darkerSystemColorsStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isSwitchControlRunning: Bool { get }
  @available(iOS 8.0, *)
  static let switchControlStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isSpeakSelectionEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let speakSelectionStatusDidChangeNotification: NSNotification.Name
  @available(iOS 8.0, *)
  static var isSpeakScreenEnabled: Bool { get }
  @available(iOS 8.0, *)
  static let speakScreenStatusDidChangeNotification: NSNotification.Name
  @available(iOS 9.0, *)
  static var isShakeToUndoEnabled: Bool { get }
  @available(iOS 9.0, *)
  static let shakeToUndoDidChangeNotification: NSNotification.Name
  @available(iOS 10.0, *)
  static var isAssistiveTouchRunning: Bool { get }
  @available(iOS 10.0, *)
  static let assistiveTouchStatusDidChangeNotification: NSNotification.Name
  @available(iOS 13.0, *)
  static var shouldDifferentiateWithoutColor: Bool { get }
  @available(iOS 13.0, *)
  static let differentiateWithoutColorDidChangeNotification: String
  @available(iOS 13.0, *)
  static var isOnOffSwitchLabelsEnabled: Bool { get }
  @available(iOS 13.0, *)
  static let onOffSwitchLabelsDidChangeNotification: NSNotification.Name
  @available(iOS 7.0, *)
  static func requestGuidedAccessSession(enabled enable: Bool, completionHandler: @escaping (Bool) -> Void)
  @available(iOS 10.0, *)
  struct HearingDeviceEar : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var left: UIAccessibility.HearingDeviceEar { get }
    static var right: UIAccessibility.HearingDeviceEar { get }
    static var both: UIAccessibility.HearingDeviceEar { get }
  }
  @available(iOS 10.0, *)
  static var hearingDevicePairedEar: UIAccessibility.HearingDeviceEar { get }
  @available(iOS 10.0, *)
  static let hearingDevicePairedEarDidChangeNotification: NSNotification.Name
}
extension NSObject {
  @available(iOS 4.0, *)
  class func accessibilityElementDidBecomeFocused()
  @available(iOS 4.0, *)
  func accessibilityElementDidBecomeFocused()
  @available(iOS 4.0, *)
  class func accessibilityElementDidLoseFocus()
  @available(iOS 4.0, *)
  func accessibilityElementDidLoseFocus()
  @available(iOS 4.0, *)
  class func accessibilityElementIsFocused() -> Bool
  @available(iOS 4.0, *)
  func accessibilityElementIsFocused() -> Bool
  @available(iOS 9.0, *)
  class func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<UIAccessibility.AssistiveTechnologyIdentifier>?
  @available(iOS 9.0, *)
  func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<UIAccessibility.AssistiveTechnologyIdentifier>?
}
extension NSObject {
  @available(iOS 7.0, *)
  class func accessibilityActivate() -> Bool
  @available(iOS 7.0, *)
  func accessibilityActivate() -> Bool
  @available(iOS 4.0, *)
  class func accessibilityIncrement()
  @available(iOS 4.0, *)
  func accessibilityIncrement()
  @available(iOS 4.0, *)
  class func accessibilityDecrement()
  @available(iOS 4.0, *)
  func accessibilityDecrement()
  @available(iOS 4.2, *)
  class func accessibilityScroll(_ direction: UIAccessibilityScrollDirection) -> Bool
  @available(iOS 4.2, *)
  func accessibilityScroll(_ direction: UIAccessibilityScrollDirection) -> Bool
  @available(iOS 5.0, *)
  class func accessibilityPerformEscape() -> Bool
  @available(iOS 5.0, *)
  func accessibilityPerformEscape() -> Bool
  @available(iOS 6.0, *)
  class func accessibilityPerformMagicTap() -> Bool
  @available(iOS 6.0, *)
  func accessibilityPerformMagicTap() -> Bool
  @available(iOS 8.0, *)
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
  @available(iOS 5.0, *)
  case next
  @available(iOS 5.0, *)
  case previous
}
protocol UIAccessibilityReadingContent {
  @available(iOS 5.0, *)
  func accessibilityLineNumber(for point: CGPoint) -> Int
  @available(iOS 5.0, *)
  func accessibilityContent(forLineNumber lineNumber: Int) -> String?
  @available(iOS 5.0, *)
  func accessibilityFrame(forLineNumber lineNumber: Int) -> CGRect
  @available(iOS 5.0, *)
  func accessibilityPageContent() -> String?
  @available(iOS 11.0, *)
  optional func accessibilityAttributedContent(forLineNumber lineNumber: Int) -> NSAttributedString?
  @available(iOS 11.0, *)
  optional func accessibilityAttributedPageContent() -> NSAttributedString?
}
extension NSObject {
  @available(iOS 11.0, *)
  var accessibilityDragSourceDescriptors: [UIAccessibilityLocationDescriptor]?
  @available(iOS 11.0, *)
  var accessibilityDropPointDescriptors: [UIAccessibilityLocationDescriptor]?
  class func accessibilityDragSourceDescriptors() -> [UIAccessibilityLocationDescriptor]?
  class func setAccessibilityDragSourceDescriptors(_ accessibilityDragSourceDescriptors: [UIAccessibilityLocationDescriptor]?)
  class func accessibilityDropPointDescriptors() -> [UIAccessibilityLocationDescriptor]?
  class func setAccessibilityDropPointDescriptors(_ accessibilityDropPointDescriptors: [UIAccessibilityLocationDescriptor]?)
}
@available(iOS, introduced: 4.0, deprecated: 11.0, renamed: "UIAccessibility.voiceOverStatusDidChangeNotification")
let UIAccessibilityVoiceOverStatusChanged: String
