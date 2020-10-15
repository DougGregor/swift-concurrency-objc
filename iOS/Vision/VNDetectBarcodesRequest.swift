
@available(iOS 11.0, *)
class VNDetectBarcodesRequest : VNImageBasedRequest {
  class var supportedSymbologies: [VNBarcodeSymbology] { get }
  var symbologies: [VNBarcodeSymbology]
}
@available(iOS 12.0, *)
let VNDetectBarcodesRequestRevision1: Int
