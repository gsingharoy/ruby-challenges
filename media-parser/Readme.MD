# Challenge : Media Parser
Difficulty : Easy

In this challenge you need to complete the `MediaParser` class. The `MediaParser` can be initialized with a path of a file which contains a list of files and the space it takes. Your job is to parse them and add the space it takes in the correct category and return a hash with the cumulative result.

Each line is of the format `<filename>.<file_extension> <file_space>b`. The `filename` could be any alphanumeric string value. The `file_extension` could be any alphanumeric lowercase string with no fixed size. The `file_space` is always an integer value. The file and size are always separated by a since space. The last character of the line is `b` which indicates bytes.

The `parse` function in `MediaParser` is expected to return a hash with the following keys, `:video`, `:audio`, `:image`, `:other`.

* `:video` -> `file_extension` could be `mkv`, `mp4`, `mov` or `avi`.
* `:audio` -> `file_extension` could be `mp3`, `aac` or `wma`.
* `:image` -> `file_extension` could be `gif`, `jpg` or `png`.
* `:other` -> Any other extension which is not one of the above.

Consider the following file

```
donotopen.avi 200b
somerandomimagehere.png 100b
run.rb 300b
avengersinfinitywar.mkv 1000b
```
The first line is a video file since it has the extension `.avi`. Hence you need to take the space `200` bytes and add it to the result hash under the category `:video`. Similarly, second line is an image file since the extension is `.png`. The third one is neither a video, an audio or an image. You should then add that to `:other`.
This example should give us the following hash
```ruby
{
  :video => 1200,
  :image => 100,
  :audio => 0,
  :other => 300
}
```
The values of the result hash is always an integer value in bytes.

## Setup and Testing
You must have already noticed that the basic project settings are already there. All you have to do is install the dependencies by
```
bundle install
```
This would install `rspec`, and you can check out the tests in `spec/media_parser_spec.rb`.

Now execute the tests by

```
bundle exec rspec
```

You should see some failing tests. If your implementation is accurate then you should not see any failing tests.

Good luck :)
