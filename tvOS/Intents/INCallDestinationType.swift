
@available(tvOS 11.0, *)
enum INCallDestinationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case normal
  case emergency
  case voicemail
  case redial
  @available(tvOS 13.0, *)
  case callBack
  @available(tvOS, introduced: 13.4, deprecated: 13.4, message: "Use INCallDestinationTypeNormal instead")
  static var normalDestination: INCallDestinationType { get }
  @available(tvOS, introduced: 13.4, deprecated: 13.4, message: "Use INCallDestinationTypeEmergency instead")
  static var emergencyDestination: INCallDestinationType { get }
  @available(tvOS, introduced: 13.4, deprecated: 13.4, message: "Use INCallDestinationTypeVoicemail instead")
  static var voicemailDestination: INCallDestinationType { get }
  @available(tvOS, introduced: 13.4, deprecated: 13.4, message: "Use INCallDestinationTypeRedial instead")
  static var redialDestination: INCallDestinationType { get }
}
