RSpec.describe 'nested hooks'do 
    before(:context)do 
        puts 'outer before context'
    end 
    before (:example) do 
        puts 'outer before example'
    end

    it 'does basic math'do 
        puts expect(1+1).to eq(2)
    end
    context 'with condition a' do 
        before(:context) do
            puts 'inner before context'
        end
    
    before(:example) do
        puts 'inner before example'
    end
    it 'does some more basic math' do 
        puts expect(5-3).to eq(2)
    end
end
end

