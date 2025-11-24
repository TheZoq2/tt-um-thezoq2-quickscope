<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

For now, see https://blog.spade-lang.org/quickscope/

## How to test

Connect the thing with UART to `uo[0] @ 115200 baud`, then run the quickscope client. When `ui[0]` is
high, the logic analyzer will trigger and send the `ui[0]..[7] and uio[0]..[7]`
values to the host which will generate a `.vcd` file that can be viewed in
Surfer.

## External hardware

You'll need a UART adapter and something to analyze
