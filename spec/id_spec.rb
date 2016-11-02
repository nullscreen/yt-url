require 'spec_helper'

describe 'Yt::URL#id' do
  subject(:url) { Yt::URL.new text }

  context 'given a YouTube channel URL in the ID form' do
    let(:text) { "https://www.youtube.com/channel/#{id}" }

    describe 'works with existing channels' do
      let(:id) { 'UC4lU5YG9QDgs0X2jdnt7cdQ' }
      it {expect(url.id).to eq id }
    end

    describe 'works with unknown channels' do
      let(:id) { 'UC-not-an-actual-channel' }
      it {expect(url.id).to eq id }
    end
  end

  context 'given a YouTube channel URL in the name form' do
    let(:text) { "http://www.youtube.com/#{name}" }

    describe 'works when the name matches the custom URL' do
      let(:name) { 'nbcsports' }
      it {expect(url.id).to eq 'UCqZQlzSHbVJrwrn5XvzrzcA' }
    end

    describe 'works when the name matches the username' do
      let(:name) { '2012NBCOlympics' }
      it {expect(url.id).to eq 'UCqZQlzSHbVJrwrn5XvzrzcA' }
    end

    describe 'fails with unknown channels' do
      let(:name) { 'not-an-actual-channel' }
      it {expect{url.id}.to raise_error Yt::Errors::NoItems }
    end
  end

  context 'given a YouTube channel URL in the custom form' do
    let(:text) { "https://youtube.com/c/#{name}" }

    describe 'works with existing channels' do
      let(:name) { 'ogeeku' }
      it {expect(url.id).to eq 'UC4nG_NxJniKoB-n6TLT2yaw' }
    end

    describe 'fails with unknown channels' do
      let(:name) { 'not-an-actual-channel' }
      it {expect{url.id}.to raise_error Yt::Errors::NoItems }
    end
  end

  context 'given a YouTube channel URL in the username form' do
    let(:text) { "youtube.com/user/#{name}" }

    describe 'works with existing channels' do
      let(:name) { 'ogeeku' }
      it {expect(url.id).to eq 'UC4lU5YG9QDgs0X2jdnt7cdQ' }
    end

    describe 'fails with unknown channels' do
      let(:name) { 'not-an-actual-channel' }
      it {expect{url.id}.to raise_error Yt::Errors::NoItems }
    end
  end

  context 'given a YouTube video URL' do
    let(:text) { "https://www.youtube.com/watch?v=#{id}" }

    describe 'works with existing videos' do
      let(:id) { 'gknzFj_0vvY' }
      it {expect(url.id).to eq id }
    end

    describe 'works with unknown videos' do
      let(:id) { 'abc123abc12' }
      it {expect(url.id).to eq id }
    end
  end

  context 'given a YouTube playlist URL' do
    let(:text) { "https://www.youtube.com/playlist?list=#{id}" }

    describe 'works with existing playlists' do
      let(:id) { 'LLxO1tY8h1AhOz0T4ENwmpow' }
      it {expect(url.id).to eq id }
    end

    describe 'works with unknown playlists' do
      let(:id) { 'PL12--not-a-playlist' }
      it {expect(url.id).to eq id }
    end
  end

end
