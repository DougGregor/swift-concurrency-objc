
@available(macOS 10.13, *)
protocol VNFaceObservationAccepting : NSObjectProtocol {
  var inputFaceObservations: [VNFaceObservation]? { get set }
}
