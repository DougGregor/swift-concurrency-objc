
@available(watchOS 4.0, *)
enum INCallDestinationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case normal
  case emergency
  case voicemail
  case redial
  @available(watchOS 6.0, *)
  case callBack
  @available(watchOS, introduced: 4.0, deprecated: 4.0, message: "Use INCallDestinationTypeNormal instead")
  static var normalDestination: INCallDestinationType { get }
  @available(watchOS, introduced: 4.0, deprecated: 4.0, message: "Use INCallDestinationTypeEmergency instead")
  static var emergencyDestination: INCallDestinationType { get }
  @available(watchOS, introduced: 4.0, deprecated: 4.0, message: "Use INCallDestinationTypeVoicemail instead")
  static var voicemailDestination: INCallDestinationType { get }
  @available(watchOS, introduced: 4.0, deprecated: 4.0, message: "Use INCallDestinationTypeRedial instead")
  static var redialDestination: INCallDestinationType { get }
}
