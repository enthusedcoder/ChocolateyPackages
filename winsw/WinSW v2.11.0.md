# WinSW v2.11.0

Released on Mar 17

## Breaking changes (YAML preview)

- Fix inconsistencies in YAML config ([#678](https://github.com/winsw/winsw/pull/678))
  - `resetFailureAfter` → `resetFailure`
  - Runaway process killer
    - `pidfile` → `pidFile`
    - `stopTimeOut` → `stopTimeout`
    - `StopParentFirst` → `stopParentFirst`



## New features

- Send close messages to GUI applications ([#737](https://github.com/winsw/winsw/pull/737) ← [#625](https://github.com/winsw/winsw/pull/625))



## Enhancements

- Improve exception logging ([#736](https://github.com/winsw/winsw/pull/736) ← [#673](https://github.com/winsw/winsw/pull/673), [#751](https://github.com/winsw/winsw/pull/751) ← [#581](https://github.com/winsw/winsw/pull/581))
- Ensure basic logging ([#755](https://github.com/winsw/winsw/pull/755) ← [#725](https://github.com/winsw/winsw/pull/725), [#755](https://github.com/winsw/winsw/pull/755) ← [#728](https://github.com/winsw/winsw/pull/728))
- Enhance console prompting ([#759](https://github.com/winsw/winsw/pull/759) ← [#758](https://github.com/winsw/winsw/pull/758))
- Rework shared directory mapper ([#765](https://github.com/winsw/winsw/pull/765) ← [#510](https://github.com/winsw/winsw/pull/510))



## Bug fixes

- Expand environment variables in YAML extensions ([#677](https://github.com/winsw/winsw/pull/677))
- Remove dependencies on WMI ([#737](https://github.com/winsw/winsw/pull/737) ← [#567](https://github.com/winsw/winsw/pull/567), [#751](https://github.com/winsw/winsw/pull/751) ← [#555](https://github.com/winsw/winsw/pull/555))
- Check start time of possible child processes ([#737](https://github.com/winsw/winsw/pull/737) ← [#584](https://github.com/winsw/winsw/pull/584))
- Leave STDIN open ([#738](https://github.com/winsw/winsw/pull/738) ← [#611](https://github.com/winsw/winsw/pull/611))
- Set console output code page to UTF-8 ([#753](https://github.com/winsw/winsw/pull/753) ← [#752](https://github.com/winsw/winsw/pull/752))
- Allow rotating logs monthly ([#761](https://github.com/winsw/winsw/pull/761))
- Tweak stdout/stderr redirections ([#770](https://github.com/winsw/winsw/pull/770) ← [#756](https://github.com/winsw/winsw/pull/756))



## Packaging changes

- Drop .NET Core 3.1 packaging ([#715](https://github.com/winsw/winsw/pull/715))
- Add .NET 5 packaging ([#729](https://github.com/winsw/winsw/pull/729))

