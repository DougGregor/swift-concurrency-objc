
@available(watchOS 3.1, *)
class PKSuicaPassProperties : PKTransitPassProperties {
  var isInShinkansenStation: Bool { get }
  @available(watchOS 4.3, *)
  var isBalanceAllowedForCommute: Bool { get }
  @available(watchOS 4.3, *)
  var isLowBalanceGateNotificationEnabled: Bool { get }
  var isGreenCarTicketUsed: Bool { get }
}
