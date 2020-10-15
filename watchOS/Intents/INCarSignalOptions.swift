
@available(watchOS 3.2, *)
struct INCarSignalOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var audible: INCarSignalOptions { get }
  static var visible: INCarSignalOptions { get }
}
