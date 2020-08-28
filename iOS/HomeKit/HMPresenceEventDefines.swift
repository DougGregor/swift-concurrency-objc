
@available(iOS 11.0, *)
enum HMPresenceEventType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case everyEntry
  case everyExit
  case firstEntry
  case lastExit
  static var atHome: HMPresenceEventType { get }
  static var notAtHome: HMPresenceEventType { get }
}
@available(iOS 11.0, *)
enum HMPresenceEventUserType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case currentUser
  case homeUsers
  case customUsers
}
