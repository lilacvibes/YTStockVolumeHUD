%hook YTVolumeBarView

- (void)volumeChanged:(id)arg1 {

	%orig(nil);

}

%end

%hook UIApplication 

- (void)setSystemVolumeHUDEnabled:(BOOL)arg1 forAudioCategory:(id)arg2 {

	%orig(true, arg2);

}

%end