
class PKSuicaPassProperties : PKTransitPassProperties {
  var isInShinkansenStation: Bool { get }
  var isBalanceAllowedForCommute: Bool { get }
  var isLowBalanceGateNotificationEnabled: Bool { get }
  var isGreenCarTicketUsed: Bool { get }
}
