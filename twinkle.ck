SinOsc s => dac;

TriOsc t => dac;

110.0 => float melody;

0.5 => float onGain; 

0.3 :: second => dur myDur; 

onGain => t.gain; 
0 => s.gain; 
while (melody < 220.0) 
{
    melody => t.freq;
    1.0 +=> melody;
    0.01 :: second => now; 
}

0.7 => s.gain; 
110 => s.freq; 

for(0 => int i; i<2; i++){
    onGain => t.gain; 
    myDur => now; 
    0 => t.gain; 
    myDur => now; 
}

138.6 => s.freq; 
1.5*melody => t.freq; 

for(0 => int i; i<2 ; i++){
    onGain => t.gain; 
    myDur => now; 
    0 => t.gain; 
    myDur => now; 
}

146.8 => s.freq; 
1.6837 *melody => t.freq; 

for( 0 => int i; i< 2; i++){
    onGain => t.gain; 
    myDur => now; 
    0 => t.gain; 
    myDur => now;
}

138.6 => s.freq; 
1.5*melody => t.freq; 

onGain => t.gain;
second => now; 

for(330 => int i; i>0; i--){
    i=> t.freq;
    i*1.333 => s.freq;
    0.01 :: second => now;
}


    
