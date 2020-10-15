
extension VNRecognizedPointKey {
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.wrist")
  static let handLandmarkKeyWrist: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.thumbCMC")
  static let handLandmarkKeyThumbCMC: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.thumbMP")
  static let handLandmarkKeyThumbMP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.thumbIP")
  static let handLandmarkKeyThumbIP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.thumbTip")
  static let handLandmarkKeyThumbTIP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.indexMCP")
  static let handLandmarkKeyIndexMCP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.indexPIP")
  static let handLandmarkKeyIndexPIP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.indexDIP")
  static let handLandmarkKeyIndexDIP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.indexTip")
  static let handLandmarkKeyIndexTIP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.middleMCP")
  static let handLandmarkKeyMiddleMCP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.middlePIP")
  static let handLandmarkKeyMiddlePIP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.middleDIP")
  static let handLandmarkKeyMiddleDIP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.middleTip")
  static let handLandmarkKeyMiddleTIP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.ringMCP")
  static let handLandmarkKeyRingMCP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.ringPIP")
  static let handLandmarkKeyRingPIP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.ringDIP")
  static let handLandmarkKeyRingDIP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.ringTip")
  static let handLandmarkKeyRingTIP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.littleMCP")
  static let handLandmarkKeyLittleMCP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.littlePIP")
  static let handLandmarkKeyLittlePIP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.littleDIP")
  static let handLandmarkKeyLittleDIP: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointName.littleTip")
  static let handLandmarkKeyLittleTIP: VNRecognizedPointKey
}
extension VNRecognizedPointGroupKey {
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointsGroupName.thumb")
  static let handLandmarkRegionKeyThumb: VNRecognizedPointGroupKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointsGroupName.indexFinger")
  static let handLandmarkRegionKeyIndexFinger: VNRecognizedPointGroupKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointsGroupName.middleFinger")
  static let handLandmarkRegionKeyMiddleFinger: VNRecognizedPointGroupKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointsGroupName.ringFinger")
  static let handLandmarkRegionKeyRingFinger: VNRecognizedPointGroupKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanHandPoseObservation.JointsGroupName.littleFinger")
  static let handLandmarkRegionKeyLittleFinger: VNRecognizedPointGroupKey
}
extension VNHumanHandPoseObservation {
  @available(macOS 11.0, *)
  struct JointName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: VNRecognizedPointKey)
    var _rawValue: NSString
    var rawValue: VNRecognizedPointKey { get }
  }
  @available(macOS 11.0, *)
  struct JointsGroupName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: VNRecognizedPointGroupKey)
    var _rawValue: NSString
    var rawValue: VNRecognizedPointGroupKey { get }
  }
}
extension VNHumanHandPoseObservation.JointName {
  @available(macOS 11.0, *)
  static let wrist: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let thumbCMC: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let thumbMP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let thumbIP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let thumbTip: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let indexMCP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let indexPIP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let indexDIP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let indexTip: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let middleMCP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let middlePIP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let middleDIP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let middleTip: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let ringMCP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let ringPIP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let ringDIP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let ringTip: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let littleMCP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let littlePIP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let littleDIP: VNHumanHandPoseObservation.JointName
  @available(macOS 11.0, *)
  static let littleTip: VNHumanHandPoseObservation.JointName
}
extension VNHumanHandPoseObservation.JointsGroupName {
  @available(macOS 11.0, *)
  static let thumb: VNHumanHandPoseObservation.JointsGroupName
  @available(macOS 11.0, *)
  static let indexFinger: VNHumanHandPoseObservation.JointsGroupName
  @available(macOS 11.0, *)
  static let middleFinger: VNHumanHandPoseObservation.JointsGroupName
  @available(macOS 11.0, *)
  static let ringFinger: VNHumanHandPoseObservation.JointsGroupName
  @available(macOS 11.0, *)
  static let littleFinger: VNHumanHandPoseObservation.JointsGroupName
  @available(macOS 11.0, *)
  static let all: VNHumanHandPoseObservation.JointsGroupName
}
@available(macOS 11.0, *)
class VNHumanHandPoseObservation : VNRecognizedPointsObservation {
  var availableJointNames: [VNHumanHandPoseObservation.JointName] { get }
  var availableJointsGroupNames: [VNHumanHandPoseObservation.JointsGroupName] { get }
  func recognizedPoint(_ jointName: VNHumanHandPoseObservation.JointName) throws -> VNRecognizedPoint
  func recognizedPoints(_ jointsGroupName: VNHumanHandPoseObservation.JointsGroupName) throws -> [VNHumanHandPoseObservation.JointName : VNRecognizedPoint]
}
@available(macOS 11.0, *)
class VNDetectHumanHandPoseRequest : VNImageBasedRequest {
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  class func supportedRecognizedPointKeys(forRevision revision: Int) throws -> [VNRecognizedPointKey]
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  class func supportedRecognizedPointGroupKeys(forRevision revision: Int) throws -> [VNRecognizedPointGroupKey]
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  class func supportedIdentifiedPointKeys(forRevision revision: Int) throws -> [VNRecognizedPointKey]
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  class func supportedIdentifiedPointGroupKeys(forRevision revision: Int) throws -> [VNRecognizedPointGroupKey]
  class func supportedJointNames(forRevision revision: Int) throws -> [VNHumanHandPoseObservation.JointName]
  class func supportedJointsGroupNames(forRevision revision: Int) throws -> [VNHumanHandPoseObservation.JointsGroupName]
  var maximumHandCount: Int
}
@available(macOS 11.0, *)
let VNDetectHumanHandPoseRequestRevision1: Int
