class SchoolsController < ApplicationController

  def search
    if params[:q].present?
      @schools = School.near(params[:q], params[:m])
      @search = params[:q]
      @distance = params[:m].to_i
    end

    if params[:phase] == "Primary"
      @filtered = @schools.where(is_primary: true)

    elsif params[:phase] == "Secondary"
      @filtered = @schools.where(is_secondary: true)
    end

  end

  def show
    @school =  School.includes(:school_results, :local_authority).find params[:id]
    if @school.is_primary == true
      @narrative = primary_narrative(@school.school_name, @school.local_authority.name, @school.school_sub_type, @school.age_lowest , @school.age_highest )
    elsif @school.is_secondary == true
      @narrative = secondary_narrative(@school.school_name, @school.local_authority.name, @school.school_sub_type, @school.age_lowest , @school.age_highest )
    end

  end

private
  def school_params
    params.require(:school).permit(:id, :q, :m, :phase)
  end

  def primary_narrative(name, la, sub_type, min_age, max_age)
    if sub_type.include? "Academy"
      sub_type = "Academy"
      narrative = "#{name} is an #{sub_type} in #{la} teaching pupils from #{min_age} to #{max_age} years of age."
    else
      narrative = "#{name} is a #{sub_type} in #{la} teaching pupils from #{min_age} to #{max_age} years of age."
    end
  end

  def secondary_narrative(name, la, sub_type, min_age, max_age)
    if sub_type.include? "Academy"
      sub_type = "Academy"
      narrative = "#{name} is an #{sub_type} in #{la} for students aged #{min_age} - #{max_age}."

    elsif sub_type.include? "Independent"
        sub_type = "Independent school"
        narrative = "#{name} is an #{sub_type} in #{la} for students aged #{min_age} - #{max_age}."
    else
      narrative = "#{name} is a #{sub_type} in #{la} for students aged #{min_age} - #{max_age}."
    end

  end

end
