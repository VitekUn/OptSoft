require './lib/calculate'

RSpec.describe Calculate do
  describe 'conversion from c' do
    let(:from_0_c_to_c) { Calculate.scale_conversion(0, 'C', 'C') }
    let(:from_0_c_to_k) { Calculate.scale_conversion(0, 'C', 'K') }
    let(:from_0_c_to_f) { Calculate.scale_conversion(0, 'C', 'F') }

    context 'Conversion from C to C' do
      it { expect(from_0_c_to_c).to eq 0 }
    end

    context 'Conversion from C to K' do
      it { expect(from_0_c_to_k).to eq 273.15 }
    end

    context 'Conversion from C to F' do
      it { expect(from_0_c_to_f).to eq 32 }
    end
  end
end

RSpec.describe Calculate do
  describe 'conversion from k' do
    let(:from_273_k_to_c) { Calculate.scale_conversion(273.15, 'K', 'C') }
    let(:from_0_k_to_f) { Calculate.scale_conversion(0, 'K', 'F') }

    context 'Conversion from K to C' do
      it { expect(from_273_k_to_c).to eq 0 }
    end

    context 'Conversion from K to F' do
      it { expect(from_0_k_to_f).to eq(-459.67) }
    end
  end
end

RSpec.describe Calculate do
  describe 'conversion from f' do
    let(:from_0_f_to_c) { Calculate.scale_conversion(0, 'F', 'C') }
    let(:from_neg_459_f_to_k) { Calculate.scale_conversion(-459.67, 'F', 'K') }

    context 'Conversion from F to C' do
      it { expect(from_0_f_to_c).to eq(-17.77777777777778) }
    end

    context 'Conversion from F to K' do
      it { expect(from_neg_459_f_to_k).to eq(0) }
    end
  end
end
