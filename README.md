# LondonSwift

Boost your iOS/Swift projects with a bunch of extensions, subclasses and useful pieces of code. The stuff you might otherwise copy and paste between projects.

# Use

Getting started

Install Carthage if necessary e.g.

    brew install carthage

Create a Cartfile or add

    github "jamesporter/LondonSwift"

Run 

    carthage update --platform iOS

On your application targets’ “General” settings tab, in the “Linked Frameworks and Libraries” section, drag and drop the framework from the Carthage/Build folder on disk.

On your application targets’ “Build Phases” settings tab, click the “+” icon and choose “New Run Script Phase”. Create a Run Script in which you specify your shell (ex: bin/sh), add the following contents to the script area below the shell:

    /usr/local/bin/carthage copy-frameworks
    
and add the paths to the frameworks you want to use under “Input Files”, e.g.:

    $(SRCROOT)/Carthage/Build/iOS/LondonSwift.framework

# Contribute

This is intented as a easy to contribute to, starter open source project for the Swift London Meetup group. We hope to do some more advanced things.

As far as possible please include tests.
