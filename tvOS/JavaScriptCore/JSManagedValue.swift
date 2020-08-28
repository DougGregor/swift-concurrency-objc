
@available(tvOS 7.0, *)
class JSManagedValue : NSObject {
  /*not inherited*/ init!(value: JSValue!, andOwner owner: Any!)
  init!(value: JSValue!)
  var value: JSValue! { get }
}
