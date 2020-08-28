
@available(iOS 11.0, *)
struct INRideFeedbackTypeOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var rate: INRideFeedbackTypeOptions { get }
  static var tip: INRideFeedbackTypeOptions { get }
}
