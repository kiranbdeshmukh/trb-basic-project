module User::Operation
  class New::Trailblazer::Operation
    step Model(User, new)
    step Contract::Build(Constant: User::Contract::Form)
  end
end
