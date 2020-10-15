
@available(tvOS 11.0, *)
class VNDetectBarcodesRequest : VNImageBasedRequest {
  class var supportedSymbologies: [VNBarcodeSymbology] { get }
  var symbologies: [VNBarcodeSymbology]
}
@available(tvOS 12.0, *)
let VNDetectBarcodesRequestRevision1: Int
