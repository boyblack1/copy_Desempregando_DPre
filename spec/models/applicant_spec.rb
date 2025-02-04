require 'rails_helper'

RSpec.describe Applicant, type: :model do
  describe 'verifica_idade' do

    it 'retorna "Menor" para age menor que 13' do
      applicant= Applicant.new(brithday: "01/01/2010")
      result= applicant.verifica_idade
      expect(result).to eq('Menor')
    end

    it 'retorna "Menor" para age menor que 13' do
      applicant= Applicant.new(brithday: "01/01/2009")
      result= applicant.verifica_idade
      expect(result).to eq('Aprendiz')
    end

    it 'retorna "Menor" para age Menor que 13' do
      applicant= Applicant.new(brithday: "01/01/2008")
      result= applicant.verifica_idade
      expect(result).to eq('Aprendiz')
    end

    it 'retorna "Menor" para age Menor que 13' do
      applicant= Applicant.new(brithday: "01/01/2006")
      result= applicant.verifica_idade
      expect(result).to eq('Aprendiz')
    end

    it 'retorna "Menor" para age Menor que 13' do
      applicant= Applicant.new(brithday: "01/01/2005")
      result= applicant.verifica_idade
      expect(result).to eq('Efetivo')
    end

    it 'retorna "Menor" para age Menor que 13' do
      applicant= Applicant.new(brithday: "01/01/2004")
      result= applicant.verifica_idade
      expect(result).to eq('Efetivo')
    end
  end
end
