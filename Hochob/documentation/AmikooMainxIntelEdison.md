# Intel Edison

```sh
root@edison:~# opkg install espeak
```

```sh
root@edison:~# npm install mqtt --save
-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|-\|/-\|/-\|/-\|/-\|-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|-\|/-\|/-\|-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/t
��├��─��─ inherits@2.0.3
��├��─��─ reinterval@1.1.0
��├��─��─ xtend@4.0.1
��├��─��─ minimist@1.2.0
��├��─��─ concat-stream@1.6.0 (typedarray@0.0.6)
��├��─��─ commist@1.0.0 (leven@1.0.2)
��├��─��─ split2@2.1.1 (through2@2.0.3)
��├��─��─ end-of-stream@1.4.0 (once@1.4.0)
��├��─��─ pump@1.0.2 (once@1.4.0)
��├��─��─ mqtt-packet@5.2.2 (process-nextick-args@1.0.7, bl@1.2.0)
��├��─��─ readable-stream@2.2.6 (buffer-shims@1.0.0, string_decoder@0.10.31, process-nextick-args@1.0.7, util-deprecate@1.0.2, core-util-is@1.0.2, isarray@1.0.0)
��├��─��─ websocket-stream@3.3.3 (through2@2.0.3, ws@1.1.4, duplexify@3.5.0)
��└��─��─ help-me@1.0.1 (through2@2.0.3, callback-stream@1.1.0, glob-stream@5.3.5)
root@edison:~# 
```

```sh
root@edison:~# ls
CodeLabs  node_modules
root@edison:~# cd CodeLabs/Hochob/LupeRobot/
root@edison:~/CodeLabs/Hochob/LupeRobot# ls
Learning  Sandbox  Show  amikoo.js  command.js  ispeak.js
```

# Testing

```sh
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t lupe/say -m "yes it is"
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t lupe/leftup -m "yes it is"
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t lupe/leftdown -m "yes it is"
```

```sh
root@edison:~/CodeLabs/Hochob/LupeRobot# node amikoo.js 
(node) sys is deprecated. Use util instead.
Sending state closed
Received message lupe/say yes it is
<Buffer 79 65 73 20 69 74 20 69 73>
(node) util.puts is deprecated. Use console.log instead.

Received message lupe/leftup yes it is
Left Up
Left Up

Received message lupe/leftdown yes it is
Left Down
Left Down
```