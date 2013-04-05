require 'spec_helper'

describe 'displaying different frequencies of offering' do
  context 'when the workshop is online' do
    it 'displays an online-specific message' do
      workshop = stub('workshop', online: true)

      render 'workshop/workshop', locals: { workshop: workshop }

      rendered.should contain('This workshop is held every month.')
    end
  end

  context 'when the workshop is in-person' do
    it "displays an in-person-specific message" do
      workshop = stub('workshop', online: false)

      render 'workshop/workshop', locals: { workshop: workshop }

      rendered.should contain('This in-person workshop is held every six weeks')
    end
  end
end
