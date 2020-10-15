
enum VNRequestFaceLandmarksConstellation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case constellationNotDefined
  case constellation65Points
  case constellation76Points
}
@available(macOS 10.13, *)
class VNDetectFaceLandmarksRequest : VNImageBasedRequest, VNFaceObservationAccepting {
  class func revision(_ requestRevision: Int, supportsConstellation constellation: VNRequestFaceLandmarksConstellation) -> Bool
  @available(macOS 10.15, *)
  var constellation: VNRequestFaceLandmarksConstellation
}
@available(macOS 10.14, *)
let VNDetectFaceLandmarksRequestRevision1: Int
@available(macOS 10.14, *)
let VNDetectFaceLandmarksRequestRevision2: Int
@available(macOS 10.15, *)
let VNDetectFaceLandmarksRequestRevision3: Int
