defmodule Flightex.Users.User do
  @keys [:name, :email, :cpf, :id]
  @enforce_keys @keys
  defstruct @keys

  def build(name, email, cpf) when is_bitstring(cpf) do
    {:ok,
     %__MODULE__{
       name: name,
       email: email,
       cpf: cpf,
       id: UUID.uuid4()
     }}
  end

  def build(_name, _email, cpf) when is_number(cpf) do
    {:error, "Cpf must be a String"}
  end
end
