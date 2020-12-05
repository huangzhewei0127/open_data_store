class DashboardController < AdminController
  def index
    @category_array = ProductCategory.category
  end
end
