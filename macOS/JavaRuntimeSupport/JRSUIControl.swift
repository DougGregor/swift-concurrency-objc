
typealias JRSUIRenderer = CFTypeRef
func JRSUIRendererCreate() -> JRSUIRenderer!
typealias JRSUIControl = CFTypeRef
func JRSUIControlCreate(_ isFlipped: Bool) -> JRSUIControl!
func JRSUIControlDraw(_ renderer: JRSUIRenderer!, _ control: JRSUIControl!, _ context: CGContext!, _ bounds: CGRect)
