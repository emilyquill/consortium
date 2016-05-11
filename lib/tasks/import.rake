require 'csv'
namespace :import do
# https://gorails.com/episodes/intro-to-importing-from-csv
# http://samuelmullen.com/2015/05/fixing-postgres-sequences-in-rails/

  desc "Import data from CSV"


  task local_authorities: :environment do
    filename = File.join Rails.root, "local_authorities.csv"
    CSV.foreach(filename,  encoding: "ISO-8859-1", headers: true) do |row|
      LocalAuthority.create!(id: row["local_authority_id"],
                      name: row["name"])
    end
  end


  task local_authority_ks2_results: :environment do
    filename = File.join Rails.root, "local_authority_ks2_results.csv"
    CSV.foreach(filename,  encoding: "ISO-8859-1", headers: true) do |row|
      LocalAuthorityResult.create!(
                      local_authority_id: row["local_authority_id"],
                      result_type: row["result_type"],
                      result_year: row["result_year"] ,
                      total_pupils: row["total_pupils"] ,
                      ks2_percent_low_ks1_attainers: row["ks2_percent_low_ks1_attainers"],
                      ks2_percent_medium_ks1_attainers: row["ks2_percent_medium_ks1_attainers"],
                      ks2_percent_high_ks1_attainers: row["ks2_percent_high_ks1_attainers"],
                      ks2_percent_disadvantaged: row["ks2_percent_disadvantaged"],
                      ks2_percent_not_disadvantaged: row["ks2_percent_not_disadvantaged"],
                      ks2_percent_EAL: row["ks2_percent_EAL"],
                      ks2_percent_non_mobile: row["ks2_percent_non_mobile"],
                      ks2_percent_special_needs: row["ks2_percent_special_needs"],
                      ks2_percent_2_levels_progress_maths: row["ks2_percent_2_levels_progress_maths"],
                      ks2_percent_boys_2_levels_progress_maths: row["ks2_percent_boys_2_levels_progress_maths"],
                      ks2_percent_girls_2_levels_progress_maths: row["ks2_percent_girls_2_levels_progress_maths"],
                      ks2_percent_low_PA_2_levels_progress_maths: row["ks2_percent_low_PA_2_levels_progress_maths"],
                      ks2_percent_med_PA_2_levels_progress_maths: row["ks2_percent_med_PA_2_levels_progress_maths"],
                      ks2_percent_high_PA_2_levels_progress_maths: row["ks2_percent_high_PA_2_levels_progress_maths"],
                      ks2_percent_disadvantaged_2_levels_progress_maths: row["ks2_percent_disadvantaged_2_levels_progress_maths"],
                      ks2_percent_not_disadvantaged_2_levels_progress_maths: row["ks2_percent_not_disadvantaged_2_levels_progress_maths"],
                      ks2_percent_GAP_disadvantaged_others_2_levels_progress_maths: row["ks2_percent_GAP_disadvantaged_others_2_levels_progress_maths"],
                      ks2_percent_EAL_2_levels_progress_maths: row["ks2_percent_EAL_2_levels_progress_maths"],
                      ks2_percent_2_levels_progress_maths_3YR_avg: row["ks2_percent_2_levels_progress_maths_3YR_avg"],
                      ks2_percent_disadvantaged_2_levels_progress_maths_3YR_avg: row["ks2_percent_disadvantaged_2_levels_progress_maths_3YR_avg"],
                      ks2_percent_not_disadvantaged_2_levels_progress_maths_3YR_avg: row["ks2_percent_not_disadvantaged_2_levels_progress_maths_3YR_avg"],
                      ks2_percent_2_levels_progress_reading: row["ks2_percent_2_levels_progress_reading"],
                      ks2_percent_boys_2_levels_progress_reading: row["ks2_percent_boys_2_levels_progress_reading"],
                      ks2_percent_girls_2_levels_progress_reading: row["ks2_percent_girls_2_levels_progress_reading"],
                      ks2_percent_low_PA_2_levels_progress_reading: row["ks2_percent_low_PA_2_levels_progress_reading"],
                      ks2_percent_med_PA_2_levels_progress_reading: row["ks2_percent_med_PA_2_levels_progress_reading"],
                      ks2_percent_high_PA_2_levels_progress_reading: row["ks2_percent_high_PA_2_levels_progress_reading"],
                      ks2_percent_disadvantaged_2_levels_progress_reading: row["ks2_percent_disadvantaged_2_levels_progress_reading"],
                      ks2_percent_not_disadvantaged_2_levels_progress_reading: row["ks2_percent_not_disadvantaged_2_levels_progress_reading"],
                      ks2_percent_GAP_disadvantaged_others_2_levels_progress_reading: row["ks2_percent_GAP_disadvantaged_others_2_levels_progress_reading"],
                      ks2_percent_EAL_2_levels_progress_reading: row["ks2_percent_EAL_2_levels_progress_reading"],
                      ks2_percent_2_levels_progress_reading_3YR_avg: row["ks2_percent_2_levels_progress_reading_3YR_avg"],
                      ks2_percent_disadvantaged_2_levels_progress_reading_3YR_avg: row["ks2_percent_disadvantaged_2_levels_progress_reading_3YR_avg"],
                      ks2_percent_not_disadvantaged_2_levels_progress_reading_3YR_avg: row["ks2_percent_not_disadvantaged_2_levels_progress_reading_3YR_avg"],
                      ks2_percent_2_levels_progress_writing: row["ks2_percent_2_levels_progress_writing"],
                      ks2_percent_boys_2_levels_progress_writing: row["ks2_percent_boys_2_levels_progress_writing"],
                      ks2_percent_girls_2_levels_progress_writing: row["ks2_percent_girls_2_levels_progress_writing"],
                      ks2_percent_low_PA_2_levels_progress_writing: row["ks2_percent_low_PA_2_levels_progress_writing"],
                      ks2_percent_med_PA_2_levels_progress_writing: row["ks2_percent_med_PA_2_levels_progress_writing"],
                      ks2_percent_high_PA_2_levels_progress_writing: row["ks2_percent_high_PA_2_levels_progress_writing"],
                      ks2_percent_disadvantaged_2_levels_progress_writing: row["ks2_percent_disadvantaged_2_levels_progress_writing"],
                      ks2_percent_not_disadvantaged_2_levels_progress_writing: row["ks2_percent_not_disadvantaged_2_levels_progress_writing"],
                      ks2_percent_GAP_disadvantaged_others_2_levels_progress_writing: row["ks2_percent_GAP_disadvantaged_others_2_levels_progress_writing"],
                      ks2_percent_EAL_2_levels_progress_writing: row["ks2_percent_EAL_2_levels_progress_writing"],
                      ks2_percent_2_levels_progress_writing_3YR_avg: row["ks2_percent_2_levels_progress_writing_3YR_avg"],
                      ks2_percent_disadvantaged_2_levels_progress_writing_3YR_avg: row["ks2_percent_disadvantaged_2_levels_progress_writing_3YR_avg"],
                      ks2_percent_not_disadvantaged_2_levels_progress_writing_3YR_avg: row["ks2_percent_not_disadvantaged_2_levels_progress_writing_3YR_avg"],
                      ks2_percent_level_4_above_RWM: row["ks2_percent_level_4_above_RWM"],
                      ks2_percent_level_4_above_RWM_2012: row["ks2_percent_level_4_above_RWM_2012"],
                      ks2_percent_level_4_above_RWM_2013: row["ks2_percent_level_4_above_RWM_2013"],
                      ks2_percent_level_4_above_RWM_2014: row["ks2_percent_level_4_above_RWM_2014"],
                      ks2_percent_level_4B_above_RWM: row["ks2_percent_level_4B_above_RWM"],
                      ks2_percent_level_4B_above_RWM_2013: row["ks2_percent_level_4B_above_RWM_2013"],
                      ks2_percent_level_4B_above_RWM_2014: row["ks2_percent_level_4B_above_RWM_2014"],
                      ks2_percent_level_5_above_RWM: row["ks2_percent_level_5_above_RWM"],
                      ks2_percent_level_5_above_RWM_2012: row["ks2_percent_level_5_above_RWM_2012"],
                      ks2_percent_level_5_above_RWM_2013: row["ks2_percent_level_5_above_RWM_2013"],
                      ks2_percent_level_5_above_RWM_2014: row["ks2_percent_level_5_above_RWM_2014"],
                      ks2_percent_level_3_below_RWM: row["ks2_percent_level_3_below_RWM"],
                      ks2_value_added: row["ks2_value_added"],
                      ks2_percent_disadvantaged_2012: row["ks2_percent_disadvantaged_2012"],
                      ks2_percent_disadvantaged_2013: row["ks2_percent_disadvantaged_2013"],
                      ks2_percent_disadvantaged_2014: row["ks2_percent_disadvantaged_2014"],
                      ks2_percent_not_disadvantaged_2012: row["ks2_percent_not_disadvantaged_2012"],
                      ks2_percent_not_disadvantaged_2013: row["ks2_percent_not_disadvantaged_2013"],
                      ks2_percent_not_disadvantaged_2014: row["ks2_percent_not_disadvantaged_2014"],
                      percent_SEN_statement: row["percent_SEN_statement"])
    end
    ActiveRecord::Base.connection.execute("SELECT SETVAL('local_authority_results_id_seq', COALESCE(MAX(id), 1) ) FROM local_authority_results;")
  end


  task schools: :environment do
    filename = File.join Rails.root, "schools.csv"
    CSV.foreach(filename,  encoding: "ISO-8859-1", headers: true) do |row|
      puts "Importing row #{row}"
      School.create!(id: row["school_urn"],
                      local_authority_id: row["local_authority_id"],
                      school_name: row["school_name"],
                      address_street: row["address_street"],
                      address_line_two: row["address_line_two"],
                      address_line_three: row["address_line_three"],
                      address_town: row["address_town"],
                      address_postcode: row["address_postcode"],
                      telephone_number: row["telephone_number"],
                      pending_closure: row["pending_closure"],
                      is_closed: row["is_closed"],
                      school_type: row["school_type"],
                      school_sub_type: row["school_sub_type"],
                      is_primary: row["is_primary"],
                      is_secondary: row["is_secondary"],
                      is_post_16: row["is_post_16"],
                      age_lowest: row["age_lowest"],
                      age_highest: row["age_highest"],
                      gender: row["gender"],
                      sixth_form_gender: row["sixth_form_gender"],
                      religious_denomination: row["religious_denomination"],
                      admission_policy: row["admission_policy"])
    end
    ActiveRecord::Base.connection.execute("SELECT SETVAL('schools_id_seq', COALESCE(MAX(id), 1) ) FROM schools;")
  end


  task school_ks2_results: :environment do
    filename = File.join Rails.root, "school_ks2_results.csv"
    CSV.foreach(filename,  encoding: "ISO-8859-1", headers: true) do |row|
      puts "Importing for URN #{row['school_id']}"
      SchoolResult.create!(school_id: row["school_urn"],
                      local_authority_id: row["local_authority_id"],
                      academy_urn: row["academy_urn"],
                      result_type: row["result_type"],
                      result_year: row["result_year"] ,
                      total_pupils: row["total_pupils"] ,
                      is_special: row["is_special"],
                      new_school: row["new_school"],
                      ks2_percent_low_ks1_attainers: row["ks2_percent_low_ks1_attainers"],
                      ks2_percent_medium_ks1_attainers: row["ks2_percent_medium_ks1_attainers"],
                      ks2_percent_high_ks1_attainers: row["ks2_percent_high_ks1_attainers"],
                      ks2_percent_disadvantaged: row["ks2_percent_disadvantaged"],
                      ks2_percent_not_disadvantaged: row["ks2_percent_not_disadvantaged"],
                      ks2_percent_EAL: row["ks2_percent_EAL"],
                      ks2_percent_non_mobile: row["ks2_percent_non_mobile"],
                      ks2_percent_special_needs: row["ks2_percent_special_needs"],
                      ks2_percent_2_levels_progress_maths: row["ks2_percent_2_levels_progress_maths"],
                      ks2_percent_boys_2_levels_progress_maths: row["ks2_percent_boys_2_levels_progress_maths"],
                      ks2_percent_girls_2_levels_progress_maths: row["ks2_percent_girls_2_levels_progress_maths"],
                      ks2_percent_low_PA_2_levels_progress_maths: row["ks2_percent_low_PA_2_levels_progress_maths"],
                      ks2_percent_med_PA_2_levels_progress_maths: row["ks2_percent_med_PA_2_levels_progress_maths"],
                      ks2_percent_high_PA_2_levels_progress_maths: row["ks2_percent_high_PA_2_levels_progress_maths"],
                      ks2_percent_disadvantaged_2_levels_progress_maths: row["ks2_percent_disadvantaged_2_levels_progress_maths"],
                      ks2_percent_not_disadvantaged_2_levels_progress_maths: row["ks2_percent_not_disadvantaged_2_levels_progress_maths"],
                      ks2_percent_GAP_disadvantaged_others_2_levels_progress_maths: row["ks2_percent_GAP_disadvantaged_others_2_levels_progress_maths"],
                      ks2_percent_EAL_2_levels_progress_maths: row["ks2_percent_EAL_2_levels_progress_maths"],
                      ks2_percent_2_levels_progress_maths_3YR_avg: row["ks2_percent_2_levels_progress_maths_3YR_avg"],
                      ks2_percent_disadvantaged_2_levels_progress_maths_3YR_avg: row["ks2_percent_disadvantaged_2_levels_progress_maths_3YR_avg"],
                      ks2_percent_not_disadvantaged_2_levels_progress_maths_3YR_avg: row["ks2_percent_not_disadvantaged_2_levels_progress_maths_3YR_avg"],
                      ks2_percent_2_levels_progress_reading: row["ks2_percent_2_levels_progress_reading"],
                      ks2_percent_boys_2_levels_progress_reading: row["ks2_percent_boys_2_levels_progress_reading"],
                      ks2_percent_girls_2_levels_progress_reading: row["ks2_percent_girls_2_levels_progress_reading"],
                      ks2_percent_low_PA_2_levels_progress_reading: row["ks2_percent_low_PA_2_levels_progress_reading"],
                      ks2_percent_med_PA_2_levels_progress_reading: row["ks2_percent_med_PA_2_levels_progress_reading"],
                      ks2_percent_high_PA_2_levels_progress_reading: row["ks2_percent_high_PA_2_levels_progress_reading"],
                      ks2_percent_disadvantaged_2_levels_progress_reading: row["ks2_percent_disadvantaged_2_levels_progress_reading"],
                      ks2_percent_not_disadvantaged_2_levels_progress_reading: row["ks2_percent_not_disadvantaged_2_levels_progress_reading"],
                      ks2_percent_GAP_disadvantaged_others_2_levels_progress_reading: row["ks2_percent_GAP_disadvantaged_others_2_levels_progress_reading"],
                      ks2_percent_EAL_2_levels_progress_reading: row["ks2_percent_EAL_2_levels_progress_reading"],
                      ks2_percent_2_levels_progress_reading_3YR_avg: row["ks2_percent_2_levels_progress_reading_3YR_avg"],
                      ks2_percent_disadvantaged_2_levels_progress_reading_3YR_avg: row["ks2_percent_disadvantaged_2_levels_progress_reading_3YR_avg"],
                      ks2_percent_not_disadvantaged_2_levels_progress_reading_3YR_avg: row["ks2_percent_not_disadvantaged_2_levels_progress_reading_3YR_avg"],
                      ks2_percent_2_levels_progress_writing: row["ks2_percent_2_levels_progress_writing"],
                      ks2_percent_boys_2_levels_progress_writing: row["ks2_percent_boys_2_levels_progress_writing"],
                      ks2_percent_girls_2_levels_progress_writing: row["ks2_percent_girls_2_levels_progress_writing"],
                      ks2_percent_low_PA_2_levels_progress_writing: row["ks2_percent_low_PA_2_levels_progress_writing"],
                      ks2_percent_med_PA_2_levels_progress_writing: row["ks2_percent_med_PA_2_levels_progress_writing"],
                      ks2_percent_high_PA_2_levels_progress_writing: row["ks2_percent_high_PA_2_levels_progress_writing"],
                      ks2_percent_disadvantaged_2_levels_progress_writing: row["ks2_percent_disadvantaged_2_levels_progress_writing"],
                      ks2_percent_not_disadvantaged_2_levels_progress_writing: row["ks2_percent_not_disadvantaged_2_levels_progress_writing"],
                      ks2_percent_GAP_disadvantaged_others_2_levels_progress_writing: row["ks2_percent_GAP_disadvantaged_others_2_levels_progress_writing"],
                      ks2_percent_EAL_2_levels_progress_writing: row["ks2_percent_EAL_2_levels_progress_writing"],
                      ks2_percent_2_levels_progress_writing_3YR_avg: row["ks2_percent_2_levels_progress_writing_3YR_avg"],
                      ks2_percent_disadvantaged_2_levels_progress_writing_3YR_avg: row["ks2_percent_disadvantaged_2_levels_progress_writing_3YR_avg"],
                      ks2_percent_not_disadvantaged_2_levels_progress_writing_3YR_avg: row["ks2_percent_not_disadvantaged_2_levels_progress_writing_3YR_avg"],
                      ks2_percent_level_4_above_RWM: row["ks2_percent_level_4_above_RWM"],
                      ks2_percent_level_4_above_RWM_2012: row["ks2_percent_level_4_above_RWM_2012"],
                      ks2_percent_level_4_above_RWM_2013: row["ks2_percent_level_4_above_RWM_2013"],
                      ks2_percent_level_4_above_RWM_2014: row["ks2_percent_level_4_above_RWM_2014"],
                      ks2_percent_level_4B_above_RWM: row["ks2_percent_level_4B_above_RWM"],
                      ks2_percent_level_4B_above_RWM_2013: row["ks2_percent_level_4B_above_RWM_2013"],
                      ks2_percent_level_4B_above_RWM_2014: row["ks2_percent_level_4B_above_RWM_2014"],
                      ks2_percent_level_5_above_RWM: row["ks2_percent_level_5_above_RWM"],
                      ks2_percent_level_5_above_RWM_2012: row["ks2_percent_level_5_above_RWM_2012"],
                      ks2_percent_level_5_above_RWM_2013: row["ks2_percent_level_5_above_RWM_2013"],
                      ks2_percent_level_5_above_RWM_2014: row["ks2_percent_level_5_above_RWM_2014"],
                      ks2_percent_level_3_below_RWM: row["ks2_percent_level_3_below_RWM"],
                      ks2_value_added: row["ks2_value_added"],
                      ks2_percent_disadvantaged_2012: row["ks2_percent_disadvantaged_2012"],
                      ks2_percent_disadvantaged_2013: row["ks2_percent_disadvantaged_2013"],
                      ks2_percent_disadvantaged_2014: row["ks2_percent_disadvantaged_2014"],
                      ks2_percent_not_disadvantaged_2012: row["ks2_percent_not_disadvantaged_2012"],
                      ks2_percent_not_disadvantaged_2013: row["ks2_percent_not_disadvantaged_2013"],
                      ks2_percent_not_disadvantaged_2014: row["ks2_percent_not_disadvantaged_2014"],
                      percent_SEN_statement: row["percent_SEN_statement"])
    end
    ActiveRecord::Base.connection.execute("SELECT SETVAL('school_results_id_seq', COALESCE(MAX(id), 1) ) FROM school_results;")
  end


  desc "Populate Database with all Data"
  task :all_records => [:local_authorities, :local_authority_ks2_results, :schools, :school_ks2_results] do
  end

end
