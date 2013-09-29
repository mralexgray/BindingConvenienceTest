

/* BindableHueView	* 	Edited by Alex Gray 9/29/13	*	© 2011 Peter Hosey. All rights reserved.  */

#import "BindableHueView.h"


@implementation BindableHueView

- (void) didChangeValueForKey:(NSString *)key {	self.needsDisplay = YES; [super didChangeValueForKey:key];	}

- (void) drawRect:(NSRect)dirtyRect {

	[[NSColor colorWithCalibratedHue:[_hueDegrees floatValue]/360  saturation:1 brightness:1 alpha:1]set];
	NSRectFill(dirtyRect);
}
- (IBAction) randomize:(id)sender  {	self.hueDegrees = @((arc4random() % 255));	}

@end

int main(int argc, char *argv[])	{	return NSApplicationMain(argc, (const char **)argv);	}
