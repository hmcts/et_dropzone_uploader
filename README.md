# et_dropzone_uploader
This gem enables forms for Employment Tribunals (i.e. ET1 and ET3) to upload files to AWS/Azure directly from the browser via Dropzone.

## Usage
Assuming your project is using [slim](https://github.com/slim-template/slim), there is only one way to call the gem from within your application code:

```ruby
  = dropzone_form_helper('ID of the form element that Dropzone is acting on',
          'ID of the input field for the upload key',
          'ID of the input field for the file name')
```

An example call from ET3:

```ruby
  = dropzone_form_helper('upload-additional-file',
          'additional_information_upload_additional_information',
          'additional_information_upload_file_name')
```


## Installation
Add this line to your application's Gemfile (please note the `tag` should be your desired version):

```ruby
gem 'et_dropzone_uploader', git: 'https://github.com/hmcts/et_dropzone_uploader.git', tag: 'v0.2.0'
```

And then execute:
```bash
$ bundle
```

## Incoming Features

* Add additional file types (currently supports .`rtf` only)
* Support strings and I18n (these are not currently customisable)

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
