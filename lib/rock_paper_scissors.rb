class RPS
  def wins?(object, otherObject)
    if object == "rock"
      if otherObject == "scissors"
        return true
      elsif otherObject == "paper"
        return false;
      end
    elsif object == "paper"
      if otherObject == "rock"
        return true
      elsif otherObject == "scissors"
        return false;
      end
    else
      if otherObject == "paper"
        return true
      elsif otherObject == "rock"
        return false
      end
    end
  end
end
