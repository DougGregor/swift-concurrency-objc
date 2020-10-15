
@available(macOS 10.11, *)
protocol CNContactPickerDelegate : NSObjectProtocol {
  optional func contactPickerWillClose(_ picker: CNContactPicker)
  @asyncHandler optional func contactPickerDidClose(_ picker: CNContactPicker)
}
