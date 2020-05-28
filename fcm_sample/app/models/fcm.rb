require 'fcm'
class Fcm
  def fcm_push_notification
    fcm_client = FCM.new(ENV['FCM_SEVER_KEY'])
    options = { 
      priority: 'high',
      data: { 
        message: message,
        icon: image
      },
      notification: { 
        body: 'message',
        title: 'title',
        sound: 'default',
        #icon: 'image.png'
      }
    } 
    registration_ids = ["registration_id1", "registration_id2"]
    #([Array of registration ids up to 1000])
    registration_ids.each_slice(20) do |registration_id|
      response = fcm_client.send(registration_id, options)
      puts response
    end
  end
end