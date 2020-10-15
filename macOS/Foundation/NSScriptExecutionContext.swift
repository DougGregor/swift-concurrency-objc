
class NSScriptExecutionContext : NSObject {
  class func shared() -> NSScriptExecutionContext
  var topLevelObject: Any?
  var objectBeingTested: Any?
  var rangeContainerObject: Any?
}
