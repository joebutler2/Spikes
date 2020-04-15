
describe "line sorter" do
  it "takes a string from STDIN and sorts the lines by the first alphabetical character" do

    input = <<-INPUT
      background-color: #FAFAFA;
      float: right;
      width: 85%;
      height: 41px;
      border-bottom: 1px solid $light-grey;
    INPUT

    expected_output = <<-OUTPUT
      background-color: #FAFAFA;
      border-bottom: 1px solid $light-grey;
      float: right;
      height: 41px;
      width: 85%;
    OUTPUT

    output = `echo '#{input}' | ruby ./line_sorter.rb`
    expect(output).to eql(expected_output)
  end

end
