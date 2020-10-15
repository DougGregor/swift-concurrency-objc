
@available(iOS 14.0, *)
struct INShortcutAvailabilityOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var sleepMindfulness: INShortcutAvailabilityOptions { get }
  static var sleepJournaling: INShortcutAvailabilityOptions { get }
  static var sleepMusic: INShortcutAvailabilityOptions { get }
  static var sleepPodcasts: INShortcutAvailabilityOptions { get }
  static var sleepReading: INShortcutAvailabilityOptions { get }
  static var sleepWrapUpYourDay: INShortcutAvailabilityOptions { get }
  static var sleepYogaAndStretching: INShortcutAvailabilityOptions { get }
}
