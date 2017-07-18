+++
date = "2017-07-18T20:32:50+12:00"
title = "Write to NTFS with MacOS"
tags = ["fs", "macos", "osx"]

+++


I'm always surprised when I plug in the family's external HD and find that my Mac refuses
to write to it. Hopefully one day, it will be fixed. So what do I do ?

<!--more-->

In the meantime, I followed the handy instructions at https://github.com/osxfuse/osxfuse/wiki/NTFS-3G


This is what I got below. It looks the first time I installed osxfuse without choosing the
"MacOs compatability" option.

The second time I tried it, it was already mounted, so I had to click the "eject" icon for
the drive in Finder.

The third time, it seemed to work but was waiting on the "Fixing" line for a long time
which was worrying but nothing bad happened, hurray !

```

kuah-air:~ kuahyeow$ sudo ntfs-3g /dev/disk3s1 /Volumes/NTFS -olocal -oallow_other
dyld: Library not loaded: /usr/local/lib/libfuse.2.dylib
  Referenced from: /usr/local/bin/ntfs-3g
  Reason: image not found
kuah-air:~ kuahyeow$ sudo ntfs-3g /dev/disk3s1 /Volumes/NTFS -olocal -oallow_other
Error opening '/dev/disk3s1': Resource busy
Failed to mount '/dev/disk3s1': Resource busy
Mount is denied because the NTFS volume is already exclusively opened.
The volume may be already mounted, or another software may use it which
could be identified for example by the help of the 'fuser' command.
kuah-air:~ kuahyeow$ sudo ntfs-3g /dev/disk3s1 /Volumes/NTFS -olocal -oallow_other
The disk contains an unclean file system (0, 0).
The file system wasn't safely closed on Windows. Fixing.

```


Props to the developers of osxfuse and ntfs-3g !
