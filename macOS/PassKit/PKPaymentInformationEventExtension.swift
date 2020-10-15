
typealias PKInformationRequestCompletionBlock = (PKBarcodeEventMetadataResponse) -> Void
typealias PKSignatureRequestCompletionBlock = (PKBarcodeEventSignatureResponse) -> Void
class PKPaymentInformationEventExtension : NSObject {
}
protocol PKPaymentInformationRequestHandling {
  func handleInformationRequest(_ infoRequest: PKBarcodeEventMetadataRequest, completion: @escaping PKInformationRequestCompletionBlock)
  func handleInformationRequest(_ infoRequest: PKBarcodeEventMetadataRequest) async -> PKBarcodeEventMetadataResponse
  func handle(_ signatureRequest: PKBarcodeEventSignatureRequest, completion: @escaping PKSignatureRequestCompletionBlock)
  func handle(_ signatureRequest: PKBarcodeEventSignatureRequest) async -> PKBarcodeEventSignatureResponse
  func handle(_ configurationRequest: PKBarcodeEventConfigurationRequest, completion: @escaping () -> Void)
  func handle(_ configurationRequest: PKBarcodeEventConfigurationRequest) async
}
