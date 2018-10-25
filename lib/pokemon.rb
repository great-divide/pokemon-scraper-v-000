class Pokemon
  attr_accessor :id, :name, :type, :db, :hp
  
  def initialize(id:, name:, type:, db:, hp: nil)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id, db)
    foo = db.execute("SELECT * FROM pokemon WHERE #{id} = id")
    foo.flatten!
    bar = Pokemon.new(id: foo[0], name: foo[1], type: foo[2], db: @db, hp: 60)
    # db.execute("INSERT INTO pokemon (hp) VALUES (60)")
    bar
  end
  
  def alter_hp(hp, db)
    db.execute("UPDATE pokemon SET hp = 59 WHERE ")
  end
end
