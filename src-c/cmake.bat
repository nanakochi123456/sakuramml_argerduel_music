rem ↓をかきかえる
set drv=f:
set data=%drv%\TiMidiTy++

rem arukana-c.cfg を %drv%\timidity\patches\cfgs にコピーする

copy arukana-c.cfg "%drv%\TiMidiTy++\patches\cfgs"

%drv%
cd "\TiMidiTy++\Timidity++"
start timidity -c ../patches/cfgs/arukana-c.cfg -Ow --output-stereo -s 48000 --reverb=d,127 %data%\c.mid
timidity -c ../patches/cfgs/arukana-c.cfg --output-stereo -s 48000 --reverb=d,127 %data%\c.mid
