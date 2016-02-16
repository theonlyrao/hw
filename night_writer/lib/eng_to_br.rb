Class EngToBr

  attr_reader :etb

  def initialize
    @etb = Hash.new

    @etb["#"] = [".", "0", ".", "0", "0", "0"]
    @etb["0"] = [".", "0", "0", "0", ".", "."]
    @etb["1"] = ["0", ".", ".", ".", ".", "."]
    @etb["2"] = ["0", ".", "0", ".", ".", "."]
    @etb["3"] = ["0", "0", ".", ".", ".", "."]
    @etb["4"] = ["0", "0", ".", "0", ".", "."]
    @etb["5"] = ["0", ".", ".", "0", ".", "."]
    @etb["6"] = ["0", "0", "0", ".", ".", "."]
    @etb["7"] = ["0", "0", "0", "0", ".", "."]
    @etb["8"] = ["0", ".", "0", "0", ".", "."]
    @etb["9"] = [".", "0", "0", ".", ".", "."]
    @etb["a"] = ["0", ".", ".", ".", ".", "."]
    @etb["b"] = ["0", ".", "0", ".", ".", "."]
    @etb["c"] = ["0", "0", ".", ".", ".", "."]
    @etb["d"] = ["0", "0", ".", "0", ".", "."]
    @etb["e"] = ["0", ".", ".", "0", ".", "."]
    @etb["f"] = ["0", "0", "0", ".", ".", "."]
    @etb["g"] = ["0", "0", "0", "0", ".", "."]
    @etb["h"] = ["0", ".", "0", "0", ".", "."]
    @etb["i"] = [".", "0", "0", ".", ".", "."]
    @etb["j"] = [".", "0", "0", "0", ".", "."]
    @etb["k"] = ["0", ".", ".", ".", "0", "."]
    @etb["l"] = ["0", ".", "0", ".", "0", "."]
    @etb["m"] = ["0", "0", ".", ".", "0", "."]
    @etb["n"] = ["0", "0", ".", "0", "0", "."]
    @etb["o"] = ["0", ".", ".", "0", "0", "."]
    @etb["p"] = ["0", "0", "0", ".", "0", "."]
    @etb["q"] = ["0", "0", "0", "0", "0", "."]
    @etb["r"] = ["0", ".", "0", "0", "0", "."]
    @etb["s"] = [".", "0", "0", ".", "0", "."]
    @etb["t"] = [".", "0", "0", "0", "0", "."]
    @etb["u"] = ["0", ".", ".", ".", "0", "0"]
    @etb["v"] = ["0", ".", "0", ".", "0", "0"]
    @etb["w"] = [".", "0", "0", "0", ".", "0"]
    @etb["x"] = ["0", "0", ".", ".", "0", "0"]
    @etb["y"] = ["0", "0", ".", "0", "0", "0"]
    @etb["z"] = ["0", ".", ".", "0", "0", "0"]
    @etb["!"] = [".", ".", "0", "0", "0", "."]
    @etb["'"] = [".", ".", ".", ".", "0", "."]
    @etb[","] = [".", ".", "0", ".", ".", "."]
    @etb["-"] = [".", ".", ".", ".", "0", "0"]
    @etb["."] = [".", ".", "0", "0", ".","0"]
    @etb["?"] = [".", ".", "0", ".", "0", "0"]
    @etb["Capital"] = [".", ".", ".", ".", ".", "0"]
    @etb[" "] = [".", ".", ".", ".", ".", "."]
  end

end
