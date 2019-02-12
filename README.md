# human_enum_name

I18n support for Rails enums.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'human_enum_name'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install human_enum_name
```

## Usage

Declare your enums:

```ruby
class Conversation < ActiveRecord::Base
  enum status: [:active, :archived]
end
```

Add the enum values to your locale files:

```yml
en:
  activerecord:
    attributes:
      conversation:
        statuses:
          active: Active conversation
          archived: Archived conversation
```

Then, you can use the class method `human_enum_name`:

```ruby
Conversation.human_enum_name(:status, :active) #=> "Active conversation"
```

For an instance:

```ruby
conversation = Conversation.new(status: :archived)
Conversation.human_enum_name(:status, conversation.status) #=> "Archived conversation"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jkostolansky/human_enum_name. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the human_enum_name project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/jkostolansky/human_enum_name/blob/master/CODE_OF_CONDUCT.md).
