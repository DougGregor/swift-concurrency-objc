
enum SCNMorpherCalculationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case normalized
  case additive
}
class SCNMorpher : NSObject, SCNAnimatable, NSSecureCoding {
  var targets: [SCNGeometry]
  @available(iOS 11.0, *)
  var weights: [NSNumber]
  func setWeight(_ weight: CGFloat, forTargetAt targetIndex: Int)
  func weight(forTargetAt targetIndex: Int) -> CGFloat
  @available(iOS 11.0, *)
  func setWeight(_ weight: CGFloat, forTargetNamed targetName: String)
  @available(iOS 11.0, *)
  func weight(forTargetNamed targetName: String) -> CGFloat
  var calculationMode: SCNMorpherCalculationMode
  @available(iOS 11.0, *)
  var unifiesNormals: Bool
}
