
@available(macOS 10.9, *)
class JSManagedValue : NSObject {
  @available(macOS 10.10, *)
  /*not inherited*/ init!(value: JSValue!, andOwner owner: Any!)
  init!(value: JSValue!)
  var value: JSValue! { get }
}
