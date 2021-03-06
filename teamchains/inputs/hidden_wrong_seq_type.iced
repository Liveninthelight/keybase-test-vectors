description: "seq type on hidden is for visible"

users: {
  "herb": {}
}

teams: {
  cabal : {
    links : [
      { type: "root", members: { owner: ["herb"] } },
      { type : "rotate_key" },
      { type : "rotate_key_hidden" }
      { type : "rotate_key" },
      {
        type : "rotate_key_hidden"
        corruptors : {
          sig3_patch_outer : (outer) ->
            outer.chain_type = 3
            outer
        }
      }
    ]
  }
}

sessions: [
  { loads : [{
    error : true
    error_type_full : "sig3.Sig3Error"
    error_substr : "sig3 error: can only handle type 17 (team private hidden)"
  }]}
]
