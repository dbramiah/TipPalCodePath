# Pre-work - TipPal

TipPal is a tip calculator application for iOS.

Submitted by: Daena Ramiah

Time spent: 5 hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [X] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.
* [X] Settings page can change the default color scheme to dark

The following **additional** features are implemented:

- [X] Improved styling in UI

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src="http://i.imgur.com/vq0hMwe.gif" title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

I ran into trouble a few times when I tried to rename the functions that I had linked to a ui field via a triggered event. 
With the xcode IDE, I had assumed that the linked functions would update names when I renamed them directly in code but
they didn't -- I didn't quite figure out how to also update the names in the field's associated triggered event so ended up 
relinking them from scratch.

I also had to look up how to set colors specifically via hexcode for the dark / light color theme -- I worked through
a few different syntax interations (e.g. UIColor.blueColor()) until I landed on the correct hexcode syntax.

I'm planning on adding the last bill amount if <10 min using NSDate in the next iteration

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
