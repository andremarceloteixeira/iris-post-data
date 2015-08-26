Given(/^Going to Xrelax Page$/) do
  visit_page Xrelax
end

When(/^Post todos os anuncios$/) do
  on_page Xrelax do |page|
    page.inciarSessao
  end
end


