require_relative 'spec_helper'
require_relative '../work2'

describe 'Work2' do
  it 'Test Reduce' do
    reduce([1,2,3],4){|ak,e| ak+e}.should eq(10)
    reduce([1,2,3],4).should eq(4)
    reduce([],1){|ak,e| ak+e}.should eq(1)
  end  
  it 'Test map' do
    map([2,4,6]){|e| e+1}.should eq([3,5,7])
    map([]){|e| e+1}.should_not eq(1)
    map(['a','s','d']){|e| e+'1'}
  end
  it 'Test select' do
    select([5,6,7]){|e| e>5}.should eq([6,7])
    select([]){|e| e>1}
    select([1,2,3]){}
  end
  it 'Test detect' do
    detect([2,3,4,5,6]){|e| e>3}.should_not eq(6)
    detect([2,3,4,5,6]){|e| e>3}.should eq(4)
  end
  it 'Test count' do
    count([]){|e| e>2}.should eq(0)
    count([1,'3',2]){|e| e==3}.should_not eq(1)
    count([1,2,14,4,5]){|e| e>4}.should eq(2)
  end  
  it 'Test all?' do
    all?([1,2,3]){|e| e>0}.should eq(true)
    all?([]){|e| e==0}.should eq(false)
  end
  it 'Test any?' do
    any?([1,2,3]){|e| e>0}.should eq(true)
    any?([]){|e| e==0}.should eq(false)
  end
  it 'Test flatten' do
    flatten([]).should eq(nil)
    flatten([1,2,[2,['a','c'],'b'],3]).should eq([1,2,2,'a','c','b',3])
  end
  it 'Test reverse' do
    reverse([]).should eq(nil)
    reverse(['a','b','c','d']).should eq(['d','c','b','a'])
  end
  it 'Test sortarr' do
    sortarr([]).should eq(nil)
    sortarr([2,6,7,8,1,3]).should eq([8, 6, 2, 7, 3, 1])
  end
  it 'Test localmax' do
    localmax([])
    localmax([1,1,1,1,1,1]).should eq([1,1,1,1])
  end
  it 'Test merge' do
    merge({},{}).should eq({})
  end
    
end
