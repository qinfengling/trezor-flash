# trezor-flash
Trezor flash utility

It is an easy to use script to program the bootloader for Trezor One.

You don't need to download and compile the source code by yourself.

Flash the bootloader into Trezor one, then you can upgrade the firmware through https://trezor.io/start

## Dependency

### Software

- OpenOCD 0.10.0

### Hardware
- J-Link

## Program

```bash
make flash_jlink
```
