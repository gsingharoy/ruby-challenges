# frozen_string_literal: true

require 'spec_helper'
require './media_parser'

describe MediaParser do
  describe 'MediaParser#parse' do
    let(:parser) { MediaParser.new("spec/resources/#{filename}") }

    context 'When the input file is input2' do
      let(:filename) { 'input1.txt' }

      it 'should return the correct result' do
        expect(parser.parse).to eq(video: 1200,
                                   image: 100,
                                   audio: 0,
                                   other: 300)
      end
    end

    context 'When the input file is input2' do
      let(:filename) { 'input2.txt' }

      it 'should return the correct result' do
        expect(parser.parse).to eq(video: 895_911,
                                   image: 627_759,
                                   audio: 0,
                                   other: 3_450_672)
      end
    end

    context 'When the input file is input3' do
      let(:filename) { 'input3.txt' }

      it 'should return the correct result' do
        expect(parser.parse).to eq(video: 7_227_982,
                                   image: 13_084_545,
                                   audio: 7_115_065,
                                   other: 10_962_920)
      end
    end

    context 'When the input file is input4' do
      let(:filename) { 'input4.txt' }

      it 'should return the correct result' do
        expect(parser.parse).to eq(video: 124_329_765,
                                   image: 131_696_447,
                                   audio: 132_769_215,
                                   other: 149_012_406)
      end
    end

    context 'When the input file is input5' do
      let(:filename) { 'input5.txt' }

      it 'should return the correct result' do
        expect(parser.parse).to eq(video: 448_988_587,
                                   image: 380_012_256,
                                   audio: 435_406_463,
                                   other: 429_853_082)
      end
    end
  end
end
