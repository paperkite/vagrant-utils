# paperkite-vagrant-utils

Intended to be included in a `Vagrantfile` to configure common
things within PaperKite Vagrant VMs

## Usage

Add the `pk-vagrant-utils` cookbook to the `Berksfile`

```ruby
cookbook "pk-vagrant-utils", { :github => 'paperkite/vagrant-utils'}
```

Then include the recipes you want in a `Vagrantfile` inside the
`config.vm.provision :chef_solo` block

```ruby
config.vm.provision :chef_solo do |chef|
  chef.add_recipe'pk-vagrant-utils::irb_history']
end
```

## Adding new recipes

Add new recipes to the `recipes` directory, try to keep the names consistent
with other recipes, and make sure files/templates etc are organised properly
to avoid naming confusion, e.g. Name templates/files the same as their recipes
or organise things into subfolders.
