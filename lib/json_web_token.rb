class JsonWebToken
 class << self
   def encode(payload, exp = 24.hours.from_now)
     payload[:exp] = exp.to_i
     JWT.encode(payload, 'e4d884bb4ff0897611f1b6223120b663396fe768859f200f6ff0edbf99624fe1e2edbf36cfad98bbd6a880d61f73ff4091a5c60a1f161017593ac7e0f9a2a78f', 'HS256')
   end

   def decode(token)
     body = JWT.decode(token, 'e4d884bb4ff0897611f1b6223120b663396fe768859f200f6ff0edbf99624fe1e2edbf36cfad98bbd6a880d61f73ff4091a5c60a1f161017593ac7e0f9a2a78f', true, { algorithm: 'HS256' })[0]
     HashWithIndifferentAccess.new body
   rescue
     nil
   end
 end
end
