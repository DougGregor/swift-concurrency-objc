
protocol NSColorPickingDefault {
  init?(pickerMask mask: Int, colorPanel owningColorPanel: NSColorPanel)
  func provideNewButtonImage() -> NSImage
  func insertNewButtonImage(_ newButtonImage: NSImage, in buttonCell: NSButtonCell)
  func viewSizeChanged(_ sender: Any?)
  func alphaControlAddedOrRemoved(_ sender: Any?)
  func attachColorList(_ colorList: NSColorList)
  func detachColorList(_ colorList: NSColorList)
  func setMode(_ mode: NSColorPanel.Mode)
  @available(macOS 10.5, *)
  func buttonToolTip() -> String
  @available(macOS 10.5, *)
  func minContentSize() -> NSSize
}
protocol NSColorPickingCustom : NSColorPickingDefault {
  func supportsMode(_ mode: NSColorPanel.Mode) -> Bool
  func currentMode() -> NSColorPanel.Mode
  func provideNewView(_ initialRequest: Bool) -> NSView
  func setColor(_ newColor: NSColor)
}
