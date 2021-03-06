class Cal < ApplicationRecord
  #Calculate total yield between two toners that was used in one month.
  def tyield
    ryieldi.to_i + ryielde.to_i
  end
  #Calculate total prodution.
  def tprod
    self.prodi.to_i + self.prode.to_i
  end

  def pdefault
    per_default = 5.0
  end
  #Calculate cover percent.
  def cover
    (tyield.to_f * pdefault.to_f) / tprod.to_f
  end

  def pprice
    self.cprice / 3.0
  end

  def rprice
    (pprice * cover) / (pdefault)
  end

  def notice_rprice
    notice = "Aplicando o valor total da área de cobertura de #{cover.round(2)}% sob o toner em questão, teremos um valor de R$#{rprice.round(5)} no toner"
  end
end
