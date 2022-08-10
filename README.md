# Referral System API

This API is to be used within the Referral System and by Apex Systems MDC

## Swagger

Swagger UI is available at: /api-docs

### Example usage

Documenting a controller:

```ruby
swagger_controller :users, "User Management"

swagger_api :index do
  summary "Fetches all User items"
  notes "This lists all the active users"
  param :query, :page, :integer, :optional, "Page number"
  response :unauthorized
  response :not_acceptable
  response :requested_range_not_satisfiable
end
```

### Swagger Controller
This syntax must be just right after the definition of you Class
```ruby
class WelcomeController < ApplicationController
  swagger_controller :users, "User Management"
end
```
<table>
    <thead>
        <tr>
            <th>Option</th>
            <th>Description</th>
            <th>Required</th>
            <th>Example</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><b>Name</b></td>
            <td>This is the identifier for your controller</td>
            <td>Yes</td>
            <td>:users</td>
        </tr>
        <tr>
            <td><b>Description</b></td>
            <td>This is the description for your controller</td>
            <td>Yes</td>
            <td>User Management</td>
        </tr>
        <tr>
            <td><b>Resource Path</b></td>
            <td>This is when your controller has a custom path</td>
            <td>No</td>
            <td>/some/where</td>
        </tr>
    </tbody>
</table>

### Swagger API
This syntax must be before the method/action definition
```ruby
class WelcomeController < ApplicationController
  swagger_controller :users, "User Management"

  swagger_api :index do
    summary "Fetches all User items"
    notes "This lists all the active users"
    param :query, :page, :integer, :optional, "Page number"
    param :path, :id, :integer, :optional, "User ID"
    param :body, :body, :string, :required, "Body Param"
    param :form, :last_name, :string, :required, "Form Param"
    param_list :form, :role, :string, :required, "Param List", [ "admin", "superadmin", "user" ]
    param :header, 'Content-Type', :string, :required, "Content Type"
    response :unauthorized
    response :not_acceptable
    response :bad_request, "This is a bad request"
    response :requested_range_not_satisfiable
    response :ok, "Success"
  end
  def index
    # index action
  end
end
```
### DSL Methods
<table>
    <thead>
        <tr>
            <th>Method</th>
            <th>Description</th>
            <th>Param 1</th>
            <th>Param 2</th>
            <th>Param 3</th>
            <th>Param 4</th>
            <th>Param 5</th>
            <th>Example</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><b>Summary</b></td>
            <td>The summary of this API endpoint.</td>
            <td>:string summary</td>
            <td>N/A</td>
            <td>N/A</td>
            <td>N/A</td>
            <td>N/A</td>
            <td>summary "Fetches all User items"</td>
        </tr>
        <tr>
            <td><b>Notes</b></td>
            <td>The associated notes for the API.</td>
            <td>:string notes</td>
            <td>N/A</td>
            <td>N/A</td>
            <td>N/A</td>
            <td>N/A</td>
            <td>notes "This lists all the active users"</td>
        </tr>
        <tr>
            <td><b>Param</b></td>
            <td>Standard API Parameter.</td>
            <td>:query, :path, :body, :form, :header</td>
            <td>:name</td>
            <td>:string, :integer variable type</td>
            <td>:optional, :required</td>
            <td>:string description</td>
            <td>param :path, :id, :integer, :optional, "User ID"</td>
        </tr>
        <tr>
            <td><b>Param List</b></td>
            <td>Standard API Enum/List parameter.</td>
            <td>:query, :path, :body, :form, :header</td>
            <td>:name</td>
            <td>:string, :integer variable type</td>
            <td>:optional, :required</td>
            <td>:string description, [options]</td>
            <td>param_list :form, :role, :string, :required, "Param List", [ "admin", "superadmin", "user" ]</td>
        </tr>
        <tr>
            <td><b>Response</b></td>
            <td>Takes a symbol or status code and passes it to `Rack::Utils.status_code`. The current list of status codes can be seen here: https://github.com/rack/rack/blob/master/lib/rack/utils.rb. An optional message can be added.</td>
            <td>:symbol response</td>
            <td>:string description</td>
            <td>N/A</td>
            <td>N/A</td>
            <td>N/A</td>
            <td>response :bad_request, "This is a bad request"</td>
        </tr>
    </tbody>
</table>
For additional details please check: *[https://github.com/richhollis/swagger-docs](https://github.com/richhollis/swagger-docs/blob/master/README.md)*




## TBD

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
