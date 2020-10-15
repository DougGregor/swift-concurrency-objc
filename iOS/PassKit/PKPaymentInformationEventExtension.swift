
typealias PKInformationRequestCompletionBlock = (PKBarcodeEventMetadataResponse) -> Void
typealias PKSignatureRequestCompletionBlock = (PKBarcodeEventSignatureResponse) -> Void
@available(iOS 14.0, *)
class PKPaymentInformationEventExtension : NSObject {
}
protocol PKPaymentInformationRequestHandling {
  @available(iOS 14.0, *)
  func handleInformationRequest(_ infoRequest: PKBarcodeEventMetadataRequest, completion: @escaping PKInformationRequestCompletionBlock)
  @available(iOS 14.0, *)
  func handle(_ signatureRequest: PKBarcodeEventSignatureRequest, completion: @escaping PKSignatureRequestCompletionBlock)
  @available(iOS 14.0, *)
  func handle(_ configurationRequest: PKBarcodeEventConfigurationRequest, completion: @escaping () -> Void)
}
