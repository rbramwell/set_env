Puppet::Type.newtype(:set_env) do
  @doc = "Set running Environment Variable"
  ensurable
  def initialize(args)
    super(args)

  end

  newparam(:name) do
    desc "Name param"
    isnamevar
    munge do |value|
      value
    end
  end

  newparam(:value) do
    desc "Value param"

    munge do |value|
      puts value
      value
    end
  end

  def finish
  end
end