defmodule Uauth.Auth.Hash do
  @moduledoc """
  The Hash module that is hashing the password

  You are also able to verify the password with the hash
  """
  def hash_password(password) do
    Argon2.hash_pwd_salt(password)
  end

  def verify_password(password, hash) do
    Argon2.verify_pass(password, hash)
  end
end
