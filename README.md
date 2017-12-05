# createMp4FromM3U8NetD
Get full form of any NetD videos. This shell script downloads m3u8 file and than downloads all ts files after that concate them for full video


# example usage
bash download.sh https://1881381249.dogannet.tv/S10/HLS_VOD/159629_b622/2500/prog_index.m3u8?app=com.netd https://1881381249.dogannet.tv/S10/HLS_VOD/159629_b622/2500 bolum_fragman

$1 = https://1881381249.dogannet.tv/S10/HLS_VOD/159629_b622/2500/prog_index.m3u8?app=com.netd *.
$2 = https://1881381249.dogannet.tv/S10/HLS_VOD/159629_b622/2500*.
$3 = bolum_fragman*.

You can just use one parameters instead of for $1 and $2.
