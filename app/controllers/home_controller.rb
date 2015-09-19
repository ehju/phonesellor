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
    else
    # 남은수가 120보다 적으면 남은 수만큼을 nonblank로 뽑아낸다
      @nonblank =(0..119).to_a.sample(@selected.uniq.count)
      @random = @selected.uniq.sample(@selected.uniq.count)
    end
  end
  def last
    
    $data=params[:num]
    
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
      if (x.company == $first.to_i)&&(x.payment == $second.to_i)&&(x.service == $third.to_i)&&((x.age == $fourth.to_i)||(x.age == 1))
        @selected << x
      end
    end
  end
  
  
  def result
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
    else
    # 남은수가 120보다 적으면 남은 수만큼을 nonblank로 뽑아낸다
      @nonblank =(0..119).to_a.sample(@selected.uniq.count)
      @random = @selected.uniq.sample(@selected.uniq.count)
    end
  end
end
