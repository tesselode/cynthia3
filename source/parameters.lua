local Parameter = require 'class.parameter'

return {
	oscillator = {
		{
			wave = Parameter.Choice('Wave', {'sine', 'saw'}, 2),
			pitch = Parameter.Slider('Pitch', -24, 24, 0),
			pitchLfoMod = Parameter.Slider('Pitch LFO mod', -24, 24, 0),
			pitchEnvMod = Parameter.Slider('Pitch env mod', -24, 24, 0),
			shape = Parameter.Slider('Shape', .1, 100, 1, 7),
			shapeLfoMod = Parameter.Slider('Shape LFO mod', 0, 100, 0, 7),
			shapeEnvMod = Parameter.Slider('Shape env mod', 0, 100, 0, 7),
			smooth = Parameter.Slider('Smooth', .1, 1, 1),
			smoothLfoMod = Parameter.Slider('Smooth LFO mod', -1, 1, 0),
			smoothEnvMod = Parameter.Slider('Smooth env mod', -1, 1, 0),
		},
		{
			wave = Parameter.Choice('Wave', {'sine', 'saw'}, 2),
			pitch = Parameter.Slider('Pitch', -24, 24, 0),
			pitchLfoMod = Parameter.Slider('Pitch LFO mod', -24, 24, 0),
			pitchEnvMod = Parameter.Slider('Pitch env mod', -24, 24, 0),
			shape = Parameter.Slider('Shape', .1, 100, 1, 7),
			shapeLfoMod = Parameter.Slider('Shape LFO mod', 0, 100, 0, 7),
			shapeEnvMod = Parameter.Slider('Shape env mod', 0, 100, 0, 7),
			smooth = Parameter.Slider('Smooth', .1, 1, 1),
			smoothLfoMod = Parameter.Slider('Smooth LFO mod', -1, 1, 0),
			smoothEnvMod = Parameter.Slider('Smooth env mod', -1, 1, 0),
		},
	},
	filter = {
		level = Parameter.Slider('Level', 1, 8, 4),
		cutoff = Parameter.Slider('Cutoff', 0, .99, .99),
		cutoffLfoMod = Parameter.Slider('Cutoff LFO mod', -1, 1, 0),
		cutoffEnvMod = Parameter.Slider('Cutoff env mod', -1, 1, 0),
		resonance = Parameter.Slider('Resonance', 0, .9, 0),
		resonanceLfoMod = Parameter.Slider('Resonance LFO mod', -1, 1, 0),
		resonanceEnvMod = Parameter.Slider('Resonance env mod', -1, 1, 0),
	},
	volumeEnvelope = {
		a = Parameter.Slider('Attack', .01, 10, .01, 2),
		d = Parameter.Slider('Decay', .01, 10, .5, 2),
		s = Parameter.Slider('Sustain', 0, 1, 1),
		r = Parameter.Slider('Release', .01, 10, .01, 2),
	},
	modEnvelope = {
		a = Parameter.Slider('Attack', .01, 10, .01, 2),
		d = Parameter.Slider('Decay', .01, 10, .5, 2),
		s = Parameter.Slider('Sustain', 0, 1, 1),
		r = Parameter.Slider('Release', .01, 10, .01, 2),
	},
	lfo = {
		frequency = Parameter.Slider('Frequency', .1, 100, 3, 2),
		shape = Parameter.Slider('Shape', .1, 100, 1, 7),
		smooth = Parameter.Slider('Smooth', .1, 1, 1),
	},
}