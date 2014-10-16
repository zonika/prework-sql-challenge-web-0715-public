describe "SQL Challenge" do
  it 'creates a table called cats' do 
    expect(is_correct('__', 0)).to eq(true)
  end

  it 'returns all of the data in the cats table' do
    expect(is_correct('__', 1)).to eq(true)
  end 

  it 'returns the count of records in the cats table' do
    expect(is_correct('__', 2)).to eq(true)
  end 

  it 'returns the name of the cat with the id of 2' do
    expect(is_correct('__', 3)).to eq(true)
  end 

  it "updates Maru's age to 7" do 
    expect(is_correct('__', 4)).to eq(true)
  end

  it 'selects all of the data from the cats table and orders by age' do 
    expect(is_correct('__', 5)).to eq(true)
  end

  it 'deletes Lil Bub from the cats table, searching by id' do 
    expect(is_correct('__', 6)).to eq(true)
  end

  it 'deletes the cats table' do 
    expect(is_correct('__', 7)).to eq(true)
  end
end