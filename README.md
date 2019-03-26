# et_dropzone_uploader
This gem enables forms for Employment Tribunals (i.e. ET1 and ET3) to upload files to AWS/Azure directly from the browser via Dropzone.

## Usage
The gem utilises named parameters. Assuming your project is using [slim](https://github.com/slim-template/slim),
there is only one way to call the gem from within your application code:

```ruby
  = dropzone_form_helper(form_id: 'ID of the form element that Dropzone is acting on',
          upload_key_id: 'ID of the input field for the upload key',
          file_name_id: 'ID of the input field for the file name',
          i18n_location: 'Location where the i18n strings are stored in your locales file')
```

An example call from ET3:

```ruby
  = dropzone_form_helper(form_id: 'upload-additional-file',
          upload_key_id: 'additional_information_upload_additional_information',
          file_name_id: 'additional_information_upload_file_name',
          i18n_location: 'components.additional_information')
```

### I18n Strings

The gem will expect your application to have strings for `drag_text`, `or_text` and `upload_button` under the `i18n_location` parameter.

For example, in the following example ET3 call:

```ruby
  = dropzone_form_helper(form_id: 'upload-additional-file',
          upload_key_id: 'additional_information_upload_additional_information',
          file_name_id: 'additional_information_upload_file_name',
          i18n_location: 'components.additional_information')
```

The gem expects the following in your `config/locales/en.yml` (and other locales) file(s):

```yml
en:
  components:
    additional_information:
      drag_text: "Drag and drop .rtf files here"
      or_text: "or"
      upload_button: "Click here to upload rtf file"
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
