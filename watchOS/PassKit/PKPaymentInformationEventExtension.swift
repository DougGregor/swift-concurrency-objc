
typealias PKInformationRequestCompletionBlock = (PKBarcodeEventMetadataResponse) -> Void
typealias PKSignatureRequestCompletionBlock = (PKBarcodeEventSignatureResponse) -> Void
@available(watchOS 7.0, *)
class PKPaymentInformationEventExtension : NSObject {
}
protocol PKPaymentInformationRequestHandling {
  @available(watchOS 7.0, *)
  func handleInformationRequest(_ infoRequest: PKBarcodeEventMetadataRequest, completion: @escaping PKInformationRequestCompletionBlock)
  @available(watchOS 7.0, *)
  func handle(_ signatureRequest: PKBarcodeEventSignatureRequest, completion: @escaping PKSignatureRequestCompletionBlock)
  @available(watchOS 7.0, *)
  func handle(_ configurationRequest: PKBarcodeEventConfigurationRequest, completion: @escaping () -> Void)
}
