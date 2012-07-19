# SendPullRequest

This gem makes it easy to send pull requests

## Installation

    gem 'send_pull_request'

## hub is needed

In order for this gem to work you need to have [hub](https://github.com/defunkt/hub) installed.

Older versions of hub are not supported. You must have `1.10.1` or
higher.

```
$ hub --version
git version 1.7.3.4
hub version 1.10.1
```

## Usage

Let's say that I am finished working on branch `76-facebook-authentication` and I want to send a pull request.

Here `76` is the issue number and I want to send a pull request to issue 76 rather than creating a new issue . This is what you need to do

```

# first ensure that you are not in the master branch
git checkout 76-facebook-authentication

rake send_pull_request
```

## License

MIT
