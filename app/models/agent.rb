class Agent

  attr_reader :agent_name, :location

  alias :read_attribute_for_serialization :send
  def initialize(options = {})
    @agent_name = options[:agent_name]
    @location   = options[:location]
  end

  def self.all
    store.collect do |hsh|
      Agent.new(agent_name: hsh['agentName'],location: hsh['location'])
    end
  end

  def self.store
    [{'agentName' => 'Hulk','location' => 'SFO'},
     {'agentName' => 'Captain America','location' => 'EWR'},
     {'agentName' => 'Iron Man','location' => 'NYC'}]
  end
end
