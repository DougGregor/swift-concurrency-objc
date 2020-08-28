
@available(macOS 10.12.2, *)
enum MPShuffleType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case off
  case items
  case collections
}
@available(macOS 10.12.2, *)
enum MPRepeatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case off
  case one
  case all
}
@available(macOS 10.12.2, *)
enum MPChangeLanguageOptionSetting : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case nowPlayingItemOnly
  case permanent
}
