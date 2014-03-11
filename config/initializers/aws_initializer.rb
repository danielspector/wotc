@req = Vacuum.new
@req.configure(
    aws_access_key_id:     ENV['AWS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET'],
    associate_tag:         ENV['AWS_TAG']
)