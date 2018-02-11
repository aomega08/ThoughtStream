require 'rails_helper'

RSpec.describe PostRevision, type: :model do
  describe 'md_content=' do
    it 'sets raw content with the html rendered from the markdown' do
      subject.md_content = 'hello **world**'
      expect(subject.raw_content).to eq "<p>hello <strong>world</strong></p>\n"
    end
  end
end
