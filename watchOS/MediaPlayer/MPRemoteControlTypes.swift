
@available(watchOS 5.0, *)
enum MPShuffleType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case off
  case items
  case collections
}
@available(watchOS 5.0, *)
enum MPRepeatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case off
  case one
  case all
}
@available(watchOS 5.0, *)
enum MPChangeLanguageOptionSetting : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case nowPlayingItemOnly
  case permanent
}
