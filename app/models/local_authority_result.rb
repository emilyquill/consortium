# == Schema Information
#
# Table name: local_authority_results
#
#  id                                                              :integer          not null, primary key
#  local_authority_id                                              :integer
#  result_type                                                     :string
#  result_year                                                     :integer
#  total_pupils                                                    :integer
#  ks2_percent_low_ks1_attainers                                   :float
#  ks2_percent_medium_ks1_attainers                                :float
#  ks2_percent_high_ks1_attainers                                  :float
#  ks2_percent_disadvantaged                                       :float
#  ks2_percent_not_disadvantaged                                   :float
#  ks2_percent_EAL                                                 :float
#  ks2_percent_non_mobile                                          :float
#  ks2_percent_special_needs                                       :float
#  ks2_percent_2_levels_progress_maths                             :float
#  ks2_percent_boys_2_levels_progress_maths                        :float
#  ks2_percent_girls_2_levels_progress_maths                       :float
#  ks2_percent_low_PA_2_levels_progress_maths                      :float
#  ks2_percent_med_PA_2_levels_progress_maths                      :float
#  ks2_percent_high_PA_2_levels_progress_maths                     :float
#  ks2_percent_disadvantaged_2_levels_progress_maths               :float
#  ks2_percent_not_disadvantaged_2_levels_progress_maths           :float
#  ks2_percent_GAP_disadvantaged_others_2_levels_progress_maths    :float
#  ks2_percent_EAL_2_levels_progress_maths                         :float
#  ks2_percent_2_levels_progress_maths_3YR_avg                     :float
#  ks2_percent_disadvantaged_2_levels_progress_maths_3YR_avg       :float
#  ks2_percent_not_disadvantaged_2_levels_progress_maths_3YR_avg   :float
#  ks2_percent_2_levels_progress_reading                           :float
#  ks2_percent_boys_2_levels_progress_reading                      :float
#  ks2_percent_girls_2_levels_progress_reading                     :float
#  ks2_percent_low_PA_2_levels_progress_reading                    :float
#  ks2_percent_med_PA_2_levels_progress_reading                    :float
#  ks2_percent_high_PA_2_levels_progress_reading                   :float
#  ks2_percent_disadvantaged_2_levels_progress_reading             :float
#  ks2_percent_not_disadvantaged_2_levels_progress_reading         :float
#  ks2_percent_GAP_disadvantaged_others_2_levels_progress_reading  :float
#  ks2_percent_EAL_2_levels_progress_reading                       :float
#  ks2_percent_2_levels_progress_reading_3YR_avg                   :float
#  ks2_percent_disadvantaged_2_levels_progress_reading_3YR_avg     :float
#  ks2_percent_not_disadvantaged_2_levels_progress_reading_3YR_avg :float
#  ks2_percent_2_levels_progress_writing                           :float
#  ks2_percent_boys_2_levels_progress_writing                      :float
#  ks2_percent_girls_2_levels_progress_writing                     :float
#  ks2_percent_low_PA_2_levels_progress_writing                    :float
#  ks2_percent_med_PA_2_levels_progress_writing                    :float
#  ks2_percent_high_PA_2_levels_progress_writing                   :float
#  ks2_percent_disadvantaged_2_levels_progress_writing             :float
#  ks2_percent_not_disadvantaged_2_levels_progress_writing         :float
#  ks2_percent_GAP_disadvantaged_others_2_levels_progress_writing  :float
#  ks2_percent_EAL_2_levels_progress_writing                       :float
#  ks2_percent_2_levels_progress_writing_3YR_avg                   :float
#  ks2_percent_disadvantaged_2_levels_progress_writing_3YR_avg     :float
#  ks2_percent_not_disadvantaged_2_levels_progress_writing_3YR_avg :float
#  ks2_percent_level_4_above_RWM                                   :float
#  ks2_percent_level_4_above_RWM_2012                              :float
#  ks2_percent_level_4_above_RWM_2013                              :float
#  ks2_percent_level_4_above_RWM_2014                              :float
#  ks2_percent_level_4B_above_RWM                                  :float
#  ks2_percent_level_4B_above_RWM_2013                             :float
#  ks2_percent_level_4B_above_RWM_2014                             :float
#  ks2_percent_level_5_above_RWM                                   :float
#  ks2_percent_level_5_above_RWM_2012                              :float
#  ks2_percent_level_5_above_RWM_2013                              :float
#  ks2_percent_level_5_above_RWM_2014                              :float
#  ks2_percent_level_3_below_RWM                                   :float
#  ks2_value_added                                                 :float
#  ks2_percent_disadvantaged_2012                                  :float
#  ks2_percent_disadvantaged_2013                                  :float
#  ks2_percent_disadvantaged_2014                                  :float
#  ks2_percent_not_disadvantaged_2012                              :float
#  ks2_percent_not_disadvantaged_2013                              :float
#  ks2_percent_not_disadvantaged_2014                              :float
#  percent_SEN_statement                                           :float
#

class LocalAuthorityResult < ActiveRecord::Base
  belongs_to :local_authority
end
