
extension PKSecureElementPass {
  @available(macOS 11.0, *)
  enum PassActivationState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case activated
    case requiresActivation
    case activating
    case suspended
    case deactivated
  }
}
@available(macOS 11.0, *)
class PKSecureElementPass : PKPass {
  var primaryAccountIdentifier: String { get }
  var primaryAccountNumberSuffix: String { get }
  var deviceAccountIdentifier: String { get }
  var deviceAccountNumberSuffix: String { get }
  var passActivationState: PKSecureElementPass.PassActivationState { get }
  var devicePassIdentifier: String? { get }
  var pairedTerminalIdentifier: String? { get }
}
