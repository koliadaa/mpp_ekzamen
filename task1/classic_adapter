# Клас, який надає інтерфейс для взаємодії з старою API
class OldAPI
  def do_something
    # ...
  end
end

# Клас, який адаптує `OldAPI` до більш нового API
class Adapter
  def initialize(old_api)
    @old_api = old_api
  end

  def do_something
    @old_api.do_something
  end
end

# Використання адаптера
adapter = Adapter.new(OldAPI.new)
adapter.do_something
