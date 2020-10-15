
@available(macOS 10.10, *)
class SCNTechnique : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {
  /*not inherited*/ init?(dictionary: [String : Any])
  /*not inherited*/ init?(bySequencingTechniques techniques: [SCNTechnique])
  func handleBinding(ofSymbol symbol: String, using block: SCNBindingBlock? = nil)
  var dictionaryRepresentation: [String : Any] { get }
  subscript(key: Any) -> Any? { get }
  @available(macOS 10.11, *)
  func setObject(_ obj: Any?, forKeyedSubscript key: NSCopying)
  @available(macOS 10.14, *)
  var library: MTLLibrary?
}
protocol SCNTechniqueSupport : NSObjectProtocol {
  @available(macOS 10.10, *)
  @NSCopying var technique: SCNTechnique? { get set }
}
