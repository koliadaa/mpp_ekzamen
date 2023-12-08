# Клас, який надає інтерфейс для взаємодії з старою API
class OldAPI
  def do_something
    # ...
  end
end

# Клас, який делегує виклики `OldAPI` і здійснює перетворення даних
class Adapter
  def initialize(old_api)
    @old_api = old_api
  end

  def do_something
    result = @old_api.do_something
    # ...
    return result
  end
end

# Використання адаптера
adapter = Adapter.new(OldAPI.new)
adapter.do_something
