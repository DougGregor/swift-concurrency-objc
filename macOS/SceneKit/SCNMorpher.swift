
enum SCNMorpherCalculationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case normalized
  case additive
}
@available(macOS 10.9, *)
class SCNMorpher : NSObject, SCNAnimatable, NSSecureCoding {
  var targets: [SCNGeometry]
  @available(macOS 10.13, *)
  var weights: [NSNumber]
  func setWeight(_ weight: CGFloat, forTargetAt targetIndex: Int)
  func weight(forTargetAt targetIndex: Int) -> CGFloat
  @available(macOS 10.13, *)
  func setWeight(_ weight: CGFloat, forTargetNamed targetName: String)
  @available(macOS 10.13, *)
  func weight(forTargetNamed targetName: String) -> CGFloat
  var calculationMode: SCNMorpherCalculationMode
  @available(macOS 10.13, *)
  var unifiesNormals: Bool
}
