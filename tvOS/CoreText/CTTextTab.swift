
class CTTextTab : _CFObject {
}
@available(tvOS 9.0, *)
func CTTextTabGetTypeID() -> CFTypeID
@available(tvOS 9.0, *)
let kCTTabColumnTerminatorsAttributeName: CFString
@available(tvOS 9.0, *)
func CTTextTabCreate(_ alignment: CTTextAlignment, _ location: Double, _ options: CFDictionary?) -> CTTextTab
@available(tvOS 9.0, *)
func CTTextTabGetAlignment(_ tab: CTTextTab) -> CTTextAlignment
@available(tvOS 9.0, *)
func CTTextTabGetLocation(_ tab: CTTextTab) -> Double
@available(tvOS 9.0, *)
func CTTextTabGetOptions(_ tab: CTTextTab) -> CFDictionary?
