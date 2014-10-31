# encoding: utf-8

require "csv_country_selector/version"

module CsvCountrySelector
  class Country

      spec = Gem::Specification.find_by_name("csv_country_selector")
      gem_root = spec.gem_dir

      #CSV Tabelle als Masterfreferenz
      #Lnd;Kfz;Sprache;ISO-Code;Kurzbez;Bezeichnung;Nationalität;Bezeichnung lang
      @@codes = CSV.read("#{gem_root}/countries.csv", :col_sep => ";").inject({}){|a,b| a.merge!({b[0] => b[5]})}

      def self.short_name_for(name)
        @@codes.select{|k,v| v == name}.try(:first).try(:first)
      end


      def self.long_name_for(name)
        @@codes.select{|k,v| k == name}.try(:first).try(:last)
      end

      def self.long_list
        @@codes.values
      end

      def self.short_list
        @@codes.values
      end

      def self.codes
        @@codes
      end

    end
end
