
@available(iOS 11.0, *)
enum INCallDestinationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case normal
  case emergency
  case voicemail
  case redial
  @available(iOS 13.0, *)
  case callBack
  @available(iOS, introduced: 11.0, deprecated: 11.0, message: "Use INCallDestinationTypeNormal instead")
  static var normalDestination: INCallDestinationType { get }
  @available(iOS, introduced: 11.0, deprecated: 11.0, message: "Use INCallDestinationTypeEmergency instead")
  static var emergencyDestination: INCallDestinationType { get }
  @available(iOS, introduced: 11.0, deprecated: 11.0, message: "Use INCallDestinationTypeVoicemail instead")
  static var voicemailDestination: INCallDestinationType { get }
  @available(iOS, introduced: 11.0, deprecated: 11.0, message: "Use INCallDestinationTypeRedial instead")
  static var redialDestination: INCallDestinationType { get }
}
