Given(/^the following tournaments:$/) do |table|
  # table is a Cucumber::Ast::Table
  table.map_headers!('Occurs' => :occurs_at) { |h| h.downcase }
  table.map_column!('Occurs') { |a| Chronic.parse(a) }
  table.hashes.each { |row|
    FactoryGirl.create :tournament, row
  }
end
