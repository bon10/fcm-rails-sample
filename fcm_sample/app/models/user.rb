class User < ApplicationRecord

  def self.regsiter_and_update_token(hash)
    case hash['status']
    when "new"
      Rails.logger.info "新規登録"
      register_and_update_token(hash['token'], hash['uid'])
    when "update"
      Rails.logger.info "更新"
    else
      Rails.logger.warn "[regsiter_and_update_token] token status is not defined"
    end
  end

  def self.register_and_update_token(token, uid)
    # TODO: 実際はログイン中のユーザーを取得(例えばdeviseの current_user )
    user = User.first
    user.token = token
    user.uid = uid
    user.save!
    user.test_push
  end

  def test_push
    # 実際はプッシュ対象のユーザー
    user = User.first
    token = user.token
    Fcm.push(token, "テスト", "トークンの登録&更新に成功しました")
  end
end
