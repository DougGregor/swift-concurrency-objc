
var kJSPropertyAttributeNone: Int { get }
var kJSPropertyAttributeReadOnly: Int { get }
var kJSPropertyAttributeDontEnum: Int { get }
var kJSPropertyAttributeDontDelete: Int { get }
typealias JSPropertyAttributes = UInt32
var kJSClassAttributeNone: Int { get }
var kJSClassAttributeNoAutomaticPrototype: Int { get }
typealias JSClassAttributes = UInt32
typealias JSObjectInitializeCallback = @convention(c) (JSContextRef?, JSObjectRef?) -> Void
typealias JSObjectFinalizeCallback = @convention(c) (JSObjectRef?) -> Void
typealias JSObjectHasPropertyCallback = @convention(c) (JSContextRef?, JSObjectRef?, JSStringRef?) -> Bool
typealias JSObjectGetPropertyCallback = @convention(c) (JSContextRef?, JSObjectRef?, JSStringRef?, UnsafeMutablePointer<JSValueRef?>?) -> JSValueRef?
typealias JSObjectSetPropertyCallback = @convention(c) (JSContextRef?, JSObjectRef?, JSStringRef?, JSValueRef?, UnsafeMutablePointer<JSValueRef?>?) -> Bool
typealias JSObjectDeletePropertyCallback = @convention(c) (JSContextRef?, JSObjectRef?, JSStringRef?, UnsafeMutablePointer<JSValueRef?>?) -> Bool
typealias JSObjectGetPropertyNamesCallback = @convention(c) (JSContextRef?, JSObjectRef?, JSPropertyNameAccumulatorRef?) -> Void
typealias JSObjectCallAsFunctionCallback = @convention(c) (JSContextRef?, JSObjectRef?, JSObjectRef?, Int, UnsafePointer<JSValueRef?>?, UnsafeMutablePointer<JSValueRef?>?) -> JSValueRef?
typealias JSObjectCallAsConstructorCallback = @convention(c) (JSContextRef?, JSObjectRef?, Int, UnsafePointer<JSValueRef?>?, UnsafeMutablePointer<JSValueRef?>?) -> JSObjectRef?
typealias JSObjectHasInstanceCallback = @convention(c) (JSContextRef?, JSObjectRef?, JSValueRef?, UnsafeMutablePointer<JSValueRef?>?) -> Bool
typealias JSObjectConvertToTypeCallback = @convention(c) (JSContextRef?, JSObjectRef?, JSType, UnsafeMutablePointer<JSValueRef?>?) -> JSValueRef?
struct JSStaticValue {
  var name: UnsafePointer<CChar>!
  var getProperty: JSObjectGetPropertyCallback!
  var setProperty: JSObjectSetPropertyCallback!
  var attributes: JSPropertyAttributes
  init()
  init(name: UnsafePointer<CChar>!, getProperty: JSObjectGetPropertyCallback!, setProperty: JSObjectSetPropertyCallback!, attributes: JSPropertyAttributes)
}
struct JSStaticFunction {
  var name: UnsafePointer<CChar>!
  var callAsFunction: JSObjectCallAsFunctionCallback!
  var attributes: JSPropertyAttributes
  init()
  init(name: UnsafePointer<CChar>!, callAsFunction: JSObjectCallAsFunctionCallback!, attributes: JSPropertyAttributes)
}
struct JSClassDefinition {
  var version: Int32
  var attributes: JSClassAttributes
  var className: UnsafePointer<CChar>!
  var parentClass: JSClassRef!
  var staticValues: UnsafePointer<JSStaticValue>!
  var staticFunctions: UnsafePointer<JSStaticFunction>!
  var initialize: JSObjectInitializeCallback!
  var finalize: JSObjectFinalizeCallback!
  var hasProperty: JSObjectHasPropertyCallback!
  var getProperty: JSObjectGetPropertyCallback!
  var setProperty: JSObjectSetPropertyCallback!
  var deleteProperty: JSObjectDeletePropertyCallback!
  var getPropertyNames: JSObjectGetPropertyNamesCallback!
  var callAsFunction: JSObjectCallAsFunctionCallback!
  var callAsConstructor: JSObjectCallAsConstructorCallback!
  var hasInstance: JSObjectHasInstanceCallback!
  var convertToType: JSObjectConvertToTypeCallback!
  init()
  init(version: Int32, attributes: JSClassAttributes, className: UnsafePointer<CChar>!, parentClass: JSClassRef!, staticValues: UnsafePointer<JSStaticValue>!, staticFunctions: UnsafePointer<JSStaticFunction>!, initialize: JSObjectInitializeCallback!, finalize: JSObjectFinalizeCallback!, hasProperty: JSObjectHasPropertyCallback!, getProperty: JSObjectGetPropertyCallback!, setProperty: JSObjectSetPropertyCallback!, deleteProperty: JSObjectDeletePropertyCallback!, getPropertyNames: JSObjectGetPropertyNamesCallback!, callAsFunction: JSObjectCallAsFunctionCallback!, callAsConstructor: JSObjectCallAsConstructorCallback!, hasInstance: JSObjectHasInstanceCallback!, convertToType: JSObjectConvertToTypeCallback!)
}
let kJSClassDefinitionEmpty: JSClassDefinition
func JSClassCreate(_ definition: UnsafePointer<JSClassDefinition>!) -> JSClassRef!
func JSClassRetain(_ jsClass: JSClassRef!) -> JSClassRef!
func JSClassRelease(_ jsClass: JSClassRef!)
func JSObjectMake(_ ctx: JSContextRef!, _ jsClass: JSClassRef!, _ data: UnsafeMutableRawPointer!) -> JSObjectRef!
func JSObjectMakeFunctionWithCallback(_ ctx: JSContextRef!, _ name: JSStringRef!, _ callAsFunction: JSObjectCallAsFunctionCallback!) -> JSObjectRef!
func JSObjectMakeConstructor(_ ctx: JSContextRef!, _ jsClass: JSClassRef!, _ callAsConstructor: JSObjectCallAsConstructorCallback!) -> JSObjectRef!
func JSObjectMakeArray(_ ctx: JSContextRef!, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef?>!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSObjectMakeDate(_ ctx: JSContextRef!, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef?>!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSObjectMakeError(_ ctx: JSContextRef!, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef?>!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSObjectMakeRegExp(_ ctx: JSContextRef!, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef?>!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSObjectMakeDeferredPromise(_ ctx: JSContextRef!, _ resolve: UnsafeMutablePointer<JSObjectRef?>!, _ reject: UnsafeMutablePointer<JSObjectRef?>!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSObjectMakeFunction(_ ctx: JSContextRef!, _ name: JSStringRef!, _ parameterCount: UInt32, _ parameterNames: UnsafePointer<JSStringRef?>!, _ body: JSStringRef!, _ sourceURL: JSStringRef!, _ startingLineNumber: Int32, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSObjectGetPrototype(_ ctx: JSContextRef!, _ object: JSObjectRef!) -> JSValueRef!
func JSObjectSetPrototype(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ value: JSValueRef!)
func JSObjectHasProperty(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ propertyName: JSStringRef!) -> Bool
func JSObjectGetProperty(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ propertyName: JSStringRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSValueRef!
func JSObjectSetProperty(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ propertyName: JSStringRef!, _ value: JSValueRef!, _ attributes: JSPropertyAttributes, _ exception: UnsafeMutablePointer<JSValueRef?>!)
func JSObjectDeleteProperty(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ propertyName: JSStringRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Bool
func JSObjectHasPropertyForKey(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ propertyKey: JSValueRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Bool
func JSObjectGetPropertyForKey(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ propertyKey: JSValueRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSValueRef!
func JSObjectSetPropertyForKey(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ propertyKey: JSValueRef!, _ value: JSValueRef!, _ attributes: JSPropertyAttributes, _ exception: UnsafeMutablePointer<JSValueRef?>!)
func JSObjectDeletePropertyForKey(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ propertyKey: JSValueRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Bool
func JSObjectGetPropertyAtIndex(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ propertyIndex: UInt32, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSValueRef!
func JSObjectSetPropertyAtIndex(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ propertyIndex: UInt32, _ value: JSValueRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!)
func JSObjectGetPrivate(_ object: JSObjectRef!) -> UnsafeMutableRawPointer!
func JSObjectSetPrivate(_ object: JSObjectRef!, _ data: UnsafeMutableRawPointer!) -> Bool
func JSObjectIsFunction(_ ctx: JSContextRef!, _ object: JSObjectRef!) -> Bool
func JSObjectCallAsFunction(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ thisObject: JSObjectRef!, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef?>!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSValueRef!
func JSObjectIsConstructor(_ ctx: JSContextRef!, _ object: JSObjectRef!) -> Bool
func JSObjectCallAsConstructor(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef?>!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSObjectCopyPropertyNames(_ ctx: JSContextRef!, _ object: JSObjectRef!) -> JSPropertyNameArrayRef!
func JSPropertyNameArrayRetain(_ array: JSPropertyNameArrayRef!) -> JSPropertyNameArrayRef!
func JSPropertyNameArrayRelease(_ array: JSPropertyNameArrayRef!)
func JSPropertyNameArrayGetCount(_ array: JSPropertyNameArrayRef!) -> Int
func JSPropertyNameArrayGetNameAtIndex(_ array: JSPropertyNameArrayRef!, _ index: Int) -> JSStringRef!
func JSPropertyNameAccumulatorAddName(_ accumulator: JSPropertyNameAccumulatorRef!, _ propertyName: JSStringRef!)
