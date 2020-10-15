
@available(iOS 10.1, *)
class PKSuicaPassProperties : PKTransitPassProperties {
  var isInShinkansenStation: Bool { get }
  @available(iOS 11.3, *)
  var isBalanceAllowedForCommute: Bool { get }
  @available(iOS 11.3, *)
  var isLowBalanceGateNotificationEnabled: Bool { get }
  var isGreenCarTicketUsed: Bool { get }
}
