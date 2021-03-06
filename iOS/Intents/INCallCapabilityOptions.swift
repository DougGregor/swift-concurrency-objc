
@available(iOS 10.0, *)
struct INCallCapabilityOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var audioCall: INCallCapabilityOptions { get }
  static var videoCall: INCallCapabilityOptions { get }
}
