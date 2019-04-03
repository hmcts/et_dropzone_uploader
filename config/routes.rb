require 'et_dropzone_uploader/api_proxy'
EtDropzoneUploader::Engine.routes.draw do
  mount ApiProxy.new(backend: "#{ENV.fetch('ET_API_URL', 'http://api.et.127.0.0.1.nip.io:3100/api')}/v2/build_blob", streaming: false), at: "/"
end
