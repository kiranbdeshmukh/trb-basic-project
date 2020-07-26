module User::Operation
  class Create < Trailblazer::Operation
    step Subprocess(User::Operation::New)
    step Contract::Validate()
    step Contract::Persist()

    fail handle_failure

    def handle_failure(ctx, **)
      ctx[:error] = "Got error while creating user"
    end
  end
end
