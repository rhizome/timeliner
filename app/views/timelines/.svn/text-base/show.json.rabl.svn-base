object @timeline

attribute :name => :headline
node :type do
  'default'
end
node :text do 
  ""
end

child({ @timeline.events.single_day => :date }, :object_root => false) do
  attribute :name => :headline
  attribute :description => :text
  attribute :start_date => :startDate
  attribute :end_date => :endDate, :unless => lambda { |e| e.one_day? }
end
child({ @timeline.events.ranged_date => :era }, :object_root => false) do
  attribute :name => :headline
  attribute :description => :text
  attribute :start_date => :startDate
  attribute :end_date => :endDate, :unless => lambda { |e| e.one_day? }
end
