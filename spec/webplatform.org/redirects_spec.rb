require 'spec_helper'

describe http_get(80, 'webplatform.org', '/') do
    its(:headers) { should include('location' => 'https://www.webplatform.org/') }
end

describe http_get(80, 'webplatform.org', '/wiki') do
    its(:status)  { should eq 301 }
    its(:headers) { should include('location' => 'https://docs.webplatform.org/wiki/Main_Page') }
end

# ... TODO
