Envelope = require 'class.envelope'
Filter = require 'class.filter'
Oscillator = require 'class.oscillator'
parameters = require 'parameters'
util = require 'util'

class Voice
	new: (@note, @lfo) =>
		@oscillators = {}
		for i = 1, NUM_OSCILLATORS
			@oscillators[i] = Oscillator!
		@volumeEnvelope = Envelope!
		@filter = Filter!
		@v = 0

	updateOscillators: =>
		for i, oscillator in ipairs @oscillators
			with oscillator
				.wave = parameters.oscillator[i].wave\getValue!
				.frequency = util.noteToFrequency(@note + parameters.oscillator[i].pitch\getValue! + @lfo\getValue! * parameters.oscillator[i].pitchLfoMod\getValue!)
				.shape = parameters.oscillator[i].shape\getValue! + @lfo\getValue! * parameters.oscillator[i].shapeLfoMod\getValue!
				.smooth = parameters.oscillator[i].smooth\getValue! + @lfo\getValue! * parameters.oscillator[i].smoothLfoMod\getValue!
				\update!

	updateEnvelopes: =>
		with @volumeEnvelope
			.a = parameters.volumeEnvelope.a\getValue!
			.d = parameters.volumeEnvelope.d\getValue!
			.s = parameters.volumeEnvelope.s\getValue!
			.r = parameters.volumeEnvelope.r\getValue!
			\update!

	updateFilter: =>
		with @filter
			.cutoff = parameters.filter.cutoff\getValue! + @lfo\getValue! * parameters.filter.cutoffLfoMod\getValue!
			.resonance = parameters.filter.resonance\getValue! + @lfo\getValue! * parameters.filter.resonanceLfoMod\getValue!
			.level = parameters.filter.level\getValue!

	update: =>
		@updateOscillators!
		@updateEnvelopes!
		@updateFilter!
		@v = 0
		for oscillator in *@oscillators
			@v += oscillator\getValue!
		@v *= @volumeEnvelope\getValue!
		@v = @filter\process @v

	release: =>
		@volumeEnvelope\release!

	isFinished: => @volumeEnvelope\isFinished!

	getValue: => @v