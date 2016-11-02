require 'spec_helper'

describe 'Yt::URL#kind' do
  subject(:url) { Yt::URL.new text }

  context 'given an existing YouTube channel' do
    let(:text) { 'youtube.com/channel/UCxO1tY8h1AhOz0T4ENwmpow' }
    it {expect(url.kind).to eq :channel }
  end

  context 'given an existing YouTube video' do
    let(:text) { 'youtube.com/watch?v=gknzFj_0vvY' }
    it {expect(url.kind).to eq :video }
  end

  context 'given an existing YouTube playlist' do
    let(:text) { 'youtube.com/playlist?list=LLxO1tY8h1AhOz0T4ENwmpow' }
    it {expect(url.kind).to eq :playlist }
  end

  context 'given an unknown YouTube channel URL' do
    let(:text) { 'youtube.com/channel/UC-too-short-to-be-an-id' }
    it {expect(url.kind).to eq :channel }
  end

  context 'given an unknown YouTube video URL' do
    let(:text) { 'youtu.be/not-an-id' }
    it {expect(url.kind).to eq :unknown }
  end

  context 'given an unknown text' do
    let(:text) { 'not-really-anything---' }
    it {expect(url.kind).to eq :unknown }
  end
end
