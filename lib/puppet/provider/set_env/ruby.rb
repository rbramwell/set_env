Puppet::Type.type(:set_env).provide(:ruby) do
  Puppet.warning("I like to start this provider")

  def value
    Puppet.warning('In getter for :value')
    ENV[@resource[:name]]
  end
  def value=(should)
    Puppet.warning("#{@resource[:name]}: In setter for :name")
    # ENV[$resource[:name]] = @resource[:value]
  end

  def create
    Puppet.warning("Creating")
    ENV[@resource[:name]] = @resource[:value]
  end

  def destroy
    Puppet.warning("Destroying")
    ENV.delete_if(@resource[:name])
  end

  def exists?
    ENV.has_key?(@resource[:name])
  end

  def flush
    Puppet.warning("flushing")
    puts ENV.keys
  end

end