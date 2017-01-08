require 'spec_helper'

describe 'Yt::URL#resource', :server do
  subject(:url) { Yt::URL.new text }

  context 'given an existing YouTube channel URL' do
    let(:text) { "youtube.com/channel/#{$existing_channel_id}" }

    it {expect(url.resource).to be_a Yt::Channel }
    it {expect(url.resource.title).to be }
  end

  context 'given an existing YouTube video URL' do
    let(:text) { "youtube.com/watch?v=#{$existing_video_id}" }

    it {expect(url.resource).to be_a Yt::Video }
    it {expect(url.resource.title).to be }
  end

  context 'given an unknown YouTube video URL' do
    let(:text) { "youtu.be/#{$unknown_video_id}" }

    it {expect(url.resource).to be_a Yt::Video }
    it {expect{url.resource.title}.to raise_error Yt::Errors::NoItems }
  end

  context 'given an existing YouTube playlist URL' do
    let(:text) { "youtube.com/playlist?list=#{$existing_playlist_id}" }

    it {expect(url.resource).to be_a Yt::Playlist }
    it {expect(url.resource.title).to be }
  end

  context 'given an unknown YouTube playlist URL' do
    let(:text) { "https://www.youtube.com/playlist?list=#{$unknown_playlist_id}" }

    it {expect(url.resource).to be_a Yt::Playlist }
    it {expect{url.resource.title}.to raise_error Yt::Errors::NoItems }
  end

  context 'given an unknown text' do
    let(:text) { $unknown_text }

    it {expect{url.resource}.to raise_error Yt::Errors::NoItems }
  end

end

