This repo contains operator voice audio from the global version of Arknights.  Outside of `old_voices`, the files are Ogg Vorbis.  For all .oggs, the audio is exactly equivalent to that in the original FMOD FSB files, which stored Vorbis audio data in a non-Ogg format.

The file paths are taken from the asset bundles, with a few common directories removed. For example, the contents of the Unity audio clip derived from `dyn/audio/sound_beta_2/voice_en/char_440_pinecn/cn_001.ogg` may be found in this repo at `voice_en/char_440_pinecn/cn_001.ogg`.

`old_voices` contains audio files of replaced character voices, currently all drawn from PseudoMon's [TLVR](https://github.com/PseudoMon/arknights-audio).

`db.sql`, `db.csv`, and `justfile` can be used to reconstitute a sqlite database for tracking which assetbundles have been extracted, as well as those bundles' versions.  They have no other use.
