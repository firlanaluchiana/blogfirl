Given(/^I am on the home page$/) do
    visit root_path
  end

Given(/^I am on the post page$/) do
    visit Post.all
end

When(/^I am on the postpage$/) do
  visit "/"
end

Then(/^I should see the "(.*?)" post$/) do |title|
  @post = Post.find_by_title(title)
  expect(page).to have_content(@post.title)
  expect(page).to have_content(@post.body)
end

Given(/^there's a post titled "(.*?)" with "(.*?)" body$/) do |title, body|
  @post = User.create(:post, title: title, body: body)
end

When(/^I am on the postpage$/) do
  visit "/"
end

Then(/^I should see the "(.*?)" post$/) do |title|
  @post = Post.find_by_title(title)
  expect(page).to have_content(@post.title)
  expect(page).to have_content(@post.body)
end