
@available(watchOS 3.0, *)
class PKPaymentMethod : NSObject {
  var displayName: String? { get }
  var network: PKPaymentNetwork? { get }
  var type: PKPaymentMethodType { get }
  @available(watchOS, introduced: 3.0, deprecated: 100000, message: "Use -[PKPass secureElementPass] instead")
  @NSCopying var paymentPass: PKPaymentPass? { get }
  @available(watchOS 6.2, *)
  @NSCopying var secureElementPass: PKSecureElementPass? { get }
  @available(watchOS 6.0, *)
  @NSCopying var billingAddress: CNContact? { get }
}
@available(watchOS 3.0, *)
enum PKPaymentMethodType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unknown
  case debit
  case credit
  case prepaid
  case store
}
