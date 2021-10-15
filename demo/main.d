module main;

import soloud;

void main()
{
    loadSoloud();
    
    Soloud soloud = Soloud.create();
    soloud.init();
    
    WavStream music = WavStream.create();
    music.load("data/music.flac");
    int voice = soloud.play(music);
    
    while (soloud.getActiveVoiceCount() > 0)
    {
        // do nothing while music is playing...
    }
    
    music.free();
    soloud.deinit();
}
