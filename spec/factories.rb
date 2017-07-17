FactoryGirl.define do

   factory(:product) do
            name('Salmon')
            description('A fresh salmon filet.')
            price(5)

  end
  factory(:review) do
    author('Bob')
    content('Great when grilled.')
  end
end
