class ApplicationController < ActionController::Base
before_action :categories, :brands


def categories
    @categories = Category.all

end

def brands
    @brands = Product.pluck(:brand).sort.uniq

end
end