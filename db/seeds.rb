# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pics = {
  0 => ["https://i.pinimg.com/550x/cf/24/ec/cf24ec6b4188f4095d2d506a2d2dbed1.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/0b/7d/8e/0d/cabin-3-with-deck-and.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/19/5e/bf/da/view.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRxuiwAQpoaElrn_YHkPLNzH1OY5YcI5h5nA&usqp=CAU"],
  1 => ["https://media.kookooning.com/photos/s_35241/chalets_cna_embrun.jpg.550x320_q70_crop_upscale.jpg",
  "https://media.kookooning.com/photos/r_18967/roulotte-viticole-6.JPG.550x320_q70_crop_upscale.jpg",
  "https://lagohermoso.net/wp-content/uploads/2019/02/360_preview-05.jpg"],
  2 => ["https://media-cdn.tripadvisor.com/media/photo-s/23/4b/f1/22/etosha-aoba-lodge.jpg",
  "https://i.pinimg.com/736x/4f/50/bf/4f50bfc9d15c234f4ccc7deb58f4e774.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/03/50/bc/c5/dormitorio-con-camas.jpg",
  "https://media.kookooning.com/photos/s_33773/oudormir-la-pommeraie-de-couloubrac_5977_1.JPG.550x320_q70_crop_upscale.jpg",
  "https://media.kookooning.com/photos/s_33757/oudormir-domaine-de-frevent_5960_1.jpg.550x320_q70_crop_upscale.jpg"]
}

3.times do |x|
  p "Creating Cabin #{x+1}"
  cabin = Cabin.create(
    name: "Cabaña #{x +1}", 
    description: "Respice ... Sentio sicut ego vobis exponam: sed vias breve iterum conabor. Fugere hoc maior difficultas est nobis. Perdet eam batch nostri. Et delebis eam ac omnia opus est vestigium, ut possimus coques. Sin id, quod morte morieris. Locus non est peccatum. Nec apud hos. Aut si rem a me pecuniam in Midiam elit. Nec ego in imperio elit. Id quod sum sub potestate felis. Etiam Id est - problema solvenda. Skyler est simplex partitio - introducam pecuniam, pecuniam launder. Id quod vobis deerat. Qui nunc loqueris? Ecce qui cogitatis? Vos scitis quanta ego faciam annum Id est, ut ego dixi vobis non credunt. Scis quid si ne subito placuit ire in opus? Negotium sufficere posse recensentur in NASDAQ vadit ventre sursum. Perit! Non est amplius extra me existant. Non, manifeste tu scis nesciunt qui loquebantur, sic fiat mihi fila vobis ego sum nolite ingredi in periculo Skyler. Sum in periculo! Ut sagittis metus aperit ostium, et arbitraris me et habet? Non ego sum ille qui pulsat! ", 
    price: 100000
  )
  pics[x].each do |pic|
    p "Creating pic #{pic}"
    cabin.cabin_pics.create(pictures: pic)
  end
end

