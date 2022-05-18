# switchgpu

Script to switch between internal intel gpu and external nvidia gpu without restarting.
Restarting the display-manager/session is stil necessary.

## Dependencies

The script uses prime-select by NVIDIA and the brilliant [egpu-switcher](https://github.com/hertg/egpu-switcher) by hertg.

## Usage

```bash
$ sudo ./switchgpu.sh egpu|internal
```
