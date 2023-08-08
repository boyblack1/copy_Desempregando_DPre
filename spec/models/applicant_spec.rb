require 'rails_helper'

RSpec.describe Applicant, type: :model do
  describe '#verifica_idade' do
    it 'retorna "Menor" para age menor que 10' do
      applicant = Applicant.new(brithday: "17/02/2004")
      result = applicant.verifica_idade
      expect(result).to eq('Efetivo')
    end

    it 'retorna "Menor" para age menor que 10' do
      applicant = Applicant.new(brithday: "17/02/2005")
      result = applicant.verifica_idade
      expect(result).to eq('Efetivo')
    end

    it 'retorna "Menor" para age menor que 10' do
      applicant = Applicant.new(brithday: "17/02/2006")
      result = applicant.verifica_idade
      expect(result).to eq('Aprendiz')
    end

    it 'retorna "Menor" para age menor que 10' do
      applicant = Applicant.new(brithday: "17/02/2008")
      result = applicant.verifica_idade
      expect(result).to eq('Aprendiz')
    end

    it 'retorna "Menor" para age menor que 10' do
      applicant = Applicant.new(brithday: "17/02/2009")
      result = applicant.verifica_idade
      expect(result).to eq('Aprendiz')
    end

    it 'retorna "Menor" para age menor que 10' do
      applicant = Applicant.new(brithday: "17/02/2010")
      result = applicant.verifica_idade
      expect(result).to eq('Menor')
    end
  end
end

