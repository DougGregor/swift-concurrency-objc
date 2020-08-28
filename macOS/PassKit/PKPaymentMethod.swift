
@available(macOS 11.0, *)
class PKPaymentMethod : NSObject {
  var displayName: String? { get }
  var network: PKPaymentNetwork? { get }
  var type: PKPaymentMethodType { get }
  @available(macOS, introduced: 11.0, deprecated: 100000, message: "Use -[PKPass secureElementPass] instead")
  @NSCopying var paymentPass: PKPaymentPass? { get }
  @available(macOS 11.0, *)
  @NSCopying var secureElementPass: PKSecureElementPass? { get }
  @available(macOS 11.0, *)
  @NSCopying var billingAddress: CNContact? { get }
}
@available(macOS 11.0, *)
enum PKPaymentMethodType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unknown
  case debit
  case credit
  case prepaid
  case store
}
