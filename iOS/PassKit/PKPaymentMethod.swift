
@available(iOS 9.0, *)
class PKPaymentMethod : NSObject {
  var displayName: String? { get }
  var network: PKPaymentNetwork? { get }
  var type: PKPaymentMethodType { get }
  @available(iOS, introduced: 8.0, deprecated: 100000, message: "Use -[PKPass secureElementPass] instead")
  @NSCopying var paymentPass: PKPaymentPass? { get }
  @available(iOS 13.4, *)
  @NSCopying var secureElementPass: PKSecureElementPass? { get }
  @available(iOS 13.0, *)
  @NSCopying var billingAddress: CNContact? { get }
}
@available(iOS 9.0, *)
enum PKPaymentMethodType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unknown
  case debit
  case credit
  case prepaid
  case store
}
