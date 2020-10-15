
var kJRSUI_Key_widget: Int { get }
var kJRSUI_Key_state: Int { get }
var kJRSUI_Key_size: Int { get }
var kJRSUI_Key_direction: Int { get }
var kJRSUI_Key_orientation: Int { get }
var kJRSUI_Key_verticalAlignment: Int { get }
var kJRSUI_Key_horizontalAlignment: Int { get }
var kJRSUI_Key_position: Int { get }
var kJRSUI_Key_pressedPart: Int { get }
var kJRSUI_Key_variant: Int { get }
var kJRSUI_Key_windowType: Int { get }
var kJRSUI_Key_focused: Int { get }
var kJRSUI_Key_indicatorOnly: Int { get }
var kJRSUI_Key_noIndicator: Int { get }
var kJRSUI_Key_nothingToScroll: Int { get }
var kJRSUI_Key_arrowsOnly: Int { get }
var kJRSUI_Key_frameOnly: Int { get }
var kJRSUI_Key_segmentTrailingSeparator: Int { get }
var kJRSUI_Key_segmentLeadingSeparator: Int { get }
var kJRSUI_Key_maximumValue: Int { get }
var kJRSUI_Key_value: Int { get }
var kJRSUI_Key_animationStartTime: Int { get }
var kJRSUI_Key_animationTime: Int { get }
var kJRSUI_Key_animationFrame: Int { get }
var kJRSUI_Key_thumbProportion: Int { get }
var kJRSUI_Key_thumbStart: Int { get }
var kJRSUI_Key_windowFrameDrawClipped: Int { get }
var kJRSUI_Key_windowFrameDrawTitleSeparator: Int { get }
var kJRSUI_Key_windowTitleBarHeight: Int { get }
var kJRSUI_Key_presentationState: Int { get }
var kJRSUI_Key_userInterfaceLayoutDirection: Int { get }
typealias JRSUIKey = CFIndex
func JRSUIGetKey(_ value: JRSUIKey) -> CFTypeRef!
func JRSUIControlSetValueByKey(_ control: JRSUIControl!, _ key: CFTypeRef!, _ value: CFTypeRef!)
var kJRSUI_Widget_background: Int { get }
var kJRSUI_Widget_buttonBevel: Int { get }
var kJRSUI_Widget_buttonBevelInset: Int { get }
var kJRSUI_Widget_buttonBevelRound: Int { get }
var kJRSUI_Widget_buttonCheckBox: Int { get }
var kJRSUI_Widget_buttonComboBox: Int { get }
var kJRSUI_Widget_buttonComboBoxInset: Int { get }
var kJRSUI_Widget_buttonDisclosure: Int { get }
var kJRSUI_Widget_buttonListHeader: Int { get }
var kJRSUI_Widget_buttonLittleArrows: Int { get }
var kJRSUI_Widget_buttonPopDown: Int { get }
var kJRSUI_Widget_buttonPopDownInset: Int { get }
var kJRSUI_Widget_buttonPopDownSquare: Int { get }
var kJRSUI_Widget_buttonPopUp: Int { get }
var kJRSUI_Widget_buttonPopUpInset: Int { get }
var kJRSUI_Widget_buttonPopUpSquare: Int { get }
var kJRSUI_Widget_buttonPush: Int { get }
var kJRSUI_Widget_buttonPushScope: Int { get }
var kJRSUI_Widget_buttonPushScope2: Int { get }
var kJRSUI_Widget_buttonPushTextured: Int { get }
var kJRSUI_Widget_buttonPushInset: Int { get }
var kJRSUI_Widget_buttonPushInset2: Int { get }
var kJRSUI_Widget_buttonRadio: Int { get }
var kJRSUI_Widget_buttonRound: Int { get }
var kJRSUI_Widget_buttonRoundHelp: Int { get }
var kJRSUI_Widget_buttonRoundInset: Int { get }
var kJRSUI_Widget_buttonRoundInset2: Int { get }
var kJRSUI_Widget_buttonSearchFieldCancel: Int { get }
var kJRSUI_Widget_buttonSearchFieldFind: Int { get }
var kJRSUI_Widget_buttonSegmented: Int { get }
var kJRSUI_Widget_buttonSegmentedInset: Int { get }
var kJRSUI_Widget_buttonSegmentedInset2: Int { get }
var kJRSUI_Widget_buttonSegmentedSCurve: Int { get }
var kJRSUI_Widget_buttonSegmentedTextured: Int { get }
var kJRSUI_Widget_buttonSegmentedToolbar: Int { get }
var kJRSUI_Widget_dial: Int { get }
var kJRSUI_Widget_disclosureTriangle: Int { get }
var kJRSUI_Widget_dividerGrabber: Int { get }
var kJRSUI_Widget_dividerSeparatorBar: Int { get }
var kJRSUI_Widget_dividerSplitter: Int { get }
var kJRSUI_Widget_focus: Int { get }
var kJRSUI_Widget_frameGroupBox: Int { get }
var kJRSUI_Widget_frameGroupBoxSecondary: Int { get }
var kJRSUI_Widget_frameListBox: Int { get }
var kJRSUI_Widget_framePlacard: Int { get }
var kJRSUI_Widget_frameTextField: Int { get }
var kJRSUI_Widget_frameTextFieldRound: Int { get }
var kJRSUI_Widget_frameWell: Int { get }
var kJRSUI_Widget_growBox: Int { get }
var kJRSUI_Widget_growBoxTextured: Int { get }
var kJRSUI_Widget_gradient: Int { get }
var kJRSUI_Widget_menu: Int { get }
var kJRSUI_Widget_menuItem: Int { get }
var kJRSUI_Widget_menuBar: Int { get }
var kJRSUI_Widget_menuTitle: Int { get }
var kJRSUI_Widget_progressBar: Int { get }
var kJRSUI_Widget_progressIndeterminateBar: Int { get }
var kJRSUI_Widget_progressRelevance: Int { get }
var kJRSUI_Widget_progressSpinner: Int { get }
var kJRSUI_Widget_scrollBar: Int { get }
var kJRSUI_Widget_scrollColumnSizer: Int { get }
var kJRSUI_Widget_slider: Int { get }
var kJRSUI_Widget_sliderThumb: Int { get }
var kJRSUI_Widget_synchronization: Int { get }
var kJRSUI_Widget_tab: Int { get }
var kJRSUI_Widget_titleBarCloseBox: Int { get }
var kJRSUI_Widget_titleBarCollapseBox: Int { get }
var kJRSUI_Widget_titleBarZoomBox: Int { get }
var kJRSUI_Widget_titleBarToolbarButton: Int { get }
var kJRSUI_Widget_toolbarItemWell: Int { get }
var kJRSUI_Widget_windowFrame: Int { get }
typealias JRSUIWidget = CFIndex
func JRSUIControlSetWidget(_ control: JRSUIControl!, _ value: JRSUIWidget)
var kJRSUI_State_active: Int { get }
var kJRSUI_State_inactive: Int { get }
var kJRSUI_State_disabled: Int { get }
var kJRSUI_State_pressed: Int { get }
var kJRSUI_State_pulsed: Int { get }
var kJRSUI_State_rollover: Int { get }
var kJRSUI_State_drag: Int { get }
typealias JRSUIState = CFIndex
func JRSUIControlSetState(_ control: JRSUIControl!, _ value: JRSUIState)
var kJRSUI_Size_mini: Int { get }
var kJRSUI_Size_small: Int { get }
var kJRSUI_Size_regular: Int { get }
var kJRSUI_Size_large: Int { get }
typealias JRSUISize = CFIndex
func JRSUIControlSetSize(_ control: JRSUIControl!, _ value: JRSUISize)
var kJRSUI_Direction_none: Int { get }
var kJRSUI_Direction_up: Int { get }
var kJRSUI_Direction_down: Int { get }
var kJRSUI_Direction_left: Int { get }
var kJRSUI_Direction_right: Int { get }
var kJRSUI_Direction_north: Int { get }
var kJRSUI_Direction_south: Int { get }
var kJRSUI_Direction_east: Int { get }
var kJRSUI_Direction_west: Int { get }
typealias JRSUIDirection = CFIndex
func JRSUIControlSetDirection(_ control: JRSUIControl!, _ value: JRSUIDirection)
var kJRSUI_Orientation_horizontal: Int { get }
var kJRSUI_Orientation_vertical: Int { get }
typealias JRSUIOrintation = CFIndex
func JRSUIControlSetOrientation(_ control: JRSUIControl!, _ value: JRSUIOrintation)
var kJRSUI_AlignmentHorizontal_left: Int { get }
var kJRSUI_AlignmentHorizontal_center: Int { get }
var kJRSUI_AlignmentHorizontal_right: Int { get }
typealias JRSUIAlignmentHorizontal = CFIndex
func JRSUIControlSetAlignmentVertical(_ control: JRSUIControl!, _ value: JRSUIAlignmentHorizontal)
var kJRSUI_AlignmentVertical_top: Int { get }
var kJRSUI_AlignmentVertical_center: Int { get }
var kJRSUI_AlignmentVertical_bottom: Int { get }
typealias JRSUIAlignmentVertical = CFIndex
func JRSUIControlSetAlignmentHorizontal(_ control: JRSUIControl!, _ value: JRSUIAlignmentVertical)
var kJRSUI_SegmentPosition_first: Int { get }
var kJRSUI_SegmentPosition_middle: Int { get }
var kJRSUI_SegmentPosition_last: Int { get }
var kJRSUI_SegmentPosition_only: Int { get }
typealias JRSUISegmentPosition = CFIndex
func JRSUIControlSetSegmentPosition(_ control: JRSUIControl!, _ value: JRSUISegmentPosition)
var kJRSUI_ScrollBarPart_none: Int { get }
var kJRSUI_ScrollBarPart_thumb: Int { get }
var kJRSUI_ScrollBarPart_arrowMin: Int { get }
var kJRSUI_ScrollBarPart_arrowMax: Int { get }
var kJRSUI_ScrollBarPart_arrowMaxInside: Int { get }
var kJRSUI_ScrollBarPart_arrowMinInside: Int { get }
var kJRSUI_ScrollBarPart_trackMin: Int { get }
var kJRSUI_ScrollBarPart_trackMax: Int { get }
typealias JRSUIScrollBarPart = CFIndex
func JRSUIControlSetScrollBarPart(_ control: JRSUIControl!, _ value: JRSUIScrollBarPart)
var kJRSUI_Variant_menuGlyph: Int { get }
var kJRSUI_Variant_menuPopup: Int { get }
var kJRSUI_Variant_menuPulldown: Int { get }
var kJRSUI_Variant_menuHierarchical: Int { get }
var kJRSUI_Variant_gradientListBackgroundEven: Int { get }
var kJRSUI_Variant_gradientListBackgroundOdd: Int { get }
var kJRSUI_Variant_gradientSideBar: Int { get }
var kJRSUI_Variant_gradientSideBarSelection: Int { get }
var kJRSUI_Variant_gradientSideBarFocusedSelection: Int { get }
typealias JRSUIVariant = CFIndex
func JRSUIControlSetVariant(_ control: JRSUIControl!, _ value: JRSUIVariant)
var kJRSUI_WindowType_document: Int { get }
var kJRSUI_WindowType_utility: Int { get }
var kJRSUI_WindowType_titlelessUtility: Int { get }
typealias JRSUIWindowType = CFIndex
func JRSUIControlSetWindowType(_ control: JRSUIControl!, _ value: JRSUIWindowType)
var kJRSUI_PresentationState_activeKey: Int { get }
var kJRSUI_PresentationState_activeMain: Int { get }
var kJRSUI_PresentationState_inactive: Int { get }
typealias JRSUIPresentationState = CFIndex
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is longer supported as it does not seem to be used in Java 7+. It may be removed in a future version of macOS.")
func JRSUIControlSetPresentationState(_ control: JRSUIControl!, _ value: JRSUIPresentationState)
var kJRSUI_UserInterfaceLayoutDirection_leftToRight: Int { get }
var kJRSUI_UserInterfaceLayoutDirection_rightToLeft: Int { get }
typealias JRSUIUserInterfaceLayoutDirection = CFIndex
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "This functionality is longer supported as it does not seem to be used in Java 7+. It may be removed in a future version of macOS.")
func JRSUIControlSetUserInterfaceLayoutDirection(_ control: JRSUIControl!, _ value: JRSUIUserInterfaceLayoutDirection)
func JRSUIControlSetShowArrows(_ control: JRSUIControl!, _ value: Bool)
func JRSUIControlSetAnimating(_ control: JRSUIControl!, _ value: Bool)
