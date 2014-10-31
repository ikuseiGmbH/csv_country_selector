# encoding: utf-8

require 'csv'
require "csv_country_selector/version"

module CsvCountrySelector
  class Country

      #CSV Tabelle als Masterfreferenz
      #Lnd;Kfz;Sprache;ISO-Code;Kurzbez;Bezeichnung;Nationalität;Bezeichnung lang
      @@codes = CSV.read("#{File.dirname(File.expand_path(__FILE__))}/csv_country_selector/countries.csv", :col_sep => ";").inject({}){|a,b| a.merge!({b[0] => b[5]})}

      def self.short_name_for(name)
        @@codes.select{|k,v| v.downcase == name.downcase}.try(:first).try(:first)
      end


      def self.long_name_for(name)
        @@codes.select{|k,v| k.downcase == name.downcase}.try(:first).try(:last)
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
