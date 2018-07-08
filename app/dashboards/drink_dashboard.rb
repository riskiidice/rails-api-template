require "administrate/base_dashboard"

class DrinkDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    ingredients: Field::HasMany,
    id: Field::Number,
    title: Field::String,
    description: Field::String,
    steps: Field::String,
    source: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :ingredients,
    :id,
    :title,
    :description,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :ingredients,
    :id,
    :title,
    :description,
    :steps,
    :source,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :ingredients,
    :title,
    :description,
    :steps,
    :source,
  ].freeze

  # Overwrite this method to customize how drinks are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(drink)
  #   "Drink ##{drink.id}"
  # end
end
