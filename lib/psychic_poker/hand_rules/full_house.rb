module HandRules
  class FullHouse < BaseRule
    def match_rule?(hand)
      hand.group_by{|card| card.face.face_value}.size == 2
    end

    def value
      7
    end

    def to_s
      'full-house'
    end
  end
end
