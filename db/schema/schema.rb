create_table "products", collate: "en_US.UTF-8", comment: "Products" do |t|
  t.int :id, comment: 'Id', primary_key: true, extra: :auto_increment
  t.varchar :name, limit: 100, comment: "Product name"
  t.int :price, default: 0, comment: "Product price"

  t.datetime :created_at
  t.datetime :updated_at
end

create_table "schema_migrations", collate: "en_US.UTF-8", comment: "" do |t|
  t.varchar "version"

  t.index "version", name: "unique_schema_migrations", unique: true
end
