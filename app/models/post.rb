class Post < ApplicationRecord
    validates :title, :start_date, :end_date, presence: true
    validates :title, length:{maximum: 20}
    validates :content, length:{maximum: 500}
    validate :start_end_check

    Post.count

    def start_end_check
        if self.start_date.nil?
            errors.add(:start_date, "を入力してください")
        elsif self.end_date.nil?
            errors.add(:end_date, "を入力してください")
        else
            errors.add(:end_date, "は開始日より前の日付は登録できません。") unless
            self.start_date <= self.end_date 
        end
    end
end
