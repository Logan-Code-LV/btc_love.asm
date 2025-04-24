# 💰 Bitcoin Heart (btc_love.asm) 💰

![Assembly](https://img.shields.io/badge/Assembly-x86__64-lightgrey)
![Platform](https://img.shields.io/badge/Platform-macOS-black)
![Status](https://img.shields.io/badge/Status-Hodling-orange)

## What is this?

A tiny assembly program that shows your love for Bitcoin with style! This program displays "Buy Bitcoin ♥" with a beautiful red heart using bare-metal assembly code. Because nothing says "I'm serious about crypto" like writing it in assembly language.

## Features

- Prints "Buy Bitcoin ♥" with a lovely red heart
- Written in pure x86_64 assembly for macOS
- Uses UTF-8 encoding for proper heart display
- ANSI color sequences for that extra flair
- Less than 256 bytes of pure Bitcoin passion

## How to Run

```bash
# Assemble the source file
nasm -f macho64 btc_love.asm

# Link it
ld -macos_version_min 11.0 -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -o btc_love btc_love.o

# Run and feel the love
./btc_love
```

## Why Assembly?

Because Bitcoin deserves the respect of code that runs directly on the metal. Just like how Bitcoin removes financial middlemen, assembly removes software abstraction layers.

## License

This code is released under the "HODL" license:
- You may use it
- You may share it
- But you may never sell your Bitcoin

## Disclaimer

This program will not make the price go up (directly). Past performance of this code is not indicative of future results. Not financial advice.

---

*Made with love by a true believer in the hardest money ever created.*

*Remember: 1 BTC = 1 BTC*
