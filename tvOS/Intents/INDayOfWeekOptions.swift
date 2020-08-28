
@available(tvOS 14.0, *)
struct INDayOfWeekOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var monday: INDayOfWeekOptions { get }
  static var tuesday: INDayOfWeekOptions { get }
  static var wednesday: INDayOfWeekOptions { get }
  static var thursday: INDayOfWeekOptions { get }
  static var friday: INDayOfWeekOptions { get }
  static var saturday: INDayOfWeekOptions { get }
  static var sunday: INDayOfWeekOptions { get }
}
