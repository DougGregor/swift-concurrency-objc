
enum VNRequestFaceLandmarksConstellation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case constellationNotDefined
  case constellation65Points
  case constellation76Points
}
@available(tvOS 11.0, *)
class VNDetectFaceLandmarksRequest : VNImageBasedRequest, VNFaceObservationAccepting {
  class func revision(_ requestRevision: Int, supportsConstellation constellation: VNRequestFaceLandmarksConstellation) -> Bool
  @available(tvOS 13.0, *)
  var constellation: VNRequestFaceLandmarksConstellation
}
@available(tvOS 12.0, *)
let VNDetectFaceLandmarksRequestRevision1: Int
@available(tvOS 12.0, *)
let VNDetectFaceLandmarksRequestRevision2: Int
@available(tvOS 13.0, *)
let VNDetectFaceLandmarksRequestRevision3: Int
