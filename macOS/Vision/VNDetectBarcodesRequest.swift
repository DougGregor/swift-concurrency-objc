
@available(macOS 10.13, *)
class VNDetectBarcodesRequest : VNImageBasedRequest {
  class var supportedSymbologies: [VNBarcodeSymbology] { get }
  var symbologies: [VNBarcodeSymbology]
}
@available(macOS 10.14, *)
let VNDetectBarcodesRequestRevision1: Int
