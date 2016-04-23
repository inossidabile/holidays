# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/jp.yaml
  #
  # To use the definitions in this file, load it right after you load the
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'generated_definitions/jp'
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module JP # :nodoc:
    def self.defined_regions
      [:jp]
    end

    def self.holidays_by_month
      {
              1 => [{:mday => 1, :name => "元日", :regions => [:jp]},
            {:wday => 1, :week => 2, :name => "成人の日", :regions => [:jp]},
            {:mday => 1, :function => "jp_substitute_holiday(year, month, day)", :function_arguments => [:year, :month, :day], :name => "振替休日", :regions => [:jp]}],
      2 => [{:mday => 11, :name => "建国記念日", :regions => [:jp]},
            {:mday => 11, :function => "jp_substitute_holiday(year, month, day)", :function_arguments => [:year, :month, :day], :name => "振替休日", :regions => [:jp]}],
      3 => [{:function => "jp_vernal_equinox_day(year)", :function_arguments => [:year], :name => "春分の日", :regions => [:jp]},
            {:function => "jp_vernal_equinox_day_substitute(year)", :function_arguments => [:year], :name => "振替休日", :regions => [:jp]}],
      4 => [{:mday => 29, :name => "昭和の日", :regions => [:jp]},
            {:mday => 29, :function => "jp_substitute_holiday(year, month, day)", :function_arguments => [:year, :month, :day], :name => "振替休日", :regions => [:jp]}],
      5 => [{:mday => 3, :name => "憲法記念日", :regions => [:jp]},
            {:mday => 4, :name => "みどりの日", :regions => [:jp]},
            {:mday => 5, :name => "こどもの日", :regions => [:jp]},
            {:mday => 3, :function => "jp_substitute_holiday(year, month, day)", :function_arguments => [:year, :month, :day], :name => "振替休日", :regions => [:jp]},
            {:mday => 4, :function => "jp_substitute_holiday(year, month, day)", :function_arguments => [:year, :month, :day], :name => "振替休日", :regions => [:jp]},
            {:mday => 5, :function => "jp_substitute_holiday(year, month, day)", :function_arguments => [:year, :month, :day], :name => "振替休日", :regions => [:jp]}],
      7 => [{:mday => 20,  :year_ranges => [{:between => 1996..2002}],:name => "海の日", :regions => [:jp]},
            {:wday => 1, :week => 3,  :year_ranges => [{:after => 2003}],:name => "海の日", :regions => [:jp]},
            {:function => "jp_marine_day_substitute(year)", :function_arguments => [:year],  :year_ranges => [{:between => 1996..2002}],:name => "振替休日", :regions => [:jp]}],
      8 => [{:function => "jp_mountain_holiday(year)", :function_arguments => [:year],  :year_ranges => [{:after => 2016}],:name => "山の日", :regions => [:jp]},
            {:function => "jp_mountain_holiday_substitute(year)", :function_arguments => [:year],  :year_ranges => [{:after => 2016}],:name => "振替休日", :regions => [:jp]}],
      9 => [{:wday => 1, :week => 3, :name => "敬老の日", :regions => [:jp]},
            {:function => "jp_respect_for_aged_holiday_substitute(year)", :function_arguments => [:year], :name => "振替休日", :regions => [:jp]},
            {:function => "jp_citizens_holiday(year)", :function_arguments => [:year], :name => "国民の休日", :regions => [:jp]},
            {:function => "jp_national_culture_day(year)", :function_arguments => [:year], :name => "秋分の日", :regions => [:jp]},
            {:function => "jp_national_culture_day_substitute(year)", :function_arguments => [:year], :name => "振替休日", :regions => [:jp]}],
      10 => [{:wday => 1, :week => 2, :name => "体育の日", :regions => [:jp]},
            {:function => "jp_health_sports_day_substitute(year)", :function_arguments => [:year], :name => "振替休日", :regions => [:jp]}],
      11 => [{:mday => 3, :name => "文化の日", :regions => [:jp]},
            {:mday => 3, :function => "jp_substitute_holiday(year, month, day)", :function_arguments => [:year, :month, :day], :name => "振替休日", :regions => [:jp]},
            {:mday => 23, :name => "勤労感謝の日", :regions => [:jp]},
            {:mday => 23, :function => "jp_substitute_holiday(year, month, day)", :function_arguments => [:year, :month, :day], :name => "振替休日", :regions => [:jp]}],
      12 => [{:mday => 23, :name => "天皇誕生日", :regions => [:jp]},
            {:mday => 23, :function => "jp_substitute_holiday(year, month, day)", :function_arguments => [:year, :month, :day], :name => "振替休日", :regions => [:jp]}]
      }
    end

    def self.custom_methods
      {
        "jp_health_sports_day_substitute(year)" => Proc.new { |year|
Holidays::DefinitionFactory.custom_methods_repository.find("jp_substitute_holiday(year, month, day)").call(year, 10, Holidays::DateCalculatorFactory.day_of_month_calculator.call(year, 10, 2, 1))
},

"jp_vernal_equinox_day(year)" => Proc.new { |year|
day =
  case year
  when 1851..1899
    19.8277
  when 1900..1979
    20.8357
  when 1980..2099
    20.8431
  when 2100..2150
    21.8510
  else
    raise IndexError.new("Out of range")
  end
day += 0.242194 * (year - 1980) - ((year - 1980)/4).floor
day = day.floor
Date.civil(year, 3, day)
},

"jp_vernal_equinox_day_substitute(year)" => Proc.new { |year|
date = Holidays::DefinitionFactory.custom_methods_repository.find("jp_vernal_equinox_day(year)").call(year)
Holidays::DefinitionFactory.custom_methods_repository.find("jp_substitute_holiday(year, month, day)").call(year, date.month, date.mday)
},

"jp_marine_day_substitute(year)" => Proc.new { |year|
Holidays::DefinitionFactory.custom_methods_repository.find("jp_substitute_holiday(year, month, day)").call(year, 7, Holidays::DateCalculatorFactory.day_of_month_calculator.call(year, 7, 3, 1))
},

"jp_national_culture_day(year)" => Proc.new { |year|
day =
  case year
  when 1851..1899
    22.2588
  when 1900..1979
    23.2588
  when 1980..2099
    23.2488
  when 2100..2150
    24.2488
  else
    raise IndexError.new("Out of range")
  end
day += 0.242194 * (year - 1980) - ((year - 1980)/4).floor
day = day.floor
Date.civil(year, 9, day)
},

"jp_national_culture_day_substitute(year)" => Proc.new { |year|
date = Holidays::DefinitionFactory.custom_methods_repository.find("jp_national_culture_day(year)").call(year)
Holidays::DefinitionFactory.custom_methods_repository.find("jp_substitute_holiday(year, month, day)").call(year, date.month, date.mday)
},

"jp_citizens_holiday(year)" => Proc.new { |year|
year < 2003 and return nil
ncd = Holidays::DefinitionFactory.custom_methods_repository.find("jp_national_culture_day(year)").call(year)
if ncd.wday == 3
  ncd - 1
else
  nil
end
},

"jp_mountain_holiday(year)" => Proc.new { |year|
return nil if year < 2016
Date.civil(year, 8, 11)
},

"jp_mountain_holiday_substitute(year)" => Proc.new { |year|
date = Holidays::DefinitionFactory.custom_methods_repository.find("jp_mountain_holiday(year)").call(year)
Holidays::DefinitionFactory.custom_methods_repository.find("jp_substitute_holiday(year, month, day)").call(year, date.month, date.mday)
},

"jp_respect_for_aged_holiday_substitute(year)" => Proc.new { |year|
Holidays::DefinitionFactory.custom_methods_repository.find("jp_substitute_holiday(year, month, day)").call(year, 9, Holidays::DateCalculatorFactory.day_of_month_calculator.call(year, 9, 3, 1))
},

"jp_substitute_holiday(year, month, day)" => Proc.new { |year, month, day|
date = Date.civil(year, month, day)
date.wday == 0 ? (Holidays::DefinitionFactory.custom_methods_repository.find("jp_next_weekday(date)").call(date+1)) : nil
},

"jp_next_weekday(date)" => Proc.new { |date|
is_holiday = Holidays::JP.holidays_by_month[date.month].any? do |holiday|
  holiday[:mday] == date.day
end
date.wday == 0 || is_holiday ? (Holidays::DefinitionFactory.custom_methods_repository.find("jp_next_weekday(date)").call(date+1)) : date
},


      }
    end
  end
end