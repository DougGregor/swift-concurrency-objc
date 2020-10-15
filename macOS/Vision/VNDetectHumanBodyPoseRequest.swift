
extension VNRecognizedPointKey {
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.nose")
  static let bodyLandmarkKeyNose: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.leftEye")
  static let bodyLandmarkKeyLeftEye: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.rightEye")
  static let bodyLandmarkKeyRightEye: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.leftEar")
  static let bodyLandmarkKeyLeftEar: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.rightEar")
  static let bodyLandmarkKeyRightEar: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.leftShoulder")
  static let bodyLandmarkKeyLeftShoulder: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.rightShoulder")
  static let bodyLandmarkKeyRightShoulder: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.neck")
  static let bodyLandmarkKeyNeck: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.leftElbow")
  static let bodyLandmarkKeyLeftElbow: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.rightElbow")
  static let bodyLandmarkKeyRightElbow: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.leftWrist")
  static let bodyLandmarkKeyLeftWrist: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.rightWrist")
  static let bodyLandmarkKeyRightWrist: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.leftHip")
  static let bodyLandmarkKeyLeftHip: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.rightHip")
  static let bodyLandmarkKeyRightHip: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.root")
  static let bodyLandmarkKeyRoot: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.leftKnee")
  static let bodyLandmarkKeyLeftKnee: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.rightKnee")
  static let bodyLandmarkKeyRightKnee: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.leftAnkle")
  static let bodyLandmarkKeyLeftAnkle: VNRecognizedPointKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointName.rightAnkle")
  static let bodyLandmarkKeyRightAnkle: VNRecognizedPointKey
}
extension VNRecognizedPointGroupKey {
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointsGroupName.face")
  static let bodyLandmarkRegionKeyFace: VNRecognizedPointGroupKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointsGroupName.torso")
  static let bodyLandmarkRegionKeyTorso: VNRecognizedPointGroupKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointsGroupName.leftArm")
  static let bodyLandmarkRegionKeyLeftArm: VNRecognizedPointGroupKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointsGroupName.rightArm")
  static let bodyLandmarkRegionKeyRightArm: VNRecognizedPointGroupKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointsGroupName.leftLeg")
  static let bodyLandmarkRegionKeyLeftLeg: VNRecognizedPointGroupKey
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "VNHumanBodyPoseObservation.JointsGroupName.rightLeg")
  static let bodyLandmarkRegionKeyRightLeg: VNRecognizedPointGroupKey
}
extension VNHumanBodyPoseObservation {
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
extension VNHumanBodyPoseObservation.JointName {
  @available(macOS 11.0, *)
  static let nose: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let leftEye: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let rightEye: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let leftEar: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let rightEar: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let leftShoulder: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let rightShoulder: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let neck: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let leftElbow: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let rightElbow: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let leftWrist: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let rightWrist: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let leftHip: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let rightHip: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let root: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let leftKnee: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let rightKnee: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let leftAnkle: VNHumanBodyPoseObservation.JointName
  @available(macOS 11.0, *)
  static let rightAnkle: VNHumanBodyPoseObservation.JointName
}
extension VNHumanBodyPoseObservation.JointsGroupName {
  @available(macOS 11.0, *)
  static let face: VNHumanBodyPoseObservation.JointsGroupName
  @available(macOS 11.0, *)
  static let torso: VNHumanBodyPoseObservation.JointsGroupName
  @available(macOS 11.0, *)
  static let leftArm: VNHumanBodyPoseObservation.JointsGroupName
  @available(macOS 11.0, *)
  static let rightArm: VNHumanBodyPoseObservation.JointsGroupName
  @available(macOS 11.0, *)
  static let leftLeg: VNHumanBodyPoseObservation.JointsGroupName
  @available(macOS 11.0, *)
  static let rightLeg: VNHumanBodyPoseObservation.JointsGroupName
  @available(macOS 11.0, *)
  static let all: VNHumanBodyPoseObservation.JointsGroupName
}
@available(macOS 11.0, *)
class VNHumanBodyPoseObservation : VNRecognizedPointsObservation {
  var availableJointNames: [VNHumanBodyPoseObservation.JointName] { get }
  var availableJointsGroupNames: [VNHumanBodyPoseObservation.JointsGroupName] { get }
  func recognizedPoint(_ jointName: VNHumanBodyPoseObservation.JointName) throws -> VNRecognizedPoint
  func recognizedPoints(_ jointsGroupName: VNHumanBodyPoseObservation.JointsGroupName) throws -> [VNHumanBodyPoseObservation.JointName : VNRecognizedPoint]
}
@available(macOS 11.0, *)
class VNDetectHumanBodyPoseRequest : VNImageBasedRequest {
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  class func supportedRecognizedPointKeys(forRevision revision: Int) throws -> [VNRecognizedPointKey]
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  class func supportedRecognizedPointGroupKeys(forRevision revision: Int) throws -> [VNRecognizedPointGroupKey]
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  class func supportedIdentifiedPointKeys(forRevision revision: Int) throws -> [VNRecognizedPointKey]
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  class func supportedIdentifiedPointGroupKeys(forRevision revision: Int) throws -> [VNRecognizedPointGroupKey]
  class func supportedJointNames(forRevision revision: Int) throws -> [VNHumanBodyPoseObservation.JointName]
  class func supportedJointsGroupNames(forRevision revision: Int) throws -> [VNHumanBodyPoseObservation.JointsGroupName]
}
@available(macOS 11.0, *)
let VNDetectHumanBodyPoseRequestRevision1: Int
