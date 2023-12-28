# Panoptic

Panoptic is a web interface for the [SolidQueue](https://github.com/basecamp/solid_queue) queuing backend.

![](./images/demo.png)

While MissionControl is getting ready for release, this gem offers a visual interface for testing purposes with SolidQueue. 

## Installation
Add this line to your application's Gemfile:

```ruby
gem "panoptic"
```

Then mount the engine in your `config/routes.rb` file 

```ruby
mount Panoptic::Engine => "/panoptic"
```

## Usage 

Once the gem is installed and the Engine mounted, visit your engine route to access Panoptic. For now, it offers three views: 
- Processes 
- Queues 
- A first version of the jobs view 

In the near future, the following features could be implemented: 
- Pause and clear queues 
- Advanced jobs view, with filters for executed, failed and scheduled jobs
- Search and retries

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
