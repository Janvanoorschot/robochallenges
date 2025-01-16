rem Convert all mp4 movies in this dir to webm 
rem See: http://trac.ffmpeg.org/wiki/vpxEncodingGuide
for %%F in (*.mp4) do (
	\devtw32\ffmpeg\bin\ffmpeg -i "%%~nxF"  -b:v 1500k -vcodec libvpx -acodec libvorbis -ab 160000 -f webm -g 30 "%%~nF.webm"
)
