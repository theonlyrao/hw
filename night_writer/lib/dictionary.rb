class Dictionary

  attr_reader :etb, :bte_others, :bte_numbers

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
      @etb["."] = [".", ".", "0", "0", ".", "0"]
      @etb["?"] = [".", ".", "0", ".", "0", "0"]
      @etb["Capital"] = [".", ".", ".", ".", ".", "0"]
      @etb[" "] = [".", ".", ".", ".", ".", "."]

    @bte_numbers = Hash.new
      @bte_numbers[[".", "0", ".", "0", "0", "0"]] = ""
      @bte_numbers[[".", "0", "0", "0", ".", "."]] = "0"
      @bte_numbers[["0", ".", ".", ".", ".", "."]] = "1"
      @bte_numbers[["0", ".", "0", ".", ".", "."]] = "2"
      @bte_numbers[["0", "0", ".", ".", ".", "."]] = "3"
      @bte_numbers[["0", "0", ".", "0", ".", "."]] = "4"
      @bte_numbers[["0", ".", ".", "0", ".", "."]] = "5"
      @bte_numbers[["0", "0", "0", ".", ".", "."]] = "6"
      @bte_numbers[["0", "0", "0", "0", ".", "."]] = "7"
      @bte_numbers[["0", ".", "0", "0", ".", "."]] = "8"
      @bte_numbers[[".", "0", "0", ".", ".", "."]] = "9"
      @bte_numbers[[".", ".", ".", ".", ".", "."]] = " "
      @bte_numbers[[".", ".", "0", "0", ".", "0"]] = "."

    @bte_others = Hash.new
      @bte_others[["0", ".", ".", ".", ".", "."]] = "a"
      @bte_others[["0", ".", "0", ".", ".", "."]] = "b"
      @bte_others[["0", "0", ".", ".", ".", "."]] = "c"
      @bte_others[["0", "0", ".", "0", ".", "."]] = "d"
      @bte_others[["0", ".", ".", "0", ".", "."]] = "e"
      @bte_others[["0", "0", "0", ".", ".", "."]] = "f"
      @bte_others[["0", "0", "0", "0", ".", "."]] = "g"
      @bte_others[["0", ".", "0", "0", ".", "."]] = "h"
      @bte_others[[".", "0", "0", ".", ".", "."]] = "i"
      @bte_others[[".", "0", "0", "0", ".", "."]] = "j"
      @bte_others[["0", ".", ".", ".", "0", "."]] = "k"
      @bte_others[["0", ".", "0", ".", "0", "."]] = "l"
      @bte_others[["0", "0", ".", ".", "0", "."]] = "m"
      @bte_others[["0", "0", ".", "0", "0", "."]] = "n"
      @bte_others[["0", ".", ".", "0", "0", "."]] = "o"
      @bte_others[["0", "0", "0", ".", "0", "."]] = "p"
      @bte_others[["0", "0", "0", "0", "0", "."]] = "q"
      @bte_others[["0", ".", "0", "0", "0", "."]] = "r"
      @bte_others[[".", "0", "0", ".", "0", "."]] = "s"
      @bte_others[[".", "0", "0", "0", "0", "."]] = "t"
      @bte_others[["0", ".", ".", ".", "0", "0"]] = "u"
      @bte_others[["0", ".", "0", ".", "0", "0"]] = "v"
      @bte_others[[".", "0", "0", "0", ".", "0"]] = "w"
      @bte_others[["0", "0", ".", ".", "0", "0"]] = "x"
      @bte_others[["0", "0", ".", "0", "0", "0"]] = "y"
      @bte_others[["0", ".", ".", "0", "0", "0"]] = "z"
      @bte_others[[".", ".", "0", "0", "0", "."]] = "!"
      @bte_others[[".", ".", ".", ".", "0", "."]] = "'"
      @bte_others[[".", ".", "0", ".", ".", "."]] = ","
      @bte_others[[".", ".", ".", ".", "0", "0"]] = "-"
      @bte_others[[".", ".", "0", "0", ".", "0"]] = ". "
      @bte_others[[".", ".", "0", ".", "0", "0"]] = "?"
      @bte_others[[".", ".", ".", ".", ".", "0"]] = "Capital"
      @bte_others[[".", ".", ".", ".", ".", "."]] = " "
  end

end
