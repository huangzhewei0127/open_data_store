# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = User.find_or_initialize_by(name: 'admin',email: 'admin@gmail.com', is_admin: true)
a.password = 'admin123456'
a.save

product_category = ProductCategory.find_or_create_by(title: "server", sorting: 1)

# t.string "name", limit: 100
# t.integer "number"
# t.string "description"
# t.boolean "on_shelf"
# t.decimal "price", precision: 14, scale: 4
# t.integer "product_category_id"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.string "location", limit: 500
# t.string "img", limit: 500
des1 = "We envision a future where people, organisations and communities use data to make better decisions, more quickly. Using data can enable us to innovate, create more efficient and effective services and products, and fuel economic growth and productivity.

To bring about this future, we must make data as open as possible while protecting people’s privacy, commercial confidentiality and national security. We must identify potential ethical issues associated with a data project or activity.

The ODI advocates for and supports putting in place practices that ensure the way data is collected and used is trustworthy and ethical.

Through advocacy, we also promote data literacy in order for people to make informed choices about what data to share, and what privacy settings to use. Through training and services, the ODI helps organisations make better and more ethical decisions about data.

If you’d like to discuss how we can work with you to help your organisation to explore how it can become more trustworthy with data, get in touch with our team

On this page:

Use our free Data Ethics Canvas
Get help using our Data Ethics Canvas
Data ethics courses and events
What is data ethics?
Stay connected"

des2 = "By Rachel Wilson

Geospatial data has a lot of potential for government and businesses, but there are challenges to publishing and using it, from a lack of standards and tools

The ODI’s R&D team have been exploring the challenges to publication and use of open geospatial data by government and small businesses. Our report exploring the needs of geospatial data users highlighted that the lack of common standards for data attributes across UK geospatial datasets is a source of friction.

GeoJSON is a web-friendly file structure designed for representing simple geographical features, along with their non-spatial attributes. These attributes, or “properties”, are user defined and are usually specific to a domain of interest.

One of the challenges we have encountered is lack of support in data publishing tools for people working with GeoJSON to define simple schemas for their data files.

GeoJSON properties
A GeoJSON file of toilet ‘features’ looks like this. Highlighted are the user-defined properties specific to the domain of public toilets, including BabyChange – a yes/no value that indicates whether a baby change facility exists – and ChargeAmount – which is a number, presumably a decimal number, here without a pound symbol.
In this way, the GeoJSON structure permits us to associate useful information with the pure geospatial data. You can see the geospatial data, together with its properties, displayed on this map of Great British Toilets.

Geospatial tools to promote collaboration
Someone who wants to collect geospatial data on a topic might want to work collaboratively. Imagine a nationwide campaign to observe wildlife in back gardens – whoever creates the campaign would like contributors to provide data in a GeoJSON file, using the same properties.

Thinking back to the toilet example above: should data about the charge amount be in pounds or in pence? Should we specify the currency? What if this were an international project – should you specify a currency symbol or another property for currency code? Should BabyChange be a yes/no value or a true/false value, and, if the answer is no, is it permissible to leave it blank? Imagine if everyone who contributed data made a different choice.

One of the fundamental ways data publishers can increase quality and consistency, and therefore reusability, of their data is to use a schema. A schema is a document that describes the structure of your data including rules and constraints on the values. Datasets that use the same schema will have the same structure, property names and datatypes and are therefore easier to combine.

The creator of the the wildlife campaign would like to create a schema for their geospatial data. But how would they create such a schema and how would they share it for others to find? Once someone has found the schema, how might they use it to structure and validate their data for consistency before publishing?

We have found there is a gap in the tools available for working with GeoJSON. It is not common practice, nor is it simple to define a schema for the user-defined properties of the features. We have not yet found any support for defining or applying schemas in commonly used geospatial tools.

In response to this need we have made some sketches showing how geospatial tools might provide the means to define a schema for GeoJson features, and publish the schemas on the web. Our demonstration tool Octopub already publishes data to github, so could we extend it to publish schemas?

Models vs Schemas
Early on in our thinking we realised that a schema applies to an entire dataset and GeoJson already has a standard structure. The domain expert doesn’t need to know about the GeoJSON structure itself, but they will best understand what properties we need to capture for a feature, and they will understand what constraints there are on the values (eg a decimal number with no currency symbol). Perhaps what we need to create first is a model, or outline, of what should be specified in the properties.

Based on this “model” we can then generate a complete schema for validating that a dataset is both in GeoJSON format and also contains the required properties, with values that comply with any constraints.

Creating models
Here is a sketch showing what a model would look like in Octopub, the ODI’s demonstrator tool for data publishing."

des3 = "Launched in 2010, the London Datastore is a data-portal pioneer – providing a platform where anyone can access public data relating to London. Its second iteration – which greatly improved its design and functionality – in 2015, was so good it won an ODI award in the open data publishing category.

As a model for access to data, portals have proven their usefulness. Whether they are national, local or regional, thematic or sector-focused, they have been empowering people, increasing transparency, and enabling innovation. Many of them, however, were set up without sustainability in mind, and are now sitting unloved and underused.

Data discovery evolution
And just like the history of the web saw modes of discovery evolve from the curatorial nature of portals to a mix of modes including search, social and personalised recommendations, we should expect the discovery of data to evolve from a portal model to something else entirely.

The ability to search for dataset, for example, is quickly shifting from the realm of academic research to live products. Portals also need to evolve with technology – the past 10 years have seen a rise in APIs, knowledge graphs and the need for trustworthy data governance. Giving access to static datasets isn’t always the best approach, and there are now many more ways of providing access to data.

The future shape and scope of the London Datastore
The range of data access models now available makes it a particularly exciting time to embark on a project to help define the future shape and scope of the London Datastore. It is a challenging exercise: the platform needs to respond to the needs of its users, present and future, and follow an ambitious strategy to make it fit for purpose for the years to come.

To build on its successful foundations, built by the datastore team over the past nine years, the platform now needs to broaden in scope: shifting from its focus on open data, to facilitating access to data across the whole data spectrum. And it should follow an approach that is quintessentially of and for London, while learning from the approach taken by other open cities.

With that in mind, we are excited to build upon the work we conducted in close collaboration with the Greater London Authority and the Royal Borough of Greenwich to create one of the first ever data trust pilots, with a focus on sensor data in the urban environment.

A focus on user needs
Through this discovery project, we aim to find out: about London Datastore users and their needs; about the data, governance and technology that is already being used; and what the requirements of the product may be. And this is where we need your help.

We know that the London Datastore has many different types of users – and the list is likely to evolve in the future as new ways of using data emerge: from citizens gleaning insights from data about their city; to companies downloading open data as they create innovative services; to policy analysts connecting visualisation dashboards to the datastore’s API.

Data users represent a wealth of ideas we would love to hear about, and issues we must make sure we surface through our research. Publishers and partners of the datastore – who use it as a platform to give access to data – are also a key user group, and we will want to build on the kinds of insights gleaned in our earlier research.

Get involved!
To gather insights from the greatest possible variety of standpoints and situations, we are planning a number of research activities including surveys, workshops and one-to-one interviews with experts.

We will tap into the rich ODI network and the existing user base of the datastore, of course, but if you would like to participate in this research – or indeed if you are simply keen on reading about it once we publish its results – please fill in this short form so we can get in touch.

Date And Time
2019-11-10 15:26:34 UTC
Location
65 Clifton Street, London
"

des4 = "The OpenActive initiative harnesses the power of open data to help people – especially those who are in- or under-active – access physical activities in their area more easily. As such, it is aligned and overlaps substantially with public health priorities – and in particular with the growing area of social prescribing, whereby link workers recommend community-based activities to help address individuals’ chronic and/or subclinical conditions.

Unfortunately, the data landscape for social prescribing at the local level is fragmented and complex. Social prescribing can involve a wide range of organisations, from local third-sector groups to large private enterprises, each with its own distinctive (or, alternatively, no) online technical infrastructure. Link workers struggle to keep information current and relevant, and are often limited in the options they can offer their clients because of uncertainty over the accuracy of logistical data or unaddressed concerns regarding e.g. safeguarding or accessibility information. For link workers and their clients, the result is a lack of suitable or optimal interventions; for community activity providers, a reduction in their potential client base and, potentially, financial viability. Considered collectively, there can be an across-the-board drop in the physical, mental, and economic health of the community.

In order to realise the promise of social prescribing, then, the Open Data Institute (ODI) is launching an invitation to tender for research that will help foster rich local ecosystems of prescribing opportunities by:

Exploring requirements for, and barriers to, data access and data sharing for social prescription at the local (council) level, including physical activity data
Developing strategies for surmounting identified barriers, and measuring the success of these
Undertake a gap analysis of OpenActive data standards and tooling with regard to these strategies
Because social prescribing is an intensely local activity, we anticipate this research as comparative, focusing tightly on two or three local areas to capture the range of needs and challenges faced by local authorities, rather than working generically at a national level."

product_category.products.create(name: "Data ethics: how to be more trustworthy with data", number: 10, description: des1, price: 60, location: "65 Clifton Street, London", on_shelf: true)
product_category.products.create(name: "GeoJson schema publishing: a prototyp", number: 10, description: des2, price: 20, location: "65 Clifton Street, London", on_shelf: true)
product_category.products.create(name: Faker::Food.dish, number: 10, description: des3, price: 10, location: "65 Clifton Street, London", on_shelf: true)
product_category.products.create(name: Faker::Food.dish, number: 10, description: des4, price: 0, location: "65 Clifton Street, London", on_shelf: true)
product_category.products.create(name: Faker::Food.dish, number: 10, description: des2, price: 15, location: "65 Clifton Street, London", on_shelf: true)

2000.times do
  product_category.products.create(name: Faker::Food.dish, number: 10, description: Faker::Food.description, price: rand(100), location: "65 Clifton Street, London", on_shelf: true)
end
