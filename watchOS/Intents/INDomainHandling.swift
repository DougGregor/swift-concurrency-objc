
@available(watchOS, introduced: 3.2, deprecated: 6.0, message: "Please conform to INStartAudioCallIntentHandling and INSearchCallHistoryIntentHandling instead")
protocol INCallsDomainHandling : INSearchCallHistoryIntentHandling, INStartAudioCallIntentHandling {
}
@available(watchOS, introduced: 3.2, deprecated: 6.0, message: "Please conform to INActivateCarSignalIntentHandling, INSetCarLockStatusIntentHandling, INGetCarLockStatusIntentHandling and INGetCarPowerLevelStatusIntentHandling instead")
protocol INCarCommandsDomainHandling : INActivateCarSignalIntentHandling, INGetCarLockStatusIntentHandling, INGetCarPowerLevelStatusIntentHandling, INSetCarLockStatusIntentHandling {
}
@available(watchOS, introduced: 3.2, deprecated: 6.0, message: "Please conform to INStartWorkoutIntentHandling, INPauseWorkoutIntentHandling, INEndWorkoutIntentHandling, INCancelWorkoutIntentHandling and INResumeWorkoutIntentHandling instead")
protocol INWorkoutsDomainHandling : INCancelWorkoutIntentHandling, INEndWorkoutIntentHandling, INPauseWorkoutIntentHandling, INResumeWorkoutIntentHandling, INStartWorkoutIntentHandling {
}
@available(watchOS, introduced: 3.2, deprecated: 6.0, message: "Please conform to INSendMessageIntentHandling and INSearchForMessagesIntentHandling instead")
protocol INMessagesDomainHandling : INSearchForMessagesIntentHandling, INSendMessageIntentHandling {
}
@available(watchOS, introduced: 3.0, deprecated: 6.0, message: "Please conform to INSendPaymentIntentHandling and INRequestPaymentIntentHandling instead")
protocol INPaymentsDomainHandling : INRequestPaymentIntentHandling, INSendPaymentIntentHandling {
}
@available(watchOS, introduced: 3.2, deprecated: 6.0, message: "Please conform to INSearchForPhotosIntentHandling and INStartPhotoPlaybackIntentHandling instead")
protocol INPhotosDomainHandling : INSearchForPhotosIntentHandling, INStartPhotoPlaybackIntentHandling {
}
@available(watchOS, introduced: 3.2, deprecated: 6.0, message: "Please conform to INListRideOptionsIntentHandling, INRequestRideIntentHandling and INGetRideStatusIntentHandling instead")
protocol INRidesharingDomainHandling : INGetRideStatusIntentHandling, INListRideOptionsIntentHandling, INRequestRideIntentHandling {
}
@available(watchOS, introduced: 4.0, deprecated: 6.0, message: "Please conform to INCreateNoteIntentHandling, INAppendToNoteIntentHandling, INAddTasksIntentHandling, INCreateTaskListIntentHandling, INSetTaskAttributeIntentHandling and INSearchForNotebookItemsIntentHandling instead")
protocol INNotebookDomainHandling : INAddTasksIntentHandling, INAppendToNoteIntentHandling, INCreateNoteIntentHandling, INCreateTaskListIntentHandling, INSearchForNotebookItemsIntentHandling, INSetTaskAttributeIntentHandling {
}
@available(watchOS, introduced: 4.0, deprecated: 6.0, message: "Please conform to INGetVisualCodeIntentHandling instead")
protocol INVisualCodeDomainHandling : INGetVisualCodeIntentHandling {
}
