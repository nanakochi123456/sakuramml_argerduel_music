rem ��������������
set drv=f:
set data=%drv%\TiMidiTy++

rem arukana-d.cfg �� %drv%\timidity\patches\cfgs �ɃR�s�[����

copy arukana-d.cfg "%drv%\TiMidiTy++\patches\cfgs"

%drv%
cd "\TiMidiTy++\Timidity++"
start timidity -c ../patches/cfgs/arukana-d.cfg -Ow --output-stereo -s 48000 --reverb=d,127 %data%\d.mid
timidity -c ../patches/cfgs/arukana-d.cfg --output-stereo -s 48000 --reverb=d,127 %data%\d.mid
