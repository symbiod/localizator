# Localizator [![Open Source Helpers](https://www.codetriage.com/symbiod/localizator/badges/users.svg)](https://www.codetriage.com/symbiod/localizator)

Localizator gem provides translation for Yaml files. Gem uses Google Cloud Translation API.

## Notes

This gem in experemental development. It is used as local solution for translation.

## Requirements

- Google Cloud Account
- Google Cloud Translation API is ON
- Google Cloud Service Account json

Read docs about [Google Translation API](https://cloud.google.com/translate/)

## Installation

`git clone https://github.com/symbiod/localizator`

## Usage

Execute file is located in `bin` folder.

```
$ ./bin/localizator -i /path/to/source -o /path/to/input -d en -l ru
```

Options:

`-i`, `--input` - Folder with source yaml files.

`-o`, `--output` - Distanation folder where will be saved translaed files under locale name folder.

`-d`, `--default` - Default language that is used in source files.

`-l`, `--locales` - One or Array (separated with `,` with not spaces) locales.

`-k`, `--key` - Hash key for hash parsed from yaml file.

Example:
`./bin/localizator -i ~/Desktop/locales/input -o ~/Desktop/locales/output -d en -l ru,cn -k pages`

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

