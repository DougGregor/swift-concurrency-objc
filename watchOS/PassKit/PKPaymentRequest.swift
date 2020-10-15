
@available(watchOS 3.0, *)
struct PKMerchantCapability : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var capability3DS: PKMerchantCapability { get }
  static var capabilityEMV: PKMerchantCapability { get }
  @available(watchOS 2.0, *)
  static var capabilityCredit: PKMerchantCapability { get }
  @available(watchOS 2.0, *)
  static var capabilityDebit: PKMerchantCapability { get }
}
@available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use PKContactField and -requiredShippingContactFields / -requiredBillingContactFields")
struct PKAddressField : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var postalAddress: PKAddressField { get }
  static var phone: PKAddressField { get }
  static var email: PKAddressField { get }
  @available(watchOS 2.0, *)
  static var name: PKAddressField { get }
  static var all: PKAddressField { get }
}
@available(watchOS 3.0, *)
enum PKShippingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case shipping
  case delivery
  case storePickup
  case servicePickup
}
@available(watchOS 3.0, *)
enum PKPaymentSummaryItemType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case final
  case pending
}
@available(watchOS 3.0, *)
class PKPaymentSummaryItem : NSObject {
  convenience init(label: String, amount: NSDecimalNumber)
  @available(watchOS 3.0, *)
  convenience init(label: String, amount: NSDecimalNumber, type: PKPaymentSummaryItemType)
  var label: String
  @NSCopying var amount: NSDecimalNumber
  @available(watchOS 3.0, *)
  var type: PKPaymentSummaryItemType
}
@available(watchOS 3.0, *)
class PKShippingMethod : PKPaymentSummaryItem {
  var identifier: String?
  var detail: String?
}
@available(watchOS 3.0, *)
class PKPaymentRequest : NSObject {
  @available(watchOS 3.0, *)
  class func availableNetworks() -> [PKPaymentNetwork]
  @available(watchOS 4.0, *)
  class func paymentContactInvalidError(withContactField field: PKContactField, localizedDescription: String?) -> Error
  @available(watchOS 4.0, *)
  class func paymentShippingAddressInvalidError(withKey postalAddressKey: String, localizedDescription: String?) -> Error
  @available(watchOS 4.0, *)
  class func paymentBillingAddressInvalidError(withKey postalAddressKey: String, localizedDescription: String?) -> Error
  @available(watchOS 4.0, *)
  class func paymentShippingAddressUnserviceableError(withLocalizedDescription localizedDescription: String?) -> Error
  var merchantIdentifier: String
  var countryCode: String
  var supportedNetworks: [PKPaymentNetwork]
  var merchantCapabilities: PKMerchantCapability
  var paymentSummaryItems: [PKPaymentSummaryItem]
  var currencyCode: String
  @available(watchOS 4.0, *)
  var requiredBillingContactFields: Set<PKContactField>
  @available(watchOS, introduced: 2.0, deprecated: 4.0)
  var requiredBillingAddressFields: PKAddressField
  @available(watchOS 3.0, *)
  var billingContact: PKContact?
  @available(watchOS 4.0, *)
  var requiredShippingContactFields: Set<PKContactField>
  @available(watchOS, introduced: 2.0, deprecated: 4.0)
  var requiredShippingAddressFields: PKAddressField
  @available(watchOS 3.0, *)
  var shippingContact: PKContact?
  var shippingMethods: [PKShippingMethod]?
  @available(watchOS 3.0, *)
  var shippingType: PKShippingType
  var applicationData: Data?
  @available(watchOS 4.0, *)
  var supportedCountries: Set<String>?
}
