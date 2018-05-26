require("pry")

class RPS
  def wins(object, otherObject)
    if object == "rock"
      if otherObject == "scissors"
        return true
      elsif otherObject == "paper"
        return false;
      else
        return "tie"
      end
    elsif object == "paper"
      if otherObject == "rock"
        return true
      elsif otherObject == "scissors"
        return false;
      else
        return "tie"
      end
    else
      if otherObject == "paper"
        return true
      elsif otherObject == "rock"
        return false
      else
        return "tie"
      end
    end
  end
end
