
class PKBarcodeEventMetadataRequest : NSObject {
  var deviceAccountIdentifier: String { get }
  var lastUsedBarcodeIdentifier: String { get }
}
class PKBarcodeEventMetadataResponse : NSObject {
  init(paymentInformation: Data)
  var paymentInformation: Data
}
class PKBarcodeEventSignatureRequest : NSObject {
  var deviceAccountIdentifier: String { get }
  var transactionIdentifier: String { get }
  var barcodeIdentifier: String { get }
  var rawMerchantName: String { get }
  var merchantName: String { get }
  var transactionDate: Date { get }
  var currencyCode: String { get }
  var amount: NSNumber { get }
  var transactionStatus: String { get }
  var partialSignature: Data { get }
}
class PKBarcodeEventSignatureResponse : NSObject {
  init(signedData: Data)
  var signedData: Data
}
enum PKBarcodeEventConfigurationDataType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case signingKeyMaterial
  case signingCertificate
}
class PKBarcodeEventConfigurationRequest : NSObject {
  var deviceAccountIdentifier: String { get }
  var configurationData: Data { get }
  var configurationDataType: PKBarcodeEventConfigurationDataType { get }
}
