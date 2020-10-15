
var NSNoSpecifierError: Int { get }
var NSNoTopLevelContainersSpecifierError: Int { get }
var NSContainerSpecifierError: Int { get }
var NSUnknownKeySpecifierError: Int { get }
var NSInvalidIndexSpecifierError: Int { get }
var NSInternalSpecifierError: Int { get }
var NSOperationNotSupportedForKeySpecifierError: Int { get }
extension NSPositionalSpecifier {
  enum InsertionPosition : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case after
    case before
    case beginning
    case end
    case replace
  }
}
extension NSRelativeSpecifier {
  enum RelativePosition : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case after
    case before
  }
}
extension NSWhoseSpecifier {
  enum SubelementIdentifier : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case indexSubelement
    case everySubelement
    case middleSubelement
    case randomSubelement
    case noSubelement
  }
}
class NSScriptObjectSpecifier : NSObject, NSCoding {
  @available(macOS 10.5, *)
  /*not inherited*/ init?(descriptor: NSAppleEventDescriptor)
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  unowned(unsafe) var child: @sil_unmanaged NSScriptObjectSpecifier?
  var container: NSScriptObjectSpecifier?
  var containerIsObjectBeingTested: Bool
  var containerIsRangeContainerObject: Bool
  var key: String
  var containerClassDescription: NSScriptClassDescription?
  var keyClassDescription: NSScriptClassDescription? { get }
  func indicesOfObjectsByEvaluating(withContainer container: Any, count: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Int>?
  func objectsByEvaluating(withContainers containers: Any) -> Any?
  var objectsByEvaluatingSpecifier: Any? { get }
  var evaluationErrorNumber: Int
  var evaluationError: NSScriptObjectSpecifier? { get }
  @available(macOS 10.5, *)
  @NSCopying var descriptor: NSAppleEventDescriptor? { get }
}
extension NSObject {
  var objectSpecifier: NSScriptObjectSpecifier? { get }
  class func indicesOfObjects(byEvaluatingObjectSpecifier specifier: NSScriptObjectSpecifier) -> [NSNumber]?
  func indicesOfObjects(byEvaluatingObjectSpecifier specifier: NSScriptObjectSpecifier) -> [NSNumber]?
  class func objectSpecifier() -> NSScriptObjectSpecifier?
}
class NSIndexSpecifier : NSScriptObjectSpecifier {
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, index: Int)
  var index: Int
}
class NSMiddleSpecifier : NSScriptObjectSpecifier {
}
class NSNameSpecifier : NSScriptObjectSpecifier {
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, name: String)
  var name: String
}
class NSPositionalSpecifier : NSObject {
  init(position: NSPositionalSpecifier.InsertionPosition, objectSpecifier specifier: NSScriptObjectSpecifier)
  @available(macOS 10.5, *)
  var position: NSPositionalSpecifier.InsertionPosition { get }
  func setInsertionClassDescription(_ classDescription: NSScriptClassDescription)
  func evaluate()
  var insertionContainer: Any? { get }
  var insertionKey: String? { get }
  var insertionIndex: Int { get }
  var insertionReplaces: Bool { get }
}
class NSPropertySpecifier : NSScriptObjectSpecifier {
}
class NSRandomSpecifier : NSScriptObjectSpecifier {
}
class NSRangeSpecifier : NSScriptObjectSpecifier {
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, start startSpec: NSScriptObjectSpecifier?, end endSpec: NSScriptObjectSpecifier?)
  var startSpecifier: NSScriptObjectSpecifier?
  var endSpecifier: NSScriptObjectSpecifier?
}
class NSRelativeSpecifier : NSScriptObjectSpecifier {
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, relativePosition relPos: NSRelativeSpecifier.RelativePosition, baseSpecifier: NSScriptObjectSpecifier?)
  var relativePosition: NSRelativeSpecifier.RelativePosition
  var baseSpecifier: NSScriptObjectSpecifier?
}
class NSUniqueIDSpecifier : NSScriptObjectSpecifier {
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, uniqueID: Any)
  var uniqueID: Any
}
class NSWhoseSpecifier : NSScriptObjectSpecifier {
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String, test: NSScriptWhoseTest)
  var test: NSScriptWhoseTest
  var startSubelementIdentifier: NSWhoseSpecifier.SubelementIdentifier
  var startSubelementIndex: Int
  var endSubelementIdentifier: NSWhoseSpecifier.SubelementIdentifier
  var endSubelementIndex: Int
}
