# frozen_string_literal: true

RSpec.describe Eglob do
  it "returns correct path" do
    expect(Eglob.sub %q'\\10.4.3.15\yey\\').to eq("//10.4.3.15/yey/")
    expect(Eglob.sub %q'\\10.4.3.15\yey/**/*').to eq("//10.4.3.15/yey/**/*")
    expect(Eglob.sub %q'C:\10.4.3.15\yey').to eq("C:/10.4.3.15/yey")
  end

  it "returns something not empty" do
    ans = Eglob.glob(%q'..\**/*')
    p ans
    expect(ans.length).to be > 0
  end
end
