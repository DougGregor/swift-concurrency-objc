
protocol NSAccessibilityElementProtocol : NSObjectProtocol {
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> Any?
  optional func isAccessibilityFocused() -> Bool
  optional func accessibilityIdentifier() -> String
}
protocol NSAccessibilityGroup : NSAccessibilityElementProtocol {
}
protocol NSAccessibilityButton : NSAccessibilityElementProtocol {
  func accessibilityLabel() -> String?
  func accessibilityPerformPress() -> Bool
}
protocol NSAccessibilitySwitch : NSAccessibilityButton {
  func accessibilityValue() -> String?
  optional func accessibilityPerformIncrement() -> Bool
  optional func accessibilityPerformDecrement() -> Bool
}
protocol NSAccessibilityRadioButton : NSAccessibilityButton {
  func accessibilityValue() -> NSNumber?
}
protocol NSAccessibilityCheckBox : NSAccessibilityButton {
  func accessibilityValue() -> NSNumber?
}
protocol NSAccessibilityStaticText : NSAccessibilityElementProtocol {
  func accessibilityValue() -> String?
  @available(macOS 10.0, *)
  optional func accessibilityAttributedString(for range: NSRange) -> NSAttributedString?
  optional func accessibilityVisibleCharacterRange() -> NSRange
}
protocol NSAccessibilityNavigableStaticText : NSAccessibilityStaticText {
  func accessibilityString(for range: NSRange) -> String?
  func accessibilityLine(for index: Int) -> Int
  func accessibilityRange(forLine lineNumber: Int) -> NSRange
  func accessibilityFrame(for range: NSRange) -> NSRect
}
protocol NSAccessibilityProgressIndicator : NSAccessibilityGroup {
  func accessibilityValue() -> NSNumber?
}
protocol NSAccessibilityStepper : NSAccessibilityElementProtocol {
  func accessibilityLabel() -> String?
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformDecrement() -> Bool
  optional func accessibilityValue() -> Any?
}
protocol NSAccessibilitySlider : NSAccessibilityElementProtocol {
  func accessibilityLabel() -> String?
  func accessibilityValue() -> Any?
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformDecrement() -> Bool
}
protocol NSAccessibilityImage : NSAccessibilityElementProtocol {
  func accessibilityLabel() -> String?
}
protocol NSAccessibilityContainsTransientUI : NSAccessibilityElementProtocol {
  func accessibilityPerformShowAlternateUI() -> Bool
  func accessibilityPerformShowDefaultUI() -> Bool
  func isAccessibilityAlternateUIVisible() -> Bool
}
protocol NSAccessibilityTable : NSAccessibilityGroup {
  func accessibilityLabel() -> String?
  func accessibilityRows() -> [NSAccessibilityRow]?
  optional func accessibilitySelectedRows() -> [NSAccessibilityRow]?
  optional func setAccessibilitySelectedRows(_ selectedRows: [NSAccessibilityRow])
  optional func accessibilityVisibleRows() -> [NSAccessibilityRow]?
  optional func accessibilityColumns() -> [Any]?
  optional func accessibilityVisibleColumns() -> [Any]?
  optional func accessibilitySelectedColumns() -> [Any]?
  @available(macOS, introduced: 10.9, deprecated: 10.14)
  optional func accessibilityHeaderGroup() -> String?
  optional func accessibilitySelectedCells() -> [Any]?
  optional func accessibilityVisibleCells() -> [Any]?
  optional func accessibilityRowHeaderUIElements() -> [Any]?
  optional func accessibilityColumnHeaderUIElements() -> [Any]?
}
protocol NSAccessibilityOutline : NSAccessibilityTable {
}
protocol NSAccessibilityList : NSAccessibilityTable {
}
protocol NSAccessibilityRow : NSAccessibilityGroup {
  func accessibilityIndex() -> Int
  optional func accessibilityDisclosureLevel() -> Int
}
protocol NSAccessibilityLayoutArea : NSAccessibilityGroup {
  func accessibilityLabel() -> String
  func accessibilityChildren() -> [Any]?
  func accessibilitySelectedChildren() -> [Any]?
  var accessibilityFocusedUIElement: Any { get }
}
protocol NSAccessibilityLayoutItem : NSAccessibilityGroup {
  optional func setAccessibilityFrame(_ frame: NSRect)
}
@available(macOS 10.13, *)
protocol NSAccessibilityElementLoading : NSObjectProtocol {
  func accessibilityElement(withToken token: NSAccessibilityLoadingToken) -> NSAccessibilityElementProtocol?
  optional func accessibilityRangeInTargetElement(withToken token: NSAccessibilityLoadingToken) -> NSRange
}
protocol NSAccessibilityProtocol : NSObjectProtocol {
  @available(macOS 10.10, *)
  func accessibilityLayoutPoint(forScreenPoint point: NSPoint) -> NSPoint
  @available(macOS 10.10, *)
  func accessibilityLayoutSize(forScreenSize size: NSSize) -> NSSize
  @available(macOS 10.10, *)
  func accessibilityScreenPoint(forLayoutPoint point: NSPoint) -> NSPoint
  @available(macOS 10.10, *)
  func accessibilityScreenSize(forLayoutSize size: NSSize) -> NSSize
  @available(macOS 10.10, *)
  func accessibilityCell(forColumn column: Int, row: Int) -> Any?
  @available(macOS 10.10, *)
  func accessibilityAttributedString(for range: NSRange) -> NSAttributedString?
  @available(macOS 10.10, *)
  func accessibilityRange(forLine line: Int) -> NSRange
  @available(macOS 10.10, *)
  func accessibilityString(for range: NSRange) -> String?
  @available(macOS 10.10, *)
  func accessibilityRange(for point: NSPoint) -> NSRange
  @available(macOS 10.10, *)
  func accessibilityRange(for index: Int) -> NSRange
  @available(macOS 10.10, *)
  func accessibilityFrame(for range: NSRange) -> NSRect
  @available(macOS 10.10, *)
  func accessibilityRTF(for range: NSRange) -> Data?
  @available(macOS 10.10, *)
  func accessibilityStyleRange(for index: Int) -> NSRange
  @available(macOS 10.10, *)
  func accessibilityLine(for index: Int) -> Int
  @available(macOS 10.10, *)
  func accessibilityPerformCancel() -> Bool
  @available(macOS 10.10, *)
  func accessibilityPerformConfirm() -> Bool
  @available(macOS 10.10, *)
  func accessibilityPerformDecrement() -> Bool
  @available(macOS 10.10, *)
  func accessibilityPerformDelete() -> Bool
  @available(macOS 10.10, *)
  func accessibilityPerformIncrement() -> Bool
  @available(macOS 10.10, *)
  func accessibilityPerformPick() -> Bool
  @available(macOS 10.10, *)
  func accessibilityPerformPress() -> Bool
  @available(macOS 10.10, *)
  func accessibilityPerformRaise() -> Bool
  @available(macOS 10.10, *)
  func accessibilityPerformShowAlternateUI() -> Bool
  @available(macOS 10.10, *)
  func accessibilityPerformShowDefaultUI() -> Bool
  @available(macOS 10.10, *)
  func accessibilityPerformShowMenu() -> Bool
  @available(macOS 10.10, *)
  func isAccessibilitySelectorAllowed(_ selector: Selector) -> Bool
  @available(macOS 10.10, *)
  func isAccessibilityElement() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityElement(_ accessibilityElement: Bool)
  @available(macOS 10.10, *)
  func accessibilityFrame() -> NSRect
  @available(macOS 10.10, *)
  func setAccessibilityFrame(_ accessibilityFrame: NSRect)
  @available(macOS 10.10, *)
  func isAccessibilityFocused() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityFocused(_ accessibilityFocused: Bool)
  @available(macOS 10.10, *)
  func accessibilityActivationPoint() -> NSPoint
  @available(macOS 10.10, *)
  func setAccessibilityActivationPoint(_ accessibilityActivationPoint: NSPoint)
  @available(macOS 10.10, *)
  func accessibilityTopLevelUIElement() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityTopLevelUIElement(_ accessibilityTopLevelUIElement: Any?)
  @available(macOS 10.10, *)
  func accessibilityURL() -> URL?
  @available(macOS 10.10, *)
  func setAccessibilityURL(_ accessibilityURL: URL?)
  @available(macOS 10.10, *)
  func accessibilityValue() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityValue(_ accessibilityValue: Any?)
  @available(macOS 10.10, *)
  func accessibilityValueDescription() -> String?
  @available(macOS 10.10, *)
  func setAccessibilityValueDescription(_ accessibilityValueDescription: String?)
  @available(macOS 10.10, *)
  func accessibilityVisibleChildren() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityVisibleChildren(_ accessibilityVisibleChildren: [Any]?)
  @available(macOS 10.10, *)
  func accessibilitySubrole() -> NSAccessibility.Subrole?
  @available(macOS 10.10, *)
  func setAccessibilitySubrole(_ accessibilitySubrole: NSAccessibility.Subrole?)
  @available(macOS 10.10, *)
  func accessibilityTitle() -> String?
  @available(macOS 10.10, *)
  func setAccessibilityTitle(_ accessibilityTitle: String?)
  @available(macOS 10.10, *)
  func accessibilityTitleUIElement() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityTitleUIElement(_ accessibilityTitleUIElement: Any?)
  @available(macOS 10.10, *)
  func accessibilityNextContents() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityNextContents(_ accessibilityNextContents: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  @available(macOS 10.10, *)
  func setAccessibilityOrientation(_ accessibilityOrientation: NSAccessibilityOrientation)
  @available(macOS 10.10, *)
  func accessibilityOverflowButton() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityOverflowButton(_ accessibilityOverflowButton: Any?)
  @available(macOS 10.10, *)
  func accessibilityParent() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityParent(_ accessibilityParent: Any?)
  @available(macOS 10.10, *)
  func accessibilityPlaceholderValue() -> String?
  @available(macOS 10.10, *)
  func setAccessibilityPlaceholderValue(_ accessibilityPlaceholderValue: String?)
  @available(macOS 10.10, *)
  func accessibilityPreviousContents() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityPreviousContents(_ accessibilityPreviousContents: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityRole() -> NSAccessibility.Role?
  @available(macOS 10.10, *)
  func setAccessibilityRole(_ accessibilityRole: NSAccessibility.Role?)
  @available(macOS 10.10, *)
  func accessibilityRoleDescription() -> String?
  @available(macOS 10.10, *)
  func setAccessibilityRoleDescription(_ accessibilityRoleDescription: String?)
  @available(macOS 10.10, *)
  func accessibilitySearchButton() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilitySearchButton(_ accessibilitySearchButton: Any?)
  @available(macOS 10.10, *)
  func accessibilitySearchMenu() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilitySearchMenu(_ accessibilitySearchMenu: Any?)
  @available(macOS 10.10, *)
  func isAccessibilitySelected() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilitySelected(_ accessibilitySelected: Bool)
  @available(macOS 10.10, *)
  func accessibilitySelectedChildren() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilitySelectedChildren(_ accessibilitySelectedChildren: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityServesAsTitleForUIElements() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityServesAsTitleForUIElements(_ accessibilityServesAsTitleForUIElements: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityShownMenu() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityShownMenu(_ accessibilityShownMenu: Any?)
  @available(macOS 10.10, *)
  func accessibilityMinValue() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityMinValue(_ accessibilityMinValue: Any?)
  @available(macOS 10.10, *)
  func accessibilityMaxValue() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityMaxValue(_ accessibilityMaxValue: Any?)
  @available(macOS 10.10, *)
  func accessibilityLinkedUIElements() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityLinkedUIElements(_ accessibilityLinkedUIElements: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityWindow() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityWindow(_ accessibilityWindow: Any?)
  @available(macOS 10.10, *)
  func accessibilityIdentifier() -> String?
  @available(macOS 10.10, *)
  func setAccessibilityIdentifier(_ accessibilityIdentifier: String?)
  @available(macOS 10.10, *)
  func accessibilityHelp() -> String?
  @available(macOS 10.10, *)
  func setAccessibilityHelp(_ accessibilityHelp: String?)
  @available(macOS 10.10, *)
  func accessibilityFilename() -> String?
  @available(macOS 10.10, *)
  func setAccessibilityFilename(_ accessibilityFilename: String?)
  @available(macOS 10.10, *)
  func isAccessibilityExpanded() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityExpanded(_ accessibilityExpanded: Bool)
  @available(macOS 10.10, *)
  func isAccessibilityEdited() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityEdited(_ accessibilityEdited: Bool)
  @available(macOS 10.10, *)
  func isAccessibilityEnabled() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityEnabled(_ accessibilityEnabled: Bool)
  @available(macOS 10.10, *)
  func accessibilityChildren() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityChildren(_ accessibilityChildren: [Any]?)
  @available(macOS 10.13, *)
  func accessibilityChildrenInNavigationOrder() -> [NSAccessibilityElementProtocol]?
  @available(macOS 10.13, *)
  func setAccessibilityChildrenInNavigationOrder(_ accessibilityChildrenInNavigationOrder: [NSAccessibilityElementProtocol]?)
  @available(macOS 10.10, *)
  func accessibilityClearButton() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityClearButton(_ accessibilityClearButton: Any?)
  @available(macOS 10.10, *)
  func accessibilityCancelButton() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityCancelButton(_ accessibilityCancelButton: Any?)
  @available(macOS 10.10, *)
  func isAccessibilityProtectedContent() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityProtectedContent(_ accessibilityProtectedContent: Bool)
  @available(macOS 10.10, *)
  func accessibilityContents() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityContents(_ accessibilityContents: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityLabel() -> String?
  @available(macOS 10.10, *)
  func setAccessibilityLabel(_ accessibilityLabel: String?)
  @available(macOS 10.10, *)
  func isAccessibilityAlternateUIVisible() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityAlternateUIVisible(_ accessibilityAlternateUIVisible: Bool)
  @available(macOS 10.10, *)
  func accessibilitySharedFocusElements() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilitySharedFocusElements(_ accessibilitySharedFocusElements: [Any]?)
  @available(macOS 10.12, *)
  func isAccessibilityRequired() -> Bool
  @available(macOS 10.12, *)
  func setAccessibilityRequired(_ accessibilityRequired: Bool)
  @available(macOS 10.13, *)
  func accessibilityCustomRotors() -> [NSAccessibilityCustomRotor]
  @available(macOS 10.13, *)
  func setAccessibilityCustomRotors(_ accessibilityCustomRotors: [NSAccessibilityCustomRotor])
  @available(macOS 10.10, *)
  func accessibilityApplicationFocusedUIElement() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityApplicationFocusedUIElement(_ accessibilityApplicationFocusedUIElement: Any?)
  @available(macOS 10.10, *)
  func accessibilityMainWindow() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityMainWindow(_ accessibilityMainWindow: Any?)
  @available(macOS 10.10, *)
  func isAccessibilityHidden() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityHidden(_ accessibilityHidden: Bool)
  @available(macOS 10.10, *)
  func isAccessibilityFrontmost() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityFrontmost(_ accessibilityFrontmost: Bool)
  @available(macOS 10.10, *)
  func accessibilityFocusedWindow() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityFocusedWindow(_ accessibilityFocusedWindow: Any?)
  @available(macOS 10.10, *)
  func accessibilityWindows() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityWindows(_ accessibilityWindows: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityExtrasMenuBar() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityExtrasMenuBar(_ accessibilityExtrasMenuBar: Any?)
  @available(macOS 10.10, *)
  func accessibilityMenuBar() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityMenuBar(_ accessibilityMenuBar: Any?)
  @available(macOS 10.10, *)
  func accessibilityColumnTitles() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityColumnTitles(_ accessibilityColumnTitles: [Any]?)
  @available(macOS 10.10, *)
  func isAccessibilityOrderedByRow() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityOrderedByRow(_ accessibilityOrderedByRow: Bool)
  @available(macOS 10.10, *)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  @available(macOS 10.10, *)
  func setAccessibilityHorizontalUnits(_ accessibilityHorizontalUnits: NSAccessibilityUnits)
  @available(macOS 10.10, *)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  @available(macOS 10.10, *)
  func setAccessibilityVerticalUnits(_ accessibilityVerticalUnits: NSAccessibilityUnits)
  @available(macOS 10.10, *)
  func accessibilityHorizontalUnitDescription() -> String?
  @available(macOS 10.10, *)
  func setAccessibilityHorizontalUnitDescription(_ accessibilityHorizontalUnitDescription: String?)
  @available(macOS 10.10, *)
  func accessibilityVerticalUnitDescription() -> String?
  @available(macOS 10.10, *)
  func setAccessibilityVerticalUnitDescription(_ accessibilityVerticalUnitDescription: String?)
  @available(macOS 10.10, *)
  func accessibilityHandles() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityHandles(_ accessibilityHandles: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityWarningValue() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityWarningValue(_ accessibilityWarningValue: Any?)
  @available(macOS 10.10, *)
  func accessibilityCriticalValue() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityCriticalValue(_ accessibilityCriticalValue: Any?)
  @available(macOS 10.10, *)
  func isAccessibilityDisclosed() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityDisclosed(_ accessibilityDisclosed: Bool)
  @available(macOS 10.10, *)
  func accessibilityDisclosedByRow() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityDisclosedByRow(_ accessibilityDisclosedByRow: Any?)
  @available(macOS 10.10, *)
  func accessibilityDisclosedRows() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityDisclosedRows(_ accessibilityDisclosedRows: Any?)
  @available(macOS 10.10, *)
  func accessibilityDisclosureLevel() -> Int
  @available(macOS 10.10, *)
  func setAccessibilityDisclosureLevel(_ accessibilityDisclosureLevel: Int)
  @available(macOS 10.10, *)
  func accessibilityMarkerUIElements() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityMarkerUIElements(_ accessibilityMarkerUIElements: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityMarkerValues() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityMarkerValues(_ accessibilityMarkerValues: Any?)
  @available(macOS 10.10, *)
  func accessibilityMarkerGroupUIElement() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityMarkerGroupUIElement(_ accessibilityMarkerGroupUIElement: Any?)
  @available(macOS 10.10, *)
  func accessibilityUnits() -> NSAccessibilityUnits
  @available(macOS 10.10, *)
  func setAccessibilityUnits(_ accessibilityUnits: NSAccessibilityUnits)
  @available(macOS 10.10, *)
  func accessibilityUnitDescription() -> String?
  @available(macOS 10.10, *)
  func setAccessibilityUnitDescription(_ accessibilityUnitDescription: String?)
  @available(macOS 10.10, *)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  @available(macOS 10.10, *)
  func setAccessibilityRulerMarkerType(_ accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  @available(macOS 10.10, *)
  func accessibilityMarkerTypeDescription() -> String?
  @available(macOS 10.10, *)
  func setAccessibilityMarkerTypeDescription(_ accessibilityMarkerTypeDescription: String?)
  @available(macOS 10.10, *)
  func accessibilityHorizontalScrollBar() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityHorizontalScrollBar(_ accessibilityHorizontalScrollBar: Any?)
  @available(macOS 10.10, *)
  func accessibilityVerticalScrollBar() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityVerticalScrollBar(_ accessibilityVerticalScrollBar: Any?)
  @available(macOS 10.10, *)
  func accessibilityAllowedValues() -> [NSNumber]?
  @available(macOS 10.10, *)
  func setAccessibilityAllowedValues(_ accessibilityAllowedValues: [NSNumber]?)
  @available(macOS 10.10, *)
  func accessibilityLabelUIElements() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityLabelUIElements(_ accessibilityLabelUIElements: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityLabelValue() -> Float
  @available(macOS 10.10, *)
  func setAccessibilityLabelValue(_ accessibilityLabelValue: Float)
  @available(macOS 10.10, *)
  func accessibilitySplitters() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilitySplitters(_ accessibilitySplitters: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityDecrementButton() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityDecrementButton(_ accessibilityDecrementButton: Any?)
  @available(macOS 10.10, *)
  func accessibilityIncrementButton() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityIncrementButton(_ accessibilityIncrementButton: Any?)
  @available(macOS 10.10, *)
  func accessibilityTabs() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityTabs(_ accessibilityTabs: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityHeader() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityHeader(_ accessibilityHeader: Any?)
  @available(macOS 10.10, *)
  func accessibilityColumnCount() -> Int
  @available(macOS 10.10, *)
  func setAccessibilityColumnCount(_ accessibilityColumnCount: Int)
  @available(macOS 10.10, *)
  func accessibilityRowCount() -> Int
  @available(macOS 10.10, *)
  func setAccessibilityRowCount(_ accessibilityRowCount: Int)
  @available(macOS 10.10, *)
  func accessibilityIndex() -> Int
  @available(macOS 10.10, *)
  func setAccessibilityIndex(_ accessibilityIndex: Int)
  @available(macOS 10.10, *)
  func accessibilityColumns() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityColumns(_ accessibilityColumns: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityRows() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityRows(_ accessibilityRows: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityVisibleRows() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityVisibleRows(_ accessibilityVisibleRows: [Any]?)
  @available(macOS 10.10, *)
  func accessibilitySelectedRows() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilitySelectedRows(_ accessibilitySelectedRows: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityVisibleColumns() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityVisibleColumns(_ accessibilityVisibleColumns: [Any]?)
  @available(macOS 10.10, *)
  func accessibilitySelectedColumns() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilitySelectedColumns(_ accessibilitySelectedColumns: [Any]?)
  @available(macOS 10.10, *)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  @available(macOS 10.10, *)
  func setAccessibilitySortDirection(_ accessibilitySortDirection: NSAccessibilitySortDirection)
  @available(macOS 10.10, *)
  func accessibilityRowHeaderUIElements() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityRowHeaderUIElements(_ accessibilityRowHeaderUIElements: [Any]?)
  @available(macOS 10.10, *)
  func accessibilitySelectedCells() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilitySelectedCells(_ accessibilitySelectedCells: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityVisibleCells() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityVisibleCells(_ accessibilityVisibleCells: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityColumnHeaderUIElements() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilityColumnHeaderUIElements(_ accessibilityColumnHeaderUIElements: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityRowIndexRange() -> NSRange
  @available(macOS 10.10, *)
  func setAccessibilityRowIndexRange(_ accessibilityRowIndexRange: NSRange)
  @available(macOS 10.10, *)
  func accessibilityColumnIndexRange() -> NSRange
  @available(macOS 10.10, *)
  func setAccessibilityColumnIndexRange(_ accessibilityColumnIndexRange: NSRange)
  @available(macOS 10.10, *)
  func accessibilityInsertionPointLineNumber() -> Int
  @available(macOS 10.10, *)
  func setAccessibilityInsertionPointLineNumber(_ accessibilityInsertionPointLineNumber: Int)
  @available(macOS 10.10, *)
  func accessibilitySharedCharacterRange() -> NSRange
  @available(macOS 10.10, *)
  func setAccessibilitySharedCharacterRange(_ accessibilitySharedCharacterRange: NSRange)
  @available(macOS 10.10, *)
  func accessibilitySharedTextUIElements() -> [Any]?
  @available(macOS 10.10, *)
  func setAccessibilitySharedTextUIElements(_ accessibilitySharedTextUIElements: [Any]?)
  @available(macOS 10.10, *)
  func accessibilityVisibleCharacterRange() -> NSRange
  @available(macOS 10.10, *)
  func setAccessibilityVisibleCharacterRange(_ accessibilityVisibleCharacterRange: NSRange)
  @available(macOS 10.10, *)
  func accessibilityNumberOfCharacters() -> Int
  @available(macOS 10.10, *)
  func setAccessibilityNumberOfCharacters(_ accessibilityNumberOfCharacters: Int)
  @available(macOS 10.10, *)
  func accessibilitySelectedText() -> String?
  @available(macOS 10.10, *)
  func setAccessibilitySelectedText(_ accessibilitySelectedText: String?)
  @available(macOS 10.10, *)
  func accessibilitySelectedTextRange() -> NSRange
  @available(macOS 10.10, *)
  func setAccessibilitySelectedTextRange(_ accessibilitySelectedTextRange: NSRange)
  @available(macOS 10.10, *)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  @available(macOS 10.10, *)
  func setAccessibilitySelectedTextRanges(_ accessibilitySelectedTextRanges: [NSValue]?)
  @available(macOS 10.10, *)
  func accessibilityToolbarButton() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityToolbarButton(_ accessibilityToolbarButton: Any?)
  @available(macOS 10.10, *)
  func isAccessibilityModal() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityModal(_ accessibilityModal: Bool)
  @available(macOS 10.10, *)
  func accessibilityProxy() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityProxy(_ accessibilityProxy: Any?)
  @available(macOS 10.10, *)
  func isAccessibilityMain() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityMain(_ accessibilityMain: Bool)
  @available(macOS 10.10, *)
  func accessibilityFullScreenButton() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityFullScreenButton(_ accessibilityFullScreenButton: Any?)
  @available(macOS 10.10, *)
  func accessibilityGrowArea() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityGrowArea(_ accessibilityGrowArea: Any?)
  @available(macOS 10.10, *)
  func accessibilityDocument() -> String?
  @available(macOS 10.10, *)
  func setAccessibilityDocument(_ accessibilityDocument: String?)
  @available(macOS 10.10, *)
  func accessibilityDefaultButton() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityDefaultButton(_ accessibilityDefaultButton: Any?)
  @available(macOS 10.10, *)
  func accessibilityCloseButton() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityCloseButton(_ accessibilityCloseButton: Any?)
  @available(macOS 10.10, *)
  func accessibilityZoomButton() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityZoomButton(_ accessibilityZoomButton: Any?)
  @available(macOS 10.10, *)
  func accessibilityMinimizeButton() -> Any?
  @available(macOS 10.10, *)
  func setAccessibilityMinimizeButton(_ accessibilityMinimizeButton: Any?)
  @available(macOS 10.10, *)
  func isAccessibilityMinimized() -> Bool
  @available(macOS 10.10, *)
  func setAccessibilityMinimized(_ accessibilityMinimized: Bool)
  @available(macOS 10.13, *)
  func accessibilityCustomActions() -> [NSAccessibilityCustomAction]?
  @available(macOS 10.13, *)
  func setAccessibilityCustomActions(_ accessibilityCustomActions: [NSAccessibilityCustomAction]?)
}
