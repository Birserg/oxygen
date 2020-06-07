# frozen_string_literal: true

require 'csv'

namespace :db do
  namespace :seed do
    desc 'seed categories data'
    task categories: :environment do
      categories_csv = Rails.root.join('db', 'seeds', 'categories.csv')

      CSV.foreach(categories_csv, headers: true) do |row|
        category = Category.find_or_initialize_by(name: row.fetch('name'))
        category.limit = row['limit']
        category.kind = row['kind']
        category.save!
      end
    end
  end
end
