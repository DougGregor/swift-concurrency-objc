
@available(tvOS 11.0, *)
enum HMEventTriggerActivationState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case disabled
  case disabledNoHomeHub
  case disabledNoCompatibleHomeHub
  case disabledNoLocationServicesAuthorization
  case enabled
}
