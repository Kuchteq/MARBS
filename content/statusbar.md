---
title: "statusbar"
date: 2023-01-19T09:15:59-05:00
---

The statusbar consists of two applications that work together to do the job. The first one is `dwlb` desponsible for displaying window manager information such as your tags, the layout and the window title. The second one is `someblocks`. A command which hosts many customizable and extensible modules that display more general system information that makes up the right side of the statusbar.

{{< img src="/pix/statusbar.png" class=normal link="/pix/statusbar.png" caption="Simple statusbar" >}}

## Using

Statusbar runs automatically when dwl starts via the startw script, appearing as many modules in the top right, and will update as needed.

## Window managenment info on the left side

To the left you can see your currently active tag and the tags that have some apps in them (the rest is hidden). To the right of that there is the layout information block that inidicates which layout we are on. See [dwl page](/dwl).

## Modules on the right side

There are modules for CPU and RAM usage, laptop battery, volume, date and time, that should be self-explanatory. In addition, when making a screenshot or making a recording, some extra information will get displayed there.

## Files

- `~/.local/src/dwlb/` -- the source code for what is being displayed on the left.
- `~/.local/src/someblocks/` -- the source code for what is being displayed on the right.
- `~/.local/src/someblocks/config.h` -- where modules can be added. 
- `~/.local/bin/statusbar/` -- the scripts made for the statusbar. Note that not all are activated by default and you can add new ones as desired.


## Signals and updating

In the `config.h` file, you will notice that each statusbar module should have a unique "Update Signal."
For modules that need to update at set events, you

For example, the `sb-volume` module has the update signal `10` by default. If we manually run the command:

```fish
wpctl set-volume @DEFAULT_AUDIO_SINK@ 3%+
```

This happens to increase the volume, but the module *does not* update with the new volume by default.
We also want to signal to dwmblocks to update this module by sending it signal `10`:

```fish
pkill -RTMIN+10 someblocks
```

This will now update the module.
Although, `pkill` is slightly slower than the command `kill`, which can make a big difference if we are making semi-frequent changes in a script. To signal with `kill`, we must send the value **plus 34**.
Just remember 34.

So `10 + 34 = 44`, so we use this command:

```fish
kill -44 $(pidof someblocks)
```

(Note also we send the signal to the process ID of someblocks as well.)


## Source code

- [The build for MARBS](https://github.com/Kuchteq/someblocks)
- [the original dwlb](https://github.com/torrinfail/dwmblocks)
- [the original someblocks](https://sr.ht/~raphi/someblocks/)
- ISC License.
