
class SCNTechnique : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {
  /*not inherited*/ init?(dictionary: [String : Any])
  /*not inherited*/ init?(bySequencingTechniques techniques: [SCNTechnique])
  var dictionaryRepresentation: [String : Any] { get }
  subscript(key: Any) -> Any? { get }
  @available(watchOS 2.0, *)
  func setObject(_ obj: Any?, forKeyedSubscript key: NSCopying)
}
protocol SCNTechniqueSupport : NSObjectProtocol {
  @NSCopying var technique: SCNTechnique? { get set }
}
