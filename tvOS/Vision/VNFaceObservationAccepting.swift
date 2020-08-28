
@available(tvOS 11.0, *)
protocol VNFaceObservationAccepting : NSObjectProtocol {
  var inputFaceObservations: [VNFaceObservation]? { get set }
}
