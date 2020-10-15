
@available(macOS 11.0, *)
class PKPaymentToken : NSObject {
  @available(macOS 11.0, *)
  var paymentMethod: PKPaymentMethod { get }
  var paymentInstrumentName: String { get }
  var paymentNetwork: String { get }
  var transactionIdentifier: String { get }
  var paymentData: Data { get }
}
