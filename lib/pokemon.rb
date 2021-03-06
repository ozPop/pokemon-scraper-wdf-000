require "pry"
class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    prepared = db.prepare("INSERT INTO Pokemon (id, name, type) VALUES (?, ?, ?)")
    prepared.execute(@id, name, type)
  end

  def self.find(id, db)
    db.execute("SELECT * FROM Pokemon WHERE id = ?;", id)
  end

end
