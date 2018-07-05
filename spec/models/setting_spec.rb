require 'rails_helper'

RSpec.describe Setting, type: :model do
  describe '.current' do
    before { create :setting }
    subject { described_class.current }
    it { is_expected.to eq described_class.first }
  end

  describe '.create_dummy' do
    subject { described_class.create_dummy }

    context do
      it { expect { subject }.to change { described_class.count }.from(0).to(1) }
    end

    context do
      before { subject } # call it once
      it { expect { subject }.not_to change { described_class.count } }
    end
  end
end
