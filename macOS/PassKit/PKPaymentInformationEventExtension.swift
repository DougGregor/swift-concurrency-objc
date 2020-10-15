
typealias PKInformationRequestCompletionBlock = (PKBarcodeEventMetadataResponse) -> Void
typealias PKSignatureRequestCompletionBlock = (PKBarcodeEventSignatureResponse) -> Void
class PKPaymentInformationEventExtension : NSObject {
}
protocol PKPaymentInformationRequestHandling {
  func handleInformationRequest(_ infoRequest: PKBarcodeEventMetadataRequest, completion: @escaping PKInformationRequestCompletionBlock)
  func handle(_ signatureRequest: PKBarcodeEventSignatureRequest, completion: @escaping PKSignatureRequestCompletionBlock)
  func handle(_ configurationRequest: PKBarcodeEventConfigurationRequest, completion: @escaping () -> Void)
}
