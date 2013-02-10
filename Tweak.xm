%hook SpringBoard

- (void)applicationDidFinishLaunching:(id)arg1 {
    %orig;
    float brightness = [UIScreen mainScreen].brightness;
    [[UIScreen mainScreen] setBrightness:brightness+0.01f];
    [[UIScreen mainScreen] setBrightness:brightness];
}

%end

%ctor {
	@autoreleasepool {
        %init();
	}
}
