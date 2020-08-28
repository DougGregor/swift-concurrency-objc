
class SCNTechnique : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {
  /*not inherited*/ init?(dictionary: [String : Any])
  /*not inherited*/ init?(bySequencingTechniques techniques: [SCNTechnique])
  func handleBinding(ofSymbol symbol: String, using block: SCNBindingBlock? = nil)
  var dictionaryRepresentation: [String : Any] { get }
  subscript(key: Any) -> Any? { get }
  @available(tvOS 9.0, *)
  func setObject(_ obj: Any?, forKeyedSubscript key: NSCopying)
  @available(tvOS 12.0, *)
  var library: MTLLibrary?
}
protocol SCNTechniqueSupport : NSObjectProtocol {
  @NSCopying var technique: SCNTechnique? { get set }
}
