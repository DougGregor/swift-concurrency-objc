
@available(macOS 11.0, *)
struct PKMerchantCapability : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var capability3DS: PKMerchantCapability { get }
  static var capabilityEMV: PKMerchantCapability { get }
  @available(macOS 11.0, *)
  static var capabilityCredit: PKMerchantCapability { get }
  @available(macOS 11.0, *)
  static var capabilityDebit: PKMerchantCapability { get }
}
struct PKAddressField : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var postalAddress: PKAddressField { get }
  static var phone: PKAddressField { get }
  static var email: PKAddressField { get }
  @available(macOS 11.0, *)
  static var name: PKAddressField { get }
  static var all: PKAddressField { get }
}
@available(macOS 11.0, *)
enum PKShippingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case shipping
  case delivery
  case storePickup
  case servicePickup
}
@available(macOS 11.0, *)
enum PKPaymentSummaryItemType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case final
  case pending
}
@available(macOS 11.0, *)
class PKPaymentSummaryItem : NSObject {
  convenience init(label: String, amount: NSDecimalNumber)
  @available(macOS 11.0, *)
  convenience init(label: String, amount: NSDecimalNumber, type: PKPaymentSummaryItemType)
  var label: String
  @NSCopying var amount: NSDecimalNumber
  @available(macOS 11.0, *)
  var type: PKPaymentSummaryItemType
}
@available(macOS 11.0, *)
class PKShippingMethod : PKPaymentSummaryItem {
  var identifier: String?
  var detail: String?
}
@available(macOS 11.0, *)
class PKPaymentRequest : NSObject {
  @available(macOS 11.0, *)
  class func availableNetworks() -> [PKPaymentNetwork]
  @available(macOS 11.0, *)
  class func paymentContactInvalidError(withContactField field: PKContactField, localizedDescription: String?) -> Error
  @available(macOS 11.0, *)
  class func paymentShippingAddressInvalidError(withKey postalAddressKey: String, localizedDescription: String?) -> Error
  @available(macOS 11.0, *)
  class func paymentBillingAddressInvalidError(withKey postalAddressKey: String, localizedDescription: String?) -> Error
  @available(macOS 11.0, *)
  class func paymentShippingAddressUnserviceableError(withLocalizedDescription localizedDescription: String?) -> Error
  var merchantIdentifier: String
  var countryCode: String
  var supportedNetworks: [PKPaymentNetwork]
  var merchantCapabilities: PKMerchantCapability
  var paymentSummaryItems: [PKPaymentSummaryItem]
  var currencyCode: String
  @available(macOS 11.0, *)
  var requiredBillingContactFields: Set<PKContactField>
  var requiredBillingAddressFields: PKAddressField
  @available(macOS 11.0, *)
  var billingContact: PKContact?
  @available(macOS 11.0, *)
  var requiredShippingContactFields: Set<PKContactField>
  var requiredShippingAddressFields: PKAddressField
  @available(macOS 11.0, *)
  var shippingContact: PKContact?
  var shippingMethods: [PKShippingMethod]?
  @available(macOS 11.0, *)
  var shippingType: PKShippingType
  var applicationData: Data?
  @available(macOS 10.13, *)
  var supportedCountries: Set<String>?
}
