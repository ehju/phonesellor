class HomeController < ApplicationController
  def main
  end

  def first
    
    @all=Phone.all
    @random = @all.sample(120)
  end
  def second
    @all=Phone.all
    #1.받은거를 기록하고 저장한다.
    $first=params[:num]
    #받은 정보대로 해당되는 아이들을 분류한다.
    @selected=[]
    @all.each do |x|
      if (x.company == $first.to_i )
        @selected << x.name
      end
    end
    #남은수가 더 크다면
    if (@selected.count >= 120)
      #원래대로 120개를 뽑아낸다
      @nonblank =(0..119).to_a.sample(120)
      @random = @selected.uniq.sample(120)
    else
    # 남은수가 120보다 적으면 남은 수만큼을 nonblank로 뽑아낸다
      @nonblank =(0..119).to_a.sample(@selected.uniq.count)
      @random = @selected.uniq.sample(@selected.uniq.count)
    end
      
  end
  def third
    @all=Phone.all
    #1.받은거를 기록하고 저장한다.
    $second=params[:num]
    #받은 정보대로 해당되는 아이들을 분류한다.
    @selected=[]
    @all.each do |x|
      if (x.company == $first.to_i)&&(x.payment == $second.to_i )
        @selected << x.name
      end
    end
    #남은수가 더 크다면
    if (@selected.count >= 120)
      #원래대로 120개를 뽑아낸다
      @nonblank =(0..119).to_a.sample(120)
      @random = @selected.uniq.sample(120)
    else
    # 남은수가 120보다 적으면 남은 수만큼을 nonblank로 뽑아낸다
      @nonblank =(0..119).to_a.sample(@selected.uniq.count)
      @random = @selected.uniq.sample(@selected.uniq.count)
    end
    
  end
  def fourth
    @all=Phone.all
    #1.받은거를 기록하고 저장한다.
    $third=params[:num]
    #받은 정보대로 해당되는 아이들을 분류한다.
    @selected=[]
    @all.each do |x|
      if (x.company == $first.to_i)&&(x.payment == $second.to_i)&&(x.service == $third.to_i)
        @selected << x.name
      end
    end
    #남은수가 더 크다면
    if (@selected.count >= 120)
      #원래대로 120개를 뽑아낸다
      @nonblank =(0..119).to_a.sample(120)
      @random = @selected.uniq.sample(120)
    else
    # 남은수가 120보다 적으면 남은 수만큼을 nonblank로 뽑아낸다
      @nonblank =(0..119).to_a.sample(@selected.uniq.count)
      @random = @selected.uniq.sample(@selected.uniq.count)
    end
    
  end
  def fifth
    
    if ($third == "3")
      redirect_to "/home/last"
    end
    $fourth=params[:num]
    
    @all=Phone.all
    @selected=[]
    @all.each do |x|
      if (x.company == $first.to_i)&&(x.payment == $second.to_i)&&(x.service == $third.to_i)&&((x.age == $fourth.to_i)||(x.age == 1))
        @selected << x.name
      end
    end
  #  남은수가 더 크다면
    if (@selected.count >= 120)
      #원래대로 120개를 뽑아낸다
      @nonblank =(0..119).to_a.sample(120)
      @random = @selected.uniq.sample(120)
    els
    else
    # 남은수가 120보다 적으면 남은 수만큼을 nonblank로 뽑아낸다
      @nonblank =(0..119).to_a.sample(@selected.uniq.count)
      @random = @selected.uniq.sample(@selected.uniq.count)
    end
  end
  
  def last
    
    $data=params[:num]
    
    if ($data.to_i == 1)
      $voice1 = 0
      $voice2 = 300
      $data1 = 7
      $data2 = 100
    elsif ($data.to_i == 2)
      $voice1 = 300
      $voice2 = 800
      $data1 = 7
      $data2 = 100
    elsif ($data.to_i == 3)
      $voice1 = 800
      $voice2 = 3000
      $data1 = 7
      $data2 = 100
    elsif ($data.to_i == 4)
      $voice1 = 0
      $voice2 = 300
      $data1 = 3
      $data2 = 7
    elsif ($data.to_i == 5)
      $voice1 = 300
      $voice2 = 800
      $data1 = 3
      $data2 = 7
    elsif ($data.to_i == 6)
      $voice1 = 800
      $voice2 = 3000
      $data1 = 3
      $data2 = 7
    elsif ($data.to_i == 7)
      $voice1 = 0
      $voice2 = 300
      $data1 = 0
      $data2 = 3
    elsif ($data.to_i == 8)
      $voice1 = 300
      $voice2 = 800
      $data1 = 0
      $data2 = 3
    elsif ($data.to_i == 9)
      $voice1 = 800
      $voice2 = 3000
      $data1 = 0
      $data2 = 3
    end
    
    @all=Phone.all
    @selected=[]
    @all.each do |x|
      if (x.company == $first.to_i)&&(x.payment == $second.to_i)&&(x.service == $third.to_i)&&((x.age == $fourth.to_i)||(x.age == 1))&&(x.voice >= $voice1.to_i)&&(x.voice <= $voice2.to_i)&&(x.webdata >= $data1.to_i)&&(x.webdata <= $data2.to_i)
        @selected << x.name
      end
    end
  #  남은수가 더 크다면
    if (@selected.count >= 120)
      #원래대로 120개를 뽑아낸다
      @nonblank =(0..119).to_a.sample(120)
      @random = @selected.uniq.sample(120)
    else
    # 남은수가 120보다 적으면 남은 수만큼을 nonblank로 뽑아낸다
      @nonblank =(0..119).to_a.sample(@selected.uniq.count)
      @random = @selected.uniq.sample(@selected.uniq.count)
    end
  end


  def graph
    $val=params[:range]
    
    @all=Phone.all
    @selected=[]
    @all.each do |x|
      if (x.company == $first.to_i)&&(x.payment == $second.to_i)&&(x.service == $third.to_i)&&((x.age == $fourth.to_i)||(x.age == 1))&&(x.voice >= $voice1.to_i)&&(x.voice <= $voice2.to_i)&&(x.webdata >= $data1.to_i)&&(x.webdata <= $data2.to_i)&&(x.price24 <= $val.to_i)
        @selected << x
      end
    end
  end
  
    
  def result
    @all=Phone.all
    @mydata = Result.find(params[:id])
    @selected=[]
    @all.each do |x|
      if (x.company == @mydata.first.to_i)&&(x.payment == @mydata.second.to_i)&&(x.service == @mydata.third.to_i)&&((x.age == @mydata.fourth.to_i)||(x.age == 1))&&(x.voice >= @mydata.voice1.to_i)&&(x.voice <= @mydata.voice2.to_i)&&(x.webdata >= @mydata.data1.to_i)&&(x.webdata <= @mydata.data2.to_i)&&(x.price24 <= @mydata.val.to_i)
        @selected << x
      end
    end
  #  남은수가 더 크다면
    if (@selected.count >= 120)
      #원래대로 120개를 뽑아낸다
      @nonblank =(0..119).to_a.sample(120)
      @random = @selected.uniq.sample(120)
    else
    # 남은수가 120보다 적으면 남은 수만큼을 nonblank로 뽑아낸다
      @nonblank =(0..119).to_a.sample(@selected.uniq.count)
      @random = @selected.uniq.sample(@selected.uniq.count)
    end
  end
  
  def save
    @one_post=Result.new
    @one_post.first = $first
    @one_post.second = $second
    @one_post.third = $third
    @one_post.fourth= $fourth
    @one_post.voice1= $voice1
    @one_post.voice2= $voice2
    @one_post.data1= $data1
    @one_post.data2= $data2
    @one_post.save
    redirect_to :controller => 'home', :action => 'result', :id => @one_post.id
  end
end
