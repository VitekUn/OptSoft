require './lib/calculate'

RSpec.describe Calculate do
  describe 'Computation by file' do
    let(:search_max) { Calculate.search_max(['A,1', 'B,2', 'C,3', 'D,-1', 'E,5']) }
    let(:search_min) { Calculate.search_min(['A,1', 'B,2', 'C,3', 'D,-1', 'E,5']) }
    let(:calc_mean) { Calculate.calculate_average(['A,1', 'B,2', 'C,3', 'D,-1', 'E,5']) }
    let(:calc_csv) { Calculate.calculate_correct_sample_variance(['A,1', 'B,2', 'C,3', 'D,-1', 'E,5']) }

    context 'Search maximum' do
      it { expect(search_max).to eq 'E,5' }
    end

    context 'Search minimum' do
      it { expect(search_min).to eq 'D,-1' }
    end

    context 'Search mean' do
      it { expect(calc_mean).to eq 2.0 }
    end

    context 'Search maximum' do
      it { expect(calc_csv).to eq 5.0 }
    end
  end
end
