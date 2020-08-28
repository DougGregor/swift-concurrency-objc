
@available(tvOS 10.0, *)
class INPaymentMethod : NSObject, NSCopying, NSSecureCoding {
  init(type: INPaymentMethodType, name: String?, identificationHint: String?, icon: INImage?)
  var type: INPaymentMethodType { get }
  var name: String? { get }
  @NSCopying var icon: INImage? { get }
  var identificationHint: String? { get }
  class func applePay() -> Self
}
