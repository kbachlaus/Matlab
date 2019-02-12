%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Your Name>
% GT Email     : <Your GT Email Address>
% Homework     : hw14
% Course       : CS1371
% Section      : <Your Section>
% Collaboration: <Place Here One of the Following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 OR
%                 "I worked on this homework with <give the names of the
%                  people you worked with>, used solutions or partial
%                  solutions provided by <name the people or other
%                  sources>, and referred to <cite any texts, web sites, or
%                  other materials not provided as course materials for CS
%                  1371.>"
%
%
% Files provided with this homework:  
%   - hw14.m
%   - ABCs_pretest_hw14.p
%   - fft.pdf
%   - guitar.wav
%   - guitar_soln.fig
%   - nosoup.wav
%   - nosoup_soln.fig
%   - chord1.wav
%   - chord2.wav
%   - chord3.wav
%   - chirp1.wav
%   - chirp2.wav
%   - chirp3.wav
%   - plotspec.p
%   - spectrogram1.png
%   - spectrogram2.png
%   - spectrogram3.png
%   - A3.wav
%   - C5.wav
%   - D4.wav
%   - C4.wav
%   - friday.txt
%   - scale.txt
%   - twinkle.txt
%   - ABCs_sound.m
%   - soundTester.m
%   - soundTester.p
%
% Files to submit:
%   - hw14.m
%   - ABCs_sound.m
%   - soundPlot.m
%   - createChord.m
%   - parseInput.m
%   - transposeSound.m
%   - makeMusic.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is in an m-file starting with ABCs_.  Open this
% file in MATLAB and complete it according to the directions contained
% within.
%
% Once you are done, you can test your ABC file by running the pretest at
% the command prompt, like so:
%
%  >> ABCs_pretest_hw14
%
% Alternatively, you can right button click the file in the Current Folder
% window and click "Run".  You cannot open the file by double clicking it.
% If you have problems running the pretest, then you probably need a newer
% version of MATLAB.  Newer versions of MATLAB are available free to you.
% Please read David Smith's announcement "Matlab 'Free' Access" for further
% information.  Be sure the pretest and your ABC file are in the same
% directory.
%
% The pretest is simply an aide to help you test your code.  While we
% strive to supply a quality pretest file for you to use, a sucessful
% result with a pretest file does not ensure awarded points on the
% homework.  The pretest is merely a guide to help you complete the ABCs.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Homework Video of the Week!
%
% http://www.youtube.com/watch?v=WHvjTWiGUaY
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   14.  Sound
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will recieve
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers).  Any scripts turned in will be given a 0 automatically.
%
%==========================================================================
% PROBLEM 1. Displaying FFT
%--------------------------------------------------------------------------
%
% Function Name: soundPlot
% Inputs (1):  - (char) filename of a .wav file
% Outputs(0):  -  none 
%
% Output Plots (1): - Plot of time domain and frequency domain information
%
% Function Description:
%   Given the filename of a .wav file, write a function called "soundPlot"
%   that produces the following two plots:
%   
%   1. A time domain plot - amplitude data (y-axis) versus time (x-axis),
%      where zero should be the first time value
%   2. A frequency domain plot -  normalized magnitude (y-axis) versus
%      frequency data (x-axis)
%     
%
%   Specifications:
%
%   - Each plot should be a 1x2 subplot of the figure, with the time domain
%     plot on the left and the frequency domain plot on the right. 
%   - Both plots should be plotted with blue lines 
%   - The principle frequency should be plotted on the frequency plot with
%     a red star (*).
%   - For the time-domain plot the title should be "Time Domain Plot", the
%     x-axis should be labeled "Time (sec)", and the y-axis should be
%     labeled "Amplitude". The starting time should be zero and the ending
%     time should be t_max. The total number of points (evenly spaced from
%     0 to t_max) should correspond to the total number of samples from the
%     input file.
%   - For the frequency-domain plot the title should be "Frequency Domain
%     Plot", the x-axis should be labeled "Frequency (Hz)", and the y-axis
%     should be labeled "Normalized Magnitude". The normalized magnitude
%     should be found using the FFT method.
%   
% Hints:
%	- fft.pdf will be useful in completing the Fast Fourier Transform (FFT)
%	  section of the problem.
%
% Test Cases:
%	soundPlot('guitar.wav');
%       => Plot looks like guitar_soln.fig
%
%   soundPlot('nosoup.wav');
%     	=> Plot looks like nosoup_soln.fig
%
%%
%==========================================================================
% PROBLEM 2. Chords Generated by Fourier-Series Coefficients
%--------------------------------------------------------------------------
%
% Function Name: createChord
% Inputs  (2): - (double) A vector of fundamental frequencies (in Hz)
%              - (double) A column vector of amplitude values
% Outputs (1): - (double) Output vector of tones
%
% Background Information:
%   In real life, sounds never consist of single pitches at a single
%   frequency. Every musical instrument, when playing a single note, is
%   actually projecting the fundamental frequency and many other
%   frequencies that are whole-number multiples of that fundamental
%   frequency. Additionally, most music consists of multiple notes whose
%   frequencies are not whole-number ratios of one another. This effect
%   leads to the formation of chords. 
%
% Function Description:
%   Given a vector of fundamental frequencies and a vector of Fourier
%   coefficients, create a function called "createChord" that produces
%   sound vector that represents a complex chord.
% 
%   Fourier showed that any sound can be represented by a sum of
%   cosines. This function takes in a vector of one or more fundamental
%   frequencies, and a single vector of amplitude values, also known as
%   Fourier coefficients. The amplitudes given in the second input will be
%   applied to each of the fundamental frequencies in the first input and
%   their respective harmonics. A harmonic is a whole-number multiple of a
%   fundamental frequency.
% 
%   A cosine representing a sound uses the typical form:
%
%               A * cos (2* pi * f * t)
%   
%   where A is amplitude, f is frequency, and t is time.
% 
%   The first Fourier coefficient (the first value in your amplitude
%   vector) corresponds to the amplitude of the fundamental frequency. The
%   second Fourier Coefficient corresponds to the harmonic that is
%   2*fundamental frequency, etc, ... and so on and so forth until the Kth
%   Fourier coefficient corresponds to the K*fundamental frequency. For
%   this problem, any set of fundamental frequencies will have the same K
%   number of harmonics/overtones corresponding to the length of the
%   amplitude vector of Fourier coefficients.
%
%   For example, consider the following case:
%
%               y = createChord([256 768 1280],[.4 6])
%
%   There are three fundamental frequencies and two Fourier coefficient
%   amplitudes provided. Thus, the following time vectors will be added and
%   then converted to a column vector:
%       
%               y = .4*cos(2*pi*256*t)  + 6*cos(2*pi*512*t)  +
%                   .4*cos(2*pi*768*t)  + 6*cos(2*pi*1536*t) +
%                   .4*cos(2*pi*1280*t) + 6*cos(2*pi*2560*t)
%
%   Your cosines should all be the same length and be generated from the
%   same time vector, starting at 0, through 2 seconds, with a sampling
%   rate of 44,100 Hz. (You should have 88,200 samples.) 
% 
%   Once all of your cosines have been summed, your final output should be
%   scaled by the magnitude of the largest value in the amplitude vector
%   such that the amplitudes range from a maximum value of 1 to a minimum
%   value of -1. Remember that it should be a column vector and not a row
%   vector.
%
%   For more information:
%       http://mathworld.wolfram.com/FourierSeries.html
%       http://en.wikipedia.org/wiki/Music_intervals#Size_of_intervals_used
%       _in_different_tuning_systems
%
% Notes:
%   - This problem should be able to generate anywhere from a single
%     cosine to a sufficiently large number of fundamental frequencies.
%   - Be sure that all outputs are surpressed in your code. 
%   - Use linspace() to generate your time vector. 
%   - When scaling the amplitude column vector, remember that the largest
%     magnitude could be a negative number.
%
% Test Cases:
%   y1 = createChord([440],[1]);
%   soundsc(y1,44100);
%       => sounds like 'chord1.wav'
%          
%   y2 = createChord([264,264*(5/4), 264*(3/2)],...
%           [.75,.7,.45,.55,.7,.50,.45,.4,.45,.4,.37]);
%   soundsc(y2,44100);
%       => sounds like 'chord2.wav'
%      
%   y3 = createChord([256 768 1280],[.4 6 .8 1]);
%   soundsc(y3,44100);
%       => sounds like 'chord3.wav'
% 
%%
%==========================================================================
% PROBLEM 3.  Computing Half-Steps Away from Middle C (C4)
%--------------------------------------------------------------------------
% 
% Function Name: parseInput
% Inputs  (1):  - (cell)   cell array of strings representing note names
% Outputs (1):  - (double) vector of distances in half-steps away from 
%                          middle C
% 
% Function Description:
%   Given a a cell array of strings, each representing a note, write a
%   function called "parseInput" that converts each string into the number
%   of half steps the note is away from middle C, or C4. The function
%   should return a vector of these half steps, up (+) or down (-), from
%   middle C. 
%
%   Notes will be in one of two formats: either of length 2,
%   with the note name and octave (F3) or of length 3 with note name,
%   sharp/flat, and	octave (G#4). Note names go in the following order:
%
%                               - C
%                               - D
%                               - E
%                               - F
%                               - G
%                               - A
%                               - B 
%   
%   When going from B to C, the octave number is incremented
%   (so B3 and C4 are 1 half step away, whereas E3 and F4 are an octave and
%   a half step away).
% 
%   For those without much experience playing music, here's a quick rundown
%   of how you should approach each piece of data:
%
%   In this example we will compute how far away G#3 is from C4. \
%
%   - First, add the number of half-steps that separate your note from C.
%     Don't worry about octaves or sharps/flats yet. A half-step is one 
%     piano key. So:
% 
%           C is 0 half-steps away
%           D is 2 half-steps away
%           E is 4 half-steps away
%           F is 5 half-steps away
%           G is 7 half-steps away
%           A is 9 half-steps away
%           B is 11 half-steps away
%
%     Therefore, for G#3, I should use 7 as my number of steps: 7
%
%   - Then, if we have a sharp sign ('#'), add 1. If we have a flat
%     sign ('b'), subtract 1. In this case we add 1: 7 + 1 = 8.
%   - Finally, see how many octaves seperate your note and C4, and
%     multiply that by 12.  Use negative numbers when going down.  G#3 is
%     in the 3rd octave, so it is -1 octaves away from C4 (in the 4th
%     octave): 7 + 1 + (-1)*12 = -4.
%   - I can conclude that G#3 is -4 half-steps away from C4.
%
% Test Cases:
%   FFVic = parseInput({'D5', 'D5', 'D5', 'D5', 'Bb4', 'C5',...
%               'D5', 'C5', 'D5'});
%       FFVic => [14 14 14 14 10 12 14 12 14]
%
%   SMBU = parseInput({'C3', 'C4', 'A3', 'A4', 'B3', 'B4',});
%   	SMBU => [-12 0 -3 9 -1 11]
%
%%
%==========================================================================
% PROBLEM 4. Pitch Transposition
%--------------------------------------------------------------------------
%
% Function Name: transposeSound
% Inputs (4): - (double) amplitude vector of the sound
%             - (double) sampling frequency of the sound
%             - (double) number of half-steps to transpose
%             - (double) new duration of the sound, in seconds
% Outputs(1): - (double) vector of amplitudes for the given note
%
% Function Description:
%   Write a function called "transposeSound" that takes in an amplitude
%   vector and sampling frequency from wavread, the number of half steps to
%   transpose (shift) the note, and the new duration of the note. This
%   function should transpose the note using round(linspace(...)). After
%   it is transposed, it should either be truncated or zero-filled so that
%   the note is the specified length. Be sure to index using an integer;
%   round if necessary.
%
% Hints: 
%   - Remember that writing a value to an index that is greater than
%     the length of your vector will zero-fill all of the indices 
%     in-between.
%
% Test Cases:
%     [x fs] = wavread('C4.wav');
%     newx = transposeSound(x,fs,2,1);
%     soundsc(newx,fs); => sounds like D4.wav;
%     length(newx) => 44100;
%
%     newx2 = transposeSound(x,fs,12,2);
%     soundsc(newx2,fs) => sounds like C5.wav;
%     length(newx2) => 88200;
%
%     newx3 = transposeSound(x,fs,-3,3.5);
%     soundsc(newx3,fs) => sounds like A3.wav;
%     length(newx3) => 154350;
%
%%
%==========================================================================
% PROBLEM 5. MATLAB: The Musical
%--------------------------------------------------------------------------
%
% Function Name: makeMusic
% Inputs  (2): - (char) A .wav playing C4
%              - (char) A .txt file with notenames and durations
% Outputs (2): - (double) The amplitude vector for the song
%              - (double) The sampling frequency for the song
%
% Function Description:
%   Given a .wav file playing C4 on the piano, and a .txt file with
%   notenames and durations, write a function called "makeMusic" that will
%   play the notes in the .txt file using the C4 as a basis. The .txt file
%   will only have two lines, the first being the note names, and the
%   second being the durations in seconds.
%
% Hints:
%   - Remember that csvread and dlmread won't work with files containing	
%     non-numerical data, so you will need to use low level file I/O to
%     process the text file.
%   - You may find transposeSound, parseInput, and LLcsvread (from
%     Homework 09) useful.
%
% Test Cases:
%	[amp Fs] = makeMusic('C4.wav','twinkle.txt');
%   soundsc(amp,Fs); => sounds like 'Twinkle, Twinkle Little Star'.
%       length(amp)  => 352800
%                Fs  => 44100
%
%   [amp Fs] = makeMusic('C4.wav','scale.txt');
%   soundsc(amp,Fs); => sounds like a C-Major scale
%       length(amp)  => 176400
%                 Fs => 44100
%
%   %And just for fun...
%
%   [amp Fs] = makeMusic('C4.wav','friday.txt');
%   soundsc(amp,Fs); => sounds like a Rebecca Black's viral hit, "Friday"
%       length(amp)  => 1190706
%                 Fs => 44100
%
%   [amp Fs] = makeMusic('C4.wav','semesterIsOver.txt');
%   soundsc(amp,Fs);
%       length(amp) => 341773 
%       Fs => 44100
%    
%==========================================================================
% CONGRATULATIONS! YOU HAVE FINISHED THE LAST CS 1371 HOMEWORK ASSIGNMENT!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it thoroughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
%
%
%
%
% Woah, you scrolled down here! Don't worry, you're done! Just submit the
% assignment and good luck on the final! :) 