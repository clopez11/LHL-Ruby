class BankException < StandardError

  class DebitCardError < BankException
  end

  class CreditCardError < BankException
  end

end

begin

rescue DebitCardError

rescue CreditCardError

else
  
end
