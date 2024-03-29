Puppet::Type.type(:set_env).provide(:ruby) do

  def value
    ENV[@resource[:name]]
  end
  def value=(should)
    ENV[@resource[:name]] = @resource[:value]
  end

  def create
    ENV[@resource[:name]] = @resource[:value]

  end

  def destroy
    ENV.delete_if(@resource[:name])
  end

  def exists?
    ENV[@resource[:name]] = @resource[:value]
    ENV.has_key?(@resource[:name])
  end

  def flush
  end

end