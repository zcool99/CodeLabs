# VLC Media Player

- [VLC Documentation](http://www.videolan.org/doc/)
- [VLC Wiki](https://wiki.videolan.org/Documentation:Documentation)
- [VLC Media Server](http://www.makeuseof.com/tag/create-linux-vlc-streaming-media-server-home/)

## Issues

- Another video is showing up in latest? yes, you have decreased th number of photos so it is taking more from previous runs
- Audio set to default once playing

## Configuration

- Tools > Preferences > Playlist and Instances > Allow only one instance (Unchecked)
- Tools > Preferences > Playlist and Instances > Pause on last frame of a video (Checked)

## Install

```sh
hochob@server:~$ sudo apt-get install vlc
[sudo] password for hochob: 
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following additional packages will be installed:
  fonts-freefont-ttf libbasicusageenvironment1 libdvbpsi10 libebml4v5 libfreerdp-cache1.1 libfreerdp-client1.1 libfreerdp-codec1.1 libfreerdp-common1.1.0
  libfreerdp-core1.1 libfreerdp-crypto1.1 libfreerdp-gdi1.1 libfreerdp-locale1.1 libfreerdp-primitives1.1 libfreerdp-utils1.1 libgl1-mesa-glx libglapi-mesa
  libgles1-mesa libgles2-mesa libgroupsock8 libiso9660-8 liblivemedia52 liblua5.2-0 libmatroska6v5 libmpcdec6 libproxy-tools libqt5x11extras5
  libresid-builder0c2a libsdl-image1.2 libsidplay2v5 libssh2-1 libupnp6 libusageenvironment3 libva-drm1 libva-x11-1 libvcdinfo0 libvlc5 libvlccore8
  libvncclient1 libwinpr-crt0.1 libwinpr-dsparse0.1 libwinpr-environment0.1 libwinpr-file0.1 libwinpr-handle0.1 libwinpr-heap0.1 libwinpr-input0.1
  libwinpr-interlocked0.1 libwinpr-library0.1 libwinpr-path0.1 libwinpr-pool0.1 libwinpr-registry0.1 libwinpr-rpc0.1 libwinpr-sspi0.1 libwinpr-synch0.1
  libwinpr-sysinfo0.1 libwinpr-thread0.1 libwinpr-utils0.1 libxcb-composite0 libxcb-xv0 vlc-data vlc-nox vlc-plugin-notify vlc-plugin-samba
Suggested packages:
  freerdp-x11 libdvdcss2
The following NEW packages will be installed:
  fonts-freefont-ttf libbasicusageenvironment1 libdvbpsi10 libebml4v5 libfreerdp-cache1.1 libfreerdp-client1.1 libfreerdp-codec1.1 libfreerdp-common1.1.0
  libfreerdp-core1.1 libfreerdp-crypto1.1 libfreerdp-gdi1.1 libfreerdp-locale1.1 libfreerdp-primitives1.1 libfreerdp-utils1.1 libgles1-mesa libgles2-mesa
  libgroupsock8 libiso9660-8 liblivemedia52 liblua5.2-0 libmatroska6v5 libmpcdec6 libproxy-tools libqt5x11extras5 libresid-builder0c2a libsdl-image1.2
  libsidplay2v5 libssh2-1 libupnp6 libusageenvironment3 libva-drm1 libva-x11-1 libvcdinfo0 libvlc5 libvlccore8 libvncclient1 libwinpr-crt0.1
  libwinpr-dsparse0.1 libwinpr-environment0.1 libwinpr-file0.1 libwinpr-handle0.1 libwinpr-heap0.1 libwinpr-input0.1 libwinpr-interlocked0.1
  libwinpr-library0.1 libwinpr-path0.1 libwinpr-pool0.1 libwinpr-registry0.1 libwinpr-rpc0.1 libwinpr-sspi0.1 libwinpr-synch0.1 libwinpr-sysinfo0.1
  libwinpr-thread0.1 libwinpr-utils0.1 libxcb-composite0 libxcb-xv0 vlc vlc-data vlc-nox vlc-plugin-notify vlc-plugin-samba
The following packages will be upgraded:
  libgl1-mesa-glx libglapi-mesa
2 upgraded, 61 newly installed, 0 to remove and 190 not upgraded.
Need to get 22.4 MB of archives.
After this operation, 97.8 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
...
Setting up vlc (2.2.4-4ubuntu0.16.10.1) ...
Processing triggers for libc-bin (2.24-3ubuntu1) ...
Processing triggers for vlc-nox (2.2.4-4ubuntu0.16.10.1) ...
hochob@server:~$ 
```

```sh
hochob@server:~$ sudo sed -i 's/geteuid/getppid/' /usr/bin/vlc
hochob@server:~$ 
```

## Camera Preview

```sh
hochob@server:~$ cvlc --no-video-title-show --fullscreen v4l2:///dev/video0
VLC media player 2.2.4 Weatherwax (revision 2.2.3-37-g888b7e89)
[000055909d6676a8] dummy interface: using the dummy interface module...
Failed to open VDPAU backend libvdpau_i965.so: cannot open shared object file: No such file or directory
^C
hochob@server:~$ 
```

## Video Sample

```sh
hochob@server:~$ cd Videos/
hochob@server:~/Videos$ wget http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4
--2017-03-19 10:22:49--  http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4
Resolving commondatastorage.googleapis.com (commondatastorage.googleapis.com)... 172.217.6.48
Connecting to commondatastorage.googleapis.com (commondatastorage.googleapis.com)|172.217.6.48|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 158008374 (151M) [video/mp4]
Saving to: ‘BigBuckBunny.mp4’

BigBuckBunny.mp4                        100%[==============================================================================>] 150.69M  10.4MB/s    in 16s     

2017-03-19 10:23:05 (9.29 MB/s) - ‘BigBuckBunny.mp4’ saved [158008374/158008374]

hochob@server:~/Videos$ 
```

## VLC UI

```sh
hochob@server:~$ vlc
VLC media player 2.2.4 Weatherwax (revision 2.2.3-37-g888b7e89)
[00005591fd91a088] core libvlc: Running vlc with the default interface. Use 'cvlc' to use vlc without interface.
QObject::~QObject: Timers cannot be stopped from another thread
hochob@server:~$ 
```

## VLC Command Line

```sh
hochob@server:~$ cvlc 
VLC media player 2.2.4 Weatherwax (revision 2.2.3-37-g888b7e89)
[000056045929ed88] dummy interface: using the dummy interface module...
```

```sh
hochob@server:~/Videos$ cvlc --no-video-title-show --fullscreen BigBuckBunny.mp4 vlc://quit
VLC media player 2.2.4 Weatherwax (revision 2.2.3-37-g888b7e89)
[000056434e039788] dummy interface: using the dummy interface module...
Failed to open VDPAU backend libvdpau_i965.so: cannot open shared object file: No such file or directory
Failed to open VDPAU backend libvdpau_i965.so: cannot open shared object file: No such file or directory
[00007f7f30001cd8] xcb_window window error: X server failure
^C
hochob@server:~/Videos$ 
```

### VLC Command Line Quit Ways

```sh
hochob@server:~/Videos$ cvlc --no-video-title-show --fullscreen --play-and-exit BigBuckBunny.mp4
VLC media player 2.2.4 Weatherwax (revision 2.2.3-37-g888b7e89)
[000055a996daa8b8] dummy interface: using the dummy interface module...
Failed to open VDPAU backend libvdpau_i965.so: cannot open shared object file: No such file or directory
Failed to open VDPAU backend libvdpau_i965.so: cannot open shared object file: No such file or directory
[00007f23dc001cd8] xcb_window window error: X server failure
^C
hochob@server:~/Videos$ 
```

```sh
hochob@server:~/Videos$ pkill vlc
hochob@server:~/Videos$ 
```

### VLC Command Line Help

```sh
hochob@server:~$ cvlc -h
VLC media player 2.2.4 Weatherwax (revision 2.2.3-37-g888b7e89)
Usage: vlc [options] [stream] ...
You can specify multiple streams on the commandline.
They will be enqueued in the playlist.
The first item specified will be played first.

Options-styles:
  --option  A global option that is set for the duration of the program.
   -option  A single letter version of a global --option.
   :option  An option that only applies to the stream directly before it
            and that overrides previous settings.

Stream MRL syntax:
  [[access][/demux]://]URL[#[title][:chapter][-[title][:chapter]]]
  [:option=value ...]

  Many of the global --options can also be used as MRL specific :options.
  Multiple :option=value pairs can be specified.

URL syntax:
  file:///path/file              Plain media file
  http://host[:port]/file        HTTP URL
  ftp://host[:port]/file         FTP URL
  mms://host[:port]/file         MMS URL
  screen://                      Screen capture
  dvd://[device]                 DVD device
  vcd://[device]                 VCD device
  cdda://[device]                Audio CD device
  udp://[[<source address>]@[<bind address>][:<bind port>]]
                                 UDP stream sent by a streaming server
  vlc://pause:<seconds>          Pause the playlist for a certain time
  vlc://quit                     Special item to quit VLC


 core program (core)

 Audio
      --audio, --no-audio        Enable audio (default enabled)
      --spdif, --no-spdif        Use S/PDIF when available (default disabled)
      --force-dolby-surround {0 (Auto), 1 (On), 2 (Off)} 
                                 Force detection of Dolby Surround
      --audio-replay-gain-mode {none,track,album} 
                                 Replay gain mode
      --audio-replay-gain-preamp <float> 
                                 Replay preamp
      --audio-replay-gain-default <float> 
                                 Default replay gain
      --audio-time-stretch, --no-audio-time-stretch 
                                 Enable time stretching audio (default enabled)
      --audio-filter <string>    Audio filters
      --audio-visual <string>    Audio visualizations

 Video
  -f, --fullscreen, --no-fullscreen 
                                 Fullscreen video output (default disabled)
      --overlay, --no-overlay    Overlay video output (default enabled)
      --video-on-top, --no-video-on-top 
                                 Always on top (default disabled)
      --video-wallpaper, --no-video-wallpaper 
                                 Enable wallpaper mode  (default disabled)
      --video-title-show, --no-video-title-show 
                                 Show media title on video (default enabled)
      --video-title-timeout <integer [-2147483648 .. 2147483647]> 
                                 Show video title for x milliseconds
      --video-title-position {0 (Center), 1 (Left), 2 (Right), 4 (Top), 8 (Bottom), 5 (Top-Left), 6 (Top-Right), 9 (Bottom-Left), 10 (Bottom-Right)} 
                                 Position of video title
      --mouse-hide-timeout <integer [-2147483648 .. 2147483647]> 
                                 Hide cursor and fullscreen controller after x milliseconds
   Snapshot:
      --snapshot-path <string>   Video snapshot directory (or filename)
      --snapshot-prefix <string> Video snapshot file prefix
      --snapshot-format {png,jpg,tiff} 
                                 Video snapshot format
      --snapshot-preview, --no-snapshot-preview 
                                 Display video snapshot preview (default enabled)
      --snapshot-sequential, --no-snapshot-sequential 
                                 Use sequential numbers instead of timestamps (default disabled)
   Window properties:
      --crop <string>            Video cropping
      --custom-crop-ratios <string> 
                                 Custom crop ratios list
      --aspect-ratio <string>    Source aspect ratio
      --autoscale, --no-autoscale 
                                 Video Auto Scaling (default enabled)
      --scale <float>            Video scaling factor
      --custom-aspect-ratios <string> 
                                 Custom aspect ratios list
      --deinterlace {0 (Off), -1 (Automatic), 1 (On)} 
                                 Deinterlace
      --deinterlace-mode {discard,blend,mean,bob,linear,x,yadif,yadif2x,phosphor,ivtc} 
                                 Deinterlace mode
      --video-filter <string>    Video filter module
      --video-splitter <string>  Video splitter module

 Subpictures
   On Screen Display:
      --spu, --no-spu            Enable sub-pictures (default enabled)
      --osd, --no-osd            On Screen Display (default enabled)
   Subtitles:
      --sub-file <string>        Use subtitle file
      --sub-autodetect-file, --no-sub-autodetect-file 
                                 Autodetect subtitle files (default enabled)
   Overlays:
      --sub-source <string>      Subpictures source module
      --sub-filter <string>      Subpictures filter module
   Track settings:
      --audio-language <string>  Audio language
      --sub-language <string>    Subtitle language
      --menu-language <string>   Menu language
      --preferred-resolution {-1 (Best available), 1080 (Full HD (1080p)), 720 (HD (720p)), 576 (Standard Definition (576 or 480 lines)), 360 (Low Definition (360 lines)), 240 (Very Low Definition (240 lines))} 
                                 Preferred video resolution
   Playback control:
      --input-repeat <integer [-2147483648 .. 2147483647]> 
                                 Input repetitions
      --input-fast-seek, --no-input-fast-seek 
                                 Fast seek (default disabled)
      --rate <float>             Playback speed
   Default devices:
      --dvd <string>             DVD device
      --vcd <string>             VCD device
      --cd-audio <string>        Audio CD device
   Advanced:
      --input-title-format <string> 
                                 Change title according to current media

 Input
      --stream-filter <string>   Stream filter module

 Playlist
   Performance options:
  -Z, --random, --no-random      Play files randomly forever (default disabled)
  -L, --loop, --no-loop          Repeat all (default disabled)
  -R, --repeat, --no-repeat      Repeat current item (default disabled)
      --play-and-exit, --no-play-and-exit 
                                 Play and exit (default disabled)
      --play-and-stop, --no-play-and-stop 
                                 Play and stop (default disabled)
      --playlist-autostart, --no-playlist-autostart 
                                 Auto start (default enabled)
      --playlist-cork, --no-playlist-cork 
                                 Pause on audio communication (default enabled)
      --media-library, --no-media-library 
                                 Use media library (default disabled)
      --playlist-tree, --no-playlist-tree 
                                 Display playlist tree (default disabled)
      --open <string>            Default stream
      --auto-preparse, --no-auto-preparse 
                                 Automatically preparse files (default enabled)
      --metadata-network-access, --no-metadata-network-access 
                                 Allow metadata network access (default enabled)
  -v, --verbose <integer [-2147483648 .. 2147483647]> 
                                 Verbosity (0,1,2)
  -q, --quiet, --no-quiet        Be quiet (default disabled)
      --pidfile <string>         Write process id to file
      --advanced, --no-advanced  Show advanced options (default disabled)
      --interact, --no-interact  Interface interaction (default enabled)
  -I, --intf <string>            Interface module
      --extraintf <string>       Extra interface modules
      --control <string>         Control interfaces

 Hot keys
      --hotkeys-mousewheel-mode {2 (Ignore), 0 (Volume Control), 1 (Position Control)} 
                                 MouseWheel up-down axis Control
      --global-key-toggle-fullscreen <string> 
                                 Fullscreen
      --key-toggle-fullscreen <string> 
                                 Fullscreen
      --global-key-leave-fullscreen <string> 
                                 Exit fullscreen
      --key-leave-fullscreen <string> 
                                 Exit fullscreen
      --global-key-play-pause <string> 
                                 Play/Pause
      --key-play-pause <string>  Play/Pause
      --global-key-faster <string> 
                                 Faster
      --key-faster <string>      Faster
      --global-key-slower <string> 
                                 Slower
      --key-slower <string>      Slower
      --global-key-rate-normal <string> 
                                 Normal rate
      --key-rate-normal <string> Normal rate
      --global-key-rate-faster-fine <string> 
                                 Faster (fine)
      --key-rate-faster-fine <string> 
                                 Faster (fine)
      --global-key-rate-slower-fine <string> 
                                 Slower (fine)
      --key-rate-slower-fine <string> 
                                 Slower (fine)
      --global-key-next <string> Next
      --key-next <string>        Next
      --global-key-prev <string> Previous
      --key-prev <string>        Previous
      --global-key-stop <string> Stop
      --key-stop <string>        Stop
      --global-key-jump-extrashort <string> 
                                 Very short backwards jump
      --key-jump-extrashort <string> 
                                 Very short backwards jump
      --global-key-jump+extrashort <string> 
                                 Very short forward jump
      --key-jump+extrashort <string> 
                                 Very short forward jump
      --global-key-jump-short <string> 
                                 Short backwards jump
      --key-jump-short <string>  Short backwards jump
      --global-key-jump+short <string> 
                                 Short forward jump
      --key-jump+short <string>  Short forward jump
      --global-key-jump-medium <string> 
                                 Medium backwards jump
      --key-jump-medium <string> Medium backwards jump
      --global-key-jump+medium <string> 
                                 Medium forward jump
      --key-jump+medium <string> Medium forward jump
      --global-key-jump-long <string> 
                                 Long backwards jump
      --key-jump-long <string>   Long backwards jump
      --global-key-jump+long <string> 
                                 Long forward jump
      --key-jump+long <string>   Long forward jump
      --global-key-frame-next <string> 
                                 Next frame
      --key-frame-next <string>  Next frame
      --global-key-quit <string> Quit
      --key-quit <string>        Quit
      --global-key-vol-up <string> 
                                 Volume up
      --key-vol-up <string>      Volume up
      --global-key-vol-down <string> 
                                 Volume down
      --key-vol-down <string>    Volume down
      --global-key-vol-mute <string> 
                                 Mute
      --key-vol-mute <string>    Mute
      --global-key-audio-track <string> 
                                 Cycle audio track
      --key-audio-track <string> Cycle audio track
      --global-key-audiodevice-cycle <string> 
                                 Cycle through audio devices
      --key-audiodevice-cycle <string> 
                                 Cycle through audio devices
      --global-key-subtitle-track <string> 
                                 Cycle subtitle track
      --key-subtitle-track <string> 
                                 Cycle subtitle track
      --global-key-subtitle-toggle <string> 
                                 Toggle subtitles
      --key-subtitle-toggle <string> 
                                 Toggle subtitles
      --global-key-program-sid-next <string> 
                                 Cycle next program Service ID
      --key-program-sid-next <string> 
                                 Cycle next program Service ID
      --global-key-program-sid-prev <string> 
                                 Cycle previous program Service ID
      --key-program-sid-prev <string> 
                                 Cycle previous program Service ID
      --global-key-aspect-ratio <string> 
                                 Cycle source aspect ratio
      --key-aspect-ratio <string> 
                                 Cycle source aspect ratio
      --global-key-crop <string> Cycle video crop
      --key-crop <string>        Cycle video crop
      --global-key-toggle-autoscale <string> 
                                 Toggle autoscaling
      --key-toggle-autoscale <string> 
                                 Toggle autoscaling
      --global-key-incr-scalefactor <string> 
                                 Increase scale factor
      --key-incr-scalefactor <string> 
                                 Increase scale factor
      --global-key-decr-scalefactor <string> 
                                 Decrease scale factor
      --key-decr-scalefactor <string> 
                                 Decrease scale factor
      --global-key-deinterlace <string> 
                                 Toggle deinterlacing
      --key-deinterlace <string> Toggle deinterlacing
      --global-key-deinterlace-mode <string> 
                                 Cycle deinterlace modes
      --key-deinterlace-mode <string> 
                                 Cycle deinterlace modes
      --global-key-intf-show <string> 
                                 Show controller in fullscreen
      --key-intf-show <string>   Show controller in fullscreen
      --global-key-wallpaper <string> 
                                 Toggle wallpaper mode in video output
      --key-wallpaper <string>   Toggle wallpaper mode in video output
      --global-key-random <string> 
                                 Random
      --key-random <string>      Random
      --global-key-loop <string> Normal/Loop/Repeat
      --key-loop <string>        Normal/Loop/Repeat
   Zoom:
      --global-key-zoom-quarter <string> 
                                 1:4 Quarter
      --key-zoom-quarter <string> 
                                 1:4 Quarter
      --global-key-zoom-half <string> 
                                 1:2 Half
      --key-zoom-half <string>   1:2 Half
      --global-key-zoom-original <string> 
                                 1:1 Original
      --key-zoom-original <string> 
                                 1:1 Original
      --global-key-zoom-double <string> 
                                 2:1 Double
      --key-zoom-double <string> 2:1 Double
   Jump sizes:
      --extrashort-jump-size <integer [-2147483648 .. 2147483647]> 
                                 Very short jump length
      --short-jump-size <integer [-2147483648 .. 2147483647]> 
                                 Short jump length
      --medium-jump-size <integer [-2147483648 .. 2147483647]> 
                                 Medium jump length
      --long-jump-size <integer [-2147483648 .. 2147483647]> 
                                 Long jump length
      --bookmark1 <string>       Playlist bookmark 1
      --bookmark2 <string>       Playlist bookmark 2
      --bookmark3 <string>       Playlist bookmark 3
      --bookmark4 <string>       Playlist bookmark 4
      --bookmark5 <string>       Playlist bookmark 5
      --bookmark6 <string>       Playlist bookmark 6
      --bookmark7 <string>       Playlist bookmark 7
      --bookmark8 <string>       Playlist bookmark 8
      --bookmark9 <string>       Playlist bookmark 9
      --bookmark10 <string>      Playlist bookmark 10
  -h, --help, --no-help          print help for VLC (can be combined with --advanced and --help-verbose) (default disabled)
  -H, --full-help, --no-full-help 
                                 Exhaustive help for VLC and its modules (default disabled)
      --longhelp, --no-longhelp  print help for VLC and all its modules (can be combined with --advanced and --help-verbose) (default disabled)
      --help-verbose, --no-help-verbose 
                                 ask for extra verbosity when displaying help (default disabled)
  -l, --list, --no-list          print a list of available modules (default disabled)
      --list-verbose, --no-list-verbose 
                                 print a list of available modules with extra detail (default disabled)
  -p, --module <string>          print help on a specific module (can be combined with --advanced and --help-verbose). Prefix the module name with = for
                                 strict matches.
      --ignore-config, --no-ignore-config 
                                 no configuration option will be loaded nor saved to config file (default enabled)
      --reset-config, --no-reset-config 
                                 reset the current config to the default values (default disabled)
      --reset-plugins-cache, --no-reset-plugins-cache 
                                 resets the current plugins cache (default disabled)
      --version, --no-version    print version information (default disabled)
      --config <string>          use alternate config file

Note: add --advanced to your command line to see advanced options.

To get exhaustive help, use '-H'.
hochob@server:~$ 
```