# Bits-and-Bobs

Boost your iOS/Swift projects with a bunch of extensions, subclasses and useful pieces of code. The stuff you might otherwise copy and paste between projects.

# Use

Getting started

Install Carthage if necessary e.g.

    brew install carthage

Create a Cartfile or add

    github "SwiftLondon/Bits-and-Bobs" "master"

(we will set up version some time soon I'd expect)

Run 

    carthage update --platform iOS

On your application targets’ “General” settings tab, in the “Linked Frameworks and Libraries” section, drag and drop the framework from the Carthage/Build folder on disk.

On your application targets’ “Build Phases” settings tab, click the “+” icon and choose “New Run Script Phase”. Create a Run Script in which you specify your shell (ex: bin/sh), add the following contents to the script area below the shell:

    /usr/local/bin/carthage copy-frameworks
    
and add the paths to the frameworks you want to use under “Input Files”, e.g.:

    $(SRCROOT)/Carthage/Build/iOS/BitsAndBobs.framework

# Contribute

This is intented as a easy to contribute to, starter open source project for the Swift London Meetup group. We hope to do some more advanced things.

[See contribution guide](https://github.com/SwiftLondon/Bits-and-Bobs/blob/master/guide.md)

## Suggested kinds of things to include

* Something which goes in one file (so maybe self contained, short)
* But add tests (if possible/reasonable)
* Convenience Bits
    * Swift means you write less code than Obj-C, but we still have to use ugly, verbose Obj-C APIs... let's make that better
    * And add more funcionality (see for example UIDate+BitsAndBobs)
* Little subclasses of iOS (etc) components (see for example NormalLookingButton)
* Magic
    * If you have some kind of experiment/toy thing that other might find both useful and interesting.

## How to contribute

### Features

* Fork repo
* Add new thing (or improvement to old thing); ideally following our bits and bobs approach should probably be one Swift file
* Add tests
* If appropriate nclude an update the GUIDE.md document describing your new thing
* Create pull request

### Ideas

See the wiki or Slack

# Help

Join our #open-source channel on Slack and we will try to point you in the right direction/help out.
