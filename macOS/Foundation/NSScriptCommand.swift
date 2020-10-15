
var NSNoScriptError: Int { get }
var NSReceiverEvaluationScriptError: Int { get }
var NSKeySpecifierEvaluationScriptError: Int { get }
var NSArgumentEvaluationScriptError: Int { get }
var NSReceiversCantHandleCommandScriptError: Int { get }
var NSRequiredArgumentsMissingScriptError: Int { get }
var NSArgumentsWrongScriptError: Int { get }
var NSUnknownKeyScriptError: Int { get }
var NSInternalScriptError: Int { get }
var NSOperationNotSupportedForKeyScriptError: Int { get }
var NSCannotCreateScriptCommandError: Int { get }
class NSScriptCommand : NSObject, NSCoding {
  init(commandDescription commandDef: NSScriptCommandDescription)
  var commandDescription: NSScriptCommandDescription { get }
  var directParameter: Any?
  var receiversSpecifier: NSScriptObjectSpecifier?
  var evaluatedReceivers: Any? { get }
  var arguments: [String : Any]?
  var evaluatedArguments: [String : Any]? { get }
  var isWellFormed: Bool { get }
  func performDefaultImplementation() -> Any?
  func execute() -> Any?
  var scriptErrorNumber: Int
  @available(macOS 10.5, *)
  var scriptErrorOffendingObjectDescriptor: NSAppleEventDescriptor?
  @available(macOS 10.5, *)
  var scriptErrorExpectedTypeDescriptor: NSAppleEventDescriptor?
  var scriptErrorString: String?
  class func current() -> NSScriptCommand?
  @NSCopying var appleEvent: NSAppleEventDescriptor? { get }
  func suspendExecution()
  func resumeExecution(withResult result: Any?)
}
