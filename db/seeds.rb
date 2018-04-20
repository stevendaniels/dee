# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

michael = Person.create!(
  name: "Nichael \"Michael\" Bluth",
  email: "michael@example.com",
  notes: "The second oldest Bluth son, and the father of George Michael Bluth",
  title: "CEO and President of the Bluth Company",
  url: "https://en.wikipedia.org/wiki/Michael_Bluth",
)

gob = Person.create!(
  name: "Gob Bluth",
  email: "gob@example.com",
  notes: "Magician / Aspiring Beekeeper",
  title: "Master Illusionist",
  url: "https://en.wikipedia.org/wiki/List_of_Arrested_Development_characters#Gob_Bluth",
)

maeby = Person.create!(
  name: "Maeby Fünke",
  email: "maeby@example.com",
  notes: "Daughter of Lindsay and Tobias Fünke",
  title: "Studio executive",
  url: "https://en.wikipedia.org/wiki/List_of_Arrested_Development_characters#Maeby_F.C3.BCnke",
)
