
class CTTextTab : _CFObject {
}
@available(macOS 10.5, *)
func CTTextTabGetTypeID() -> CFTypeID
@available(macOS 10.5, *)
let kCTTabColumnTerminatorsAttributeName: CFString
@available(macOS 10.5, *)
func CTTextTabCreate(_ alignment: CTTextAlignment, _ location: Double, _ options: CFDictionary?) -> CTTextTab
@available(macOS 10.5, *)
func CTTextTabGetAlignment(_ tab: CTTextTab) -> CTTextAlignment
@available(macOS 10.5, *)
func CTTextTabGetLocation(_ tab: CTTextTab) -> Double
@available(macOS 10.5, *)
func CTTextTabGetOptions(_ tab: CTTextTab) -> CFDictionary?
