
@available(iOS 10.0, *)
class INRideFareLineItem : NSObject, NSCopying, NSSecureCoding {
  init!(title: String!, price: NSDecimalNumber!, currencyCode: String!)
  var title: String! { get }
  var price: NSDecimalNumber! { get }
  var currencyCode: String! { get }
}
