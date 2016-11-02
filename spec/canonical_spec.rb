require 'spec_helper'

describe 'Yt::URL#canonical' do
  subject(:url) { Yt::URL.new text }

  context 'given an existing YouTube channel' do
    let(:id) { 'UCxO1tY8h1AhOz0T4ENwmpow' }
    let(:text) { "youtube.com/channel/#{id}" }
    it {expect(url.canonical).to eq "https://www.youtube.com/channel/#{id}"}
  end

  context 'given an existing YouTube video' do
    let(:id) { 'gknzFj_0vvY' }
    let(:text) { "youtu.be/#{id}" }
    it {expect(url.canonical).to eq "https://www.youtube.com/watch?v=#{id}"}
  end

  context 'given an existing YouTube playlist' do
    let(:id) { 'LLxO1tY8h1AhOz0T4ENwmpow' }
    let(:text) { "youtube.com/playlist?list=#{id}" }
    it {expect(url.canonical).to eq "https://www.youtube.com/playlist?list=#{id}"}
  end
end
