defmodule Flightex do
  alias Flightex.Users.CreateOrUpdate, as: CreateOrUpdateUser
  alias Flightex.Bookings.CreateOrUpdate, as: CreateOrUpdateBooking

  defdelegate create_or_update_user(params), to: CreateOrUpdateUser, as: :call
  defdelegate create_or_update_booking(params), to: CreateOrUpdateBooking, as: :call
end
