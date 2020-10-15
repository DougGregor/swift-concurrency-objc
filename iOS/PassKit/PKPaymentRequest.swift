
@available(iOS 8.0, *)
struct PKMerchantCapability : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var capability3DS: PKMerchantCapability { get }
  static var capabilityEMV: PKMerchantCapability { get }
  @available(iOS 9.0, *)
  static var capabilityCredit: PKMerchantCapability { get }
  @available(iOS 9.0, *)
  static var capabilityDebit: PKMerchantCapability { get }
}
@available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use PKContactField and -requiredShippingContactFields / -requiredBillingContactFields")
struct PKAddressField : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var postalAddress: PKAddressField { get }
  static var phone: PKAddressField { get }
  static var email: PKAddressField { get }
  @available(iOS 8.3, *)
  static var name: PKAddressField { get }
  static var all: PKAddressField { get }
}
@available(iOS 8.3, *)
enum PKShippingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case shipping
  case delivery
  case storePickup
  case servicePickup
}
@available(iOS 9.0, *)
enum PKPaymentSummaryItemType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case final
  case pending
}
@available(iOS 8.0, *)
class PKPaymentSummaryItem : NSObject {
  convenience init(label: String, amount: NSDecimalNumber)
  @available(iOS 9.0, *)
  convenience init(label: String, amount: NSDecimalNumber, type: PKPaymentSummaryItemType)
  var label: String
  @NSCopying var amount: NSDecimalNumber
  @available(iOS 9.0, *)
  var type: PKPaymentSummaryItemType
}
@available(iOS 8.0, *)
class PKShippingMethod : PKPaymentSummaryItem {
  var identifier: String?
  var detail: String?
}
@available(iOS 8.0, *)
class PKPaymentRequest : NSObject {
  @available(iOS 10.0, *)
  class func availableNetworks() -> [PKPaymentNetwork]
  @available(iOS 11.0, *)
  class func paymentContactInvalidError(withContactField field: PKContactField, localizedDescription: String?) -> Error
  @available(iOS 11.0, *)
  class func paymentShippingAddressInvalidError(withKey postalAddressKey: String, localizedDescription: String?) -> Error
  @available(iOS 11.0, *)
  class func paymentBillingAddressInvalidError(withKey postalAddressKey: String, localizedDescription: String?) -> Error
  @available(iOS 11.0, *)
  class func paymentShippingAddressUnserviceableError(withLocalizedDescription localizedDescription: String?) -> Error
  var merchantIdentifier: String
  var countryCode: String
  var supportedNetworks: [PKPaymentNetwork]
  var merchantCapabilities: PKMerchantCapability
  var paymentSummaryItems: [PKPaymentSummaryItem]
  var currencyCode: String
  @available(iOS 11.0, *)
  var requiredBillingContactFields: Set<PKContactField>
  @available(iOS, introduced: 8.0, deprecated: 11.0)
  var requiredBillingAddressFields: PKAddressField
  @available(iOS 9.0, *)
  var billingContact: PKContact?
  @available(iOS 11.0, *)
  var requiredShippingContactFields: Set<PKContactField>
  @available(iOS, introduced: 8.0, deprecated: 11.0)
  var requiredShippingAddressFields: PKAddressField
  @available(iOS 9.0, *)
  var shippingContact: PKContact?
  var shippingMethods: [PKShippingMethod]?
  @available(iOS 8.3, *)
  var shippingType: PKShippingType
  var applicationData: Data?
  @available(iOS 11.0, *)
  var supportedCountries: Set<String>?
  @available(iOS, introduced: 8.0, deprecated: 9.0, message: "ABRecordRef has been deprecated, and does not support all available address properties. You should migrate to shippingContact.")
  unowned(unsafe) var shippingAddress: @sil_unmanaged ABRecord?
  @available(iOS, introduced: 8.0, deprecated: 9.0, message: "ABRecordRef has been deprecated, and does not support all available address properties. You should migrate to billingContact.")
  unowned(unsafe) var billingAddress: @sil_unmanaged ABRecord?
}
