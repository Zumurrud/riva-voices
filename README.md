This repo contains operator voice audio from the global version of Arknights.  The files are Ogg Vorbis; the audio is exactly equivalent to that in the original FMOD FSB files, which stored Vorbis audio data with different headers.  No reencoding was performed.

The file paths used are taken straight from the asset bundles, after removing a few directories common to every voice audio path.  For example, the contents of the Unity audio clip derived from `dyn/audio/sound_beta_2/voice_en/char_440_pinecn/cn_001.ogg` may be found in this repo at `voice_en/char_440_pinecn/cn_001.ogg`.

db.sql, db.csv, and justfile can be used to reconstitute a sqlite database for tracking which assetbundles have been extracted, as well as those bundles' versions.  They have no other use.