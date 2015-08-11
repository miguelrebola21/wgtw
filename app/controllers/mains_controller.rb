class MainsController < ApplicationController
  before_action :set_main, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token 
  # GET /mains
  # GET /mains.json
  def index
    @mains = Main.all
  end



  def gauntlet 

    @g3na=params['g3na']
    @g4na=params['g4na']
    @fna=params['fna']
    @tna=params['tna']
    @g3eu=params['g3eu']
    @g4eu=params['g4eu']
    @feu=params['feu']
    @teu=params['teu']
    @fourthna=params['fourthna']
    @fourtheu=params['fourtheu']

    @fnatic=90;
    @uol=70;
    @h2k=50;
    @gmb=10;
    @cw=10;
    @gia=20;
    @roccat=20;
    @origen=0;

    @tsm=90;
    @c9=70;
    @tl=50;
    @tip=30;
    @clg=10;
    @gav=30;
    @dig=20;

    if (@g3na == @fna)
      @runa=@g4na;
    else
      @runa=@g3na;
    end

    if (@g3eu == @feu) 
      @rueu=@g4eu;
    else
      @rueu=@g3eu;
    end

    case @fna
    when 'Team Solomid'
      @tsm=@tsm+10000;
    when 'CLG'
      @clg=@clg+10000;  
    when 'Team Liquid'
      @tl=@tl+10000;
    when 'Team Impulse'
      @tip=@tip+10000;
    end


    case @feu
   when 'Fnatic'
      @fnatic=@fnatic+10000;
    when 'H2K'
      @h2k=@h2k+10000;  
    when 'UOL'
      @uol=@uol+10000;
    when 'ORIGEN'
      @origen=@origen+10000;
    end


    case @runa
    when 'Team Solomid'
      @tsm=@tsm+90;
    when 'CLG'
      @clg=@clg+90;  
    when 'Team Liquid'
      @tl=@tl+90;
    when 'Team Impulse'
      @tip=@tip+90;
    end

    case @rueu
    when 'Fnatic'
      @fnatic=@fnatic+90;
    when 'H2K'
      @h2k=@h2k+90;  
    when 'UOL'
      @uol=@uol+90;
    when 'ORIGEN'
      @origen=@origen+90;
    end

    case @tna
    when 'Team Solomid'
      @tsm=@tsm+70;
    when 'CLG'
      @clg=@clg+70;  
    when 'Team Liquid'
      @tl=@tl+70;
    when 'Team Impulse'
      @tip=@tip+70;
    end

    case @teu
    when 'Fnatic'
      @fnatic=@fnatic+70;
    when 'H2K'
      @h2k=@h2k+70;  
    when 'UOL'
      @uol=@uol+70;
    when 'ORIGEN'
      @origen=@origen+70;
    end

    case @fourthna
     when 'Team Solomid'
      @tsm=@tsm+40;
    when 'CLG'
      @clg=@clg+40;  
    when 'Team Liquid'
      @tl=@tl+40;
    when 'Team Impulse'
      @tip=@tip+40;
    end

    case @fourtheu
      when 'Fnatic'
      @fnatic=@fnatic+40;
    when 'H2K'
      @h2k=@h2k+40;  
    when 'UOL'
      @uol=@uol+40;
    when 'ORIGEN'
      @origen=@origen+40;
    end



    @TeamsEU=Array.new
    @TeamsNA=Array.new
    @PointsEU=Array.new
    @PointsNA=Array.new

    @TeamsEU[0]=['Fnatic',@fnatic]
    @TeamsEU[1]=['UOL',@uol]
    @TeamsEU[2]=['H2K',@h2k]
    @TeamsEU[3]=['ORIGEN',@origen]
    @TeamsEU[4]=['GIANTS',@gia]
    @TeamsEU[5]=['ROCCAT',@roccat]



    @TeamsNA[0]=['Team Solomid',@tsm]
    @TeamsNA[1]=['C9',@c9]
    @TeamsNA[2]=['CLG',@clg]
    @TeamsNA[3]=['Team Liquid',@tl]
    @TeamsNA[4]=['Team Impulse',@tip]
    @TeamsNA[5]=['Gravity',@gav]
    @TeamsNA[6]=['Dignitas',@dig]


    @StandingsEU = @TeamsEU.sort_by(&:last).reverse
    @StandingsNA = @TeamsNA.sort_by(&:last).reverse
     





  end

  def finalseeds

  end  


  # GET /mains/1/edit
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main
      @main = Main.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_params
      params[:main].permit!
    end
end
