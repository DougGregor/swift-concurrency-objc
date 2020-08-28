
@available(iOS, introduced: 8.0, deprecated: 100000, message: "Use PKSecureElementPassActivationState instead")
enum PKPaymentPassActivationState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case activated
  case requiresActivation
  case activating
  case suspended
  case deactivated
}
@available(iOS 8.0, *)
class PKPaymentPass : PKSecureElementPass {
  @available(iOS, introduced: 8.0, deprecated: 100000, message: "Use [PKSecureElementPass passActivationState] instead")
  var activationState: PKPaymentPassActivationState { get }
}
