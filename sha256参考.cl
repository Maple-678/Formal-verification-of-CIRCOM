//    signal input hin[256];
//    signal input inp[512];
//    signal output out[256];

(* function rrot(x, n) { *)
proc rrot(uint256 x, uint256 n; uint256 ret) =
{ true && true }

    (* return ((x >> n) | (x << (32-n))) & 0xFFFFFFFF; *)
    shr tmp0 x n;
    subb dc tmp1 32@uint256 n;
    shl tmp2 x tmp1;
    or tmp3@uint256 tmp0 tmp2;
    and ret@uint256 tmp3 0xFFFFFFFF@uint256;
        
{ true && true }

(* function bsigma0(x) { *)
proc bsigma0(uint256 x; uint256 ret) =
{ true && true }

    (* return rrot(x,2) ^ rrot(x,13) ^ rrot(x,22); *)
    inline rrot(x, 2@uint256, tmp0);
    inline rrot(x, 13@uint256, tmp1);
    xor tmp2@uint256 tmp0 tmp1;
    inline rrot(x, 22@uint256, tmp3);
    xor ret@uint256 tmp2 tmp3;

{ true && true }

(* function bsigma1(x) { *)
proc bsigma1(uint256 x; uint256 ret) =
{ true && true }

    (* return rrot(x,6) ^ rrot(x,11) ^ rrot(x,25); *)
    inline rrot(x, 6@uint256, tmp0);
    inline rrot(x, 11@uint256, tmp1);
    xor tmp2@uint256 tmp0 tmp1;
    inline rrot(x, 25@uint256, tmp3);
    xor ret@uint256 tmp2 tmp3;

{ true && true }

(* function ssigma0(x) { *)
proc ssigma0(uint256 x; uint256 ret) =
{ true && true }

    (* return rrot(x,7) ^ rrot(x,18) ^ (x >> 3); *)
    inline rrot(x, 7@uint256, tmp0);
    inline rrot(x, 18@uint256, tmp1);
    xor tmp2@uint256 tmp0 tmp1;
    shr tmp3 x 3;
    xor ret@uint256 tmp2 tmp3;

{ true && true }

(* function ssigma1(x) { *)
proc ssigma1(uint256 x; uint256 ret) =
{ true && true }
    
    (* return rrot(x,17) ^ rrot(x,19) ^ (x >> 10); *)
    inline rrot(x, 17@uint256, tmp0);
    inline rrot(x, 19@uint256, tmp1);
    xor tmp2@uint256 tmp0 tmp1;
    shrs tmp3 dc x 10;
    xor ret@uint256 tmp2 tmp3;

{ true && true }

(* function Maj(x, y, z) { *)
proc Maj(uint256 x, uint256 y, uint256 z; uint256 ret) =
{ true && true }

    (* return (x&y) ^ (x&z) ^ (y&z); *)
    and tmp0@uint256 x y;
    and tmp1@uint256 x z;
    xor tmp2@uint256 tmp0 tmp1;
    and tmp3@uint256 y z;
    xor ret@uint256 tmp2 tmp3;

{ true && true }

(* function Ch(x, y, z) { *)
proc Ch(uint256 x, uint256 y, uint256 z; uint256 ret) =
{ true && true }

    (* return (x & y) ^ ((0xFFFFFFFF ^x) & z); *)
    and tmp0@uint256 x y;
    xor tmp1@uint256 0xFFFFFFFF@uint256 x;
    and tmp2@uint256 tmp1 z;
    xor ret@uint256 tmp0 tmp2;

{ true && true }



proc main (
uint256 hin_0,uint256 hin_1,uint256 hin_2,uint256 hin_3,
uint256 hin_4,uint256 hin_5,uint256 hin_6,uint256 hin_7,
uint256 hin_8,uint256 hin_9,uint256 hin_10,uint256 hin_11,
uint256 hin_12,uint256 hin_13,uint256 hin_14,uint256 hin_15,
uint256 hin_16,uint256 hin_17,uint256 hin_18,uint256 hin_19,
uint256 hin_20,uint256 hin_21,uint256 hin_22,uint256 hin_23,
uint256 hin_24,uint256 hin_25,uint256 hin_26,uint256 hin_27,
uint256 hin_28,uint256 hin_29,uint256 hin_30,uint256 hin_31,
uint256 hin_32,uint256 hin_33,uint256 hin_34,uint256 hin_35,
uint256 hin_36,uint256 hin_37,uint256 hin_38,uint256 hin_39,
uint256 hin_40,uint256 hin_41,uint256 hin_42,uint256 hin_43,
uint256 hin_44,uint256 hin_45,uint256 hin_46,uint256 hin_47,
uint256 hin_48,uint256 hin_49,uint256 hin_50,uint256 hin_51,
uint256 hin_52,uint256 hin_53,uint256 hin_54,uint256 hin_55,
uint256 hin_56,uint256 hin_57,uint256 hin_58,uint256 hin_59,
uint256 hin_60,uint256 hin_61,uint256 hin_62,uint256 hin_63,
uint256 hin_64,uint256 hin_65,uint256 hin_66,uint256 hin_67,
uint256 hin_68,uint256 hin_69,uint256 hin_70,uint256 hin_71,
uint256 hin_72,uint256 hin_73,uint256 hin_74,uint256 hin_75,
uint256 hin_76,uint256 hin_77,uint256 hin_78,uint256 hin_79,
uint256 hin_80,uint256 hin_81,uint256 hin_82,uint256 hin_83,
uint256 hin_84,uint256 hin_85,uint256 hin_86,uint256 hin_87,
uint256 hin_88,uint256 hin_89,uint256 hin_90,uint256 hin_91,
uint256 hin_92,uint256 hin_93,uint256 hin_94,uint256 hin_95,
uint256 hin_96,uint256 hin_97,uint256 hin_98,uint256 hin_99,
uint256 hin_100,uint256 hin_101,uint256 hin_102,uint256 hin_103,
uint256 hin_104,uint256 hin_105,uint256 hin_106,uint256 hin_107,
uint256 hin_108,uint256 hin_109,uint256 hin_110,uint256 hin_111,
uint256 hin_112,uint256 hin_113,uint256 hin_114,uint256 hin_115,
uint256 hin_116,uint256 hin_117,uint256 hin_118,uint256 hin_119,
uint256 hin_120,uint256 hin_121,uint256 hin_122,uint256 hin_123,
uint256 hin_124,uint256 hin_125,uint256 hin_126,uint256 hin_127,
uint256 hin_128,uint256 hin_129,uint256 hin_130,uint256 hin_131,
uint256 hin_132,uint256 hin_133,uint256 hin_134,uint256 hin_135,
uint256 hin_136,uint256 hin_137,uint256 hin_138,uint256 hin_139,
uint256 hin_140,uint256 hin_141,uint256 hin_142,uint256 hin_143,
uint256 hin_144,uint256 hin_145,uint256 hin_146,uint256 hin_147,
uint256 hin_148,uint256 hin_149,uint256 hin_150,uint256 hin_151,
uint256 hin_152,uint256 hin_153,uint256 hin_154,uint256 hin_155,
uint256 hin_156,uint256 hin_157,uint256 hin_158,uint256 hin_159,
uint256 hin_160,uint256 hin_161,uint256 hin_162,uint256 hin_163,
uint256 hin_164,uint256 hin_165,uint256 hin_166,uint256 hin_167,
uint256 hin_168,uint256 hin_169,uint256 hin_170,uint256 hin_171,
uint256 hin_172,uint256 hin_173,uint256 hin_174,uint256 hin_175,
uint256 hin_176,uint256 hin_177,uint256 hin_178,uint256 hin_179,
uint256 hin_180,uint256 hin_181,uint256 hin_182,uint256 hin_183,
uint256 hin_184,uint256 hin_185,uint256 hin_186,uint256 hin_187,
uint256 hin_188,uint256 hin_189,uint256 hin_190,uint256 hin_191,
uint256 hin_192,uint256 hin_193,uint256 hin_194,uint256 hin_195,
uint256 hin_196,uint256 hin_197,uint256 hin_198,uint256 hin_199,
uint256 hin_200,uint256 hin_201,uint256 hin_202,uint256 hin_203,
uint256 hin_204,uint256 hin_205,uint256 hin_206,uint256 hin_207,
uint256 hin_208,uint256 hin_209,uint256 hin_210,uint256 hin_211,
uint256 hin_212,uint256 hin_213,uint256 hin_214,uint256 hin_215,
uint256 hin_216,uint256 hin_217,uint256 hin_218,uint256 hin_219,
uint256 hin_220,uint256 hin_221,uint256 hin_222,uint256 hin_223,
uint256 hin_224,uint256 hin_225,uint256 hin_226,uint256 hin_227,
uint256 hin_228,uint256 hin_229,uint256 hin_230,uint256 hin_231,
uint256 hin_232,uint256 hin_233,uint256 hin_234,uint256 hin_235,
uint256 hin_236,uint256 hin_237,uint256 hin_238,uint256 hin_239,
uint256 hin_240,uint256 hin_241,uint256 hin_242,uint256 hin_243,
uint256 hin_244,uint256 hin_245,uint256 hin_246,uint256 hin_247,
uint256 hin_248,uint256 hin_249,uint256 hin_250,uint256 hin_251,
uint256 hin_252,uint256 hin_253,uint256 hin_254,uint256 hin_255,
uint256 inp_0,uint256 inp_1,uint256 inp_2,uint256 inp_3,
uint256 inp_4,uint256 inp_5,uint256 inp_6,uint256 inp_7,
uint256 inp_8,uint256 inp_9,uint256 inp_10,uint256 inp_11,
uint256 inp_12,uint256 inp_13,uint256 inp_14,uint256 inp_15,
uint256 inp_16,uint256 inp_17,uint256 inp_18,uint256 inp_19,
uint256 inp_20,uint256 inp_21,uint256 inp_22,uint256 inp_23,
uint256 inp_24,uint256 inp_25,uint256 inp_26,uint256 inp_27,
uint256 inp_28,uint256 inp_29,uint256 inp_30,uint256 inp_31,
uint256 inp_32,uint256 inp_33,uint256 inp_34,uint256 inp_35,
uint256 inp_36,uint256 inp_37,uint256 inp_38,uint256 inp_39,
uint256 inp_40,uint256 inp_41,uint256 inp_42,uint256 inp_43,
uint256 inp_44,uint256 inp_45,uint256 inp_46,uint256 inp_47,
uint256 inp_48,uint256 inp_49,uint256 inp_50,uint256 inp_51,
uint256 inp_52,uint256 inp_53,uint256 inp_54,uint256 inp_55,
uint256 inp_56,uint256 inp_57,uint256 inp_58,uint256 inp_59,
uint256 inp_60,uint256 inp_61,uint256 inp_62,uint256 inp_63,
uint256 inp_64,uint256 inp_65,uint256 inp_66,uint256 inp_67,
uint256 inp_68,uint256 inp_69,uint256 inp_70,uint256 inp_71,
uint256 inp_72,uint256 inp_73,uint256 inp_74,uint256 inp_75,
uint256 inp_76,uint256 inp_77,uint256 inp_78,uint256 inp_79,
uint256 inp_80,uint256 inp_81,uint256 inp_82,uint256 inp_83,
uint256 inp_84,uint256 inp_85,uint256 inp_86,uint256 inp_87,
uint256 inp_88,uint256 inp_89,uint256 inp_90,uint256 inp_91,
uint256 inp_92,uint256 inp_93,uint256 inp_94,uint256 inp_95,
uint256 inp_96,uint256 inp_97,uint256 inp_98,uint256 inp_99,
uint256 inp_100,uint256 inp_101,uint256 inp_102,uint256 inp_103,
uint256 inp_104,uint256 inp_105,uint256 inp_106,uint256 inp_107,
uint256 inp_108,uint256 inp_109,uint256 inp_110,uint256 inp_111,
uint256 inp_112,uint256 inp_113,uint256 inp_114,uint256 inp_115,
uint256 inp_116,uint256 inp_117,uint256 inp_118,uint256 inp_119,
uint256 inp_120,uint256 inp_121,uint256 inp_122,uint256 inp_123,
uint256 inp_124,uint256 inp_125,uint256 inp_126,uint256 inp_127,
uint256 inp_128,uint256 inp_129,uint256 inp_130,uint256 inp_131,
uint256 inp_132,uint256 inp_133,uint256 inp_134,uint256 inp_135,
uint256 inp_136,uint256 inp_137,uint256 inp_138,uint256 inp_139,
uint256 inp_140,uint256 inp_141,uint256 inp_142,uint256 inp_143,
uint256 inp_144,uint256 inp_145,uint256 inp_146,uint256 inp_147,
uint256 inp_148,uint256 inp_149,uint256 inp_150,uint256 inp_151,
uint256 inp_152,uint256 inp_153,uint256 inp_154,uint256 inp_155,
uint256 inp_156,uint256 inp_157,uint256 inp_158,uint256 inp_159,
uint256 inp_160,uint256 inp_161,uint256 inp_162,uint256 inp_163,
uint256 inp_164,uint256 inp_165,uint256 inp_166,uint256 inp_167,
uint256 inp_168,uint256 inp_169,uint256 inp_170,uint256 inp_171,
uint256 inp_172,uint256 inp_173,uint256 inp_174,uint256 inp_175,
uint256 inp_176,uint256 inp_177,uint256 inp_178,uint256 inp_179,
uint256 inp_180,uint256 inp_181,uint256 inp_182,uint256 inp_183,
uint256 inp_184,uint256 inp_185,uint256 inp_186,uint256 inp_187,
uint256 inp_188,uint256 inp_189,uint256 inp_190,uint256 inp_191,
uint256 inp_192,uint256 inp_193,uint256 inp_194,uint256 inp_195,
uint256 inp_196,uint256 inp_197,uint256 inp_198,uint256 inp_199,
uint256 inp_200,uint256 inp_201,uint256 inp_202,uint256 inp_203,
uint256 inp_204,uint256 inp_205,uint256 inp_206,uint256 inp_207,
uint256 inp_208,uint256 inp_209,uint256 inp_210,uint256 inp_211,
uint256 inp_212,uint256 inp_213,uint256 inp_214,uint256 inp_215,
uint256 inp_216,uint256 inp_217,uint256 inp_218,uint256 inp_219,
uint256 inp_220,uint256 inp_221,uint256 inp_222,uint256 inp_223,
uint256 inp_224,uint256 inp_225,uint256 inp_226,uint256 inp_227,
uint256 inp_228,uint256 inp_229,uint256 inp_230,uint256 inp_231,
uint256 inp_232,uint256 inp_233,uint256 inp_234,uint256 inp_235,
uint256 inp_236,uint256 inp_237,uint256 inp_238,uint256 inp_239,
uint256 inp_240,uint256 inp_241,uint256 inp_242,uint256 inp_243,
uint256 inp_244,uint256 inp_245,uint256 inp_246,uint256 inp_247,
uint256 inp_248,uint256 inp_249,uint256 inp_250,uint256 inp_251,
uint256 inp_252,uint256 inp_253,uint256 inp_254,uint256 inp_255,
uint256 inp_256,uint256 inp_257,uint256 inp_258,uint256 inp_259,
uint256 inp_260,uint256 inp_261,uint256 inp_262,uint256 inp_263,
uint256 inp_264,uint256 inp_265,uint256 inp_266,uint256 inp_267,
uint256 inp_268,uint256 inp_269,uint256 inp_270,uint256 inp_271,
uint256 inp_272,uint256 inp_273,uint256 inp_274,uint256 inp_275,
uint256 inp_276,uint256 inp_277,uint256 inp_278,uint256 inp_279,
uint256 inp_280,uint256 inp_281,uint256 inp_282,uint256 inp_283,
uint256 inp_284,uint256 inp_285,uint256 inp_286,uint256 inp_287,
uint256 inp_288,uint256 inp_289,uint256 inp_290,uint256 inp_291,
uint256 inp_292,uint256 inp_293,uint256 inp_294,uint256 inp_295,
uint256 inp_296,uint256 inp_297,uint256 inp_298,uint256 inp_299,
uint256 inp_300,uint256 inp_301,uint256 inp_302,uint256 inp_303,
uint256 inp_304,uint256 inp_305,uint256 inp_306,uint256 inp_307,
uint256 inp_308,uint256 inp_309,uint256 inp_310,uint256 inp_311,
uint256 inp_312,uint256 inp_313,uint256 inp_314,uint256 inp_315,
uint256 inp_316,uint256 inp_317,uint256 inp_318,uint256 inp_319,
uint256 inp_320,uint256 inp_321,uint256 inp_322,uint256 inp_323,
uint256 inp_324,uint256 inp_325,uint256 inp_326,uint256 inp_327,
uint256 inp_328,uint256 inp_329,uint256 inp_330,uint256 inp_331,
uint256 inp_332,uint256 inp_333,uint256 inp_334,uint256 inp_335,
uint256 inp_336,uint256 inp_337,uint256 inp_338,uint256 inp_339,
uint256 inp_340,uint256 inp_341,uint256 inp_342,uint256 inp_343,
uint256 inp_344,uint256 inp_345,uint256 inp_346,uint256 inp_347,
uint256 inp_348,uint256 inp_349,uint256 inp_350,uint256 inp_351,
uint256 inp_352,uint256 inp_353,uint256 inp_354,uint256 inp_355,
uint256 inp_356,uint256 inp_357,uint256 inp_358,uint256 inp_359,
uint256 inp_360,uint256 inp_361,uint256 inp_362,uint256 inp_363,
uint256 inp_364,uint256 inp_365,uint256 inp_366,uint256 inp_367,
uint256 inp_368,uint256 inp_369,uint256 inp_370,uint256 inp_371,
uint256 inp_372,uint256 inp_373,uint256 inp_374,uint256 inp_375,
uint256 inp_376,uint256 inp_377,uint256 inp_378,uint256 inp_379,
uint256 inp_380,uint256 inp_381,uint256 inp_382,uint256 inp_383,
uint256 inp_384,uint256 inp_385,uint256 inp_386,uint256 inp_387,
uint256 inp_388,uint256 inp_389,uint256 inp_390,uint256 inp_391,
uint256 inp_392,uint256 inp_393,uint256 inp_394,uint256 inp_395,
uint256 inp_396,uint256 inp_397,uint256 inp_398,uint256 inp_399,
uint256 inp_400,uint256 inp_401,uint256 inp_402,uint256 inp_403,
uint256 inp_404,uint256 inp_405,uint256 inp_406,uint256 inp_407,
uint256 inp_408,uint256 inp_409,uint256 inp_410,uint256 inp_411,
uint256 inp_412,uint256 inp_413,uint256 inp_414,uint256 inp_415,
uint256 inp_416,uint256 inp_417,uint256 inp_418,uint256 inp_419,
uint256 inp_420,uint256 inp_421,uint256 inp_422,uint256 inp_423,
uint256 inp_424,uint256 inp_425,uint256 inp_426,uint256 inp_427,
uint256 inp_428,uint256 inp_429,uint256 inp_430,uint256 inp_431,
uint256 inp_432,uint256 inp_433,uint256 inp_434,uint256 inp_435,
uint256 inp_436,uint256 inp_437,uint256 inp_438,uint256 inp_439,
uint256 inp_440,uint256 inp_441,uint256 inp_442,uint256 inp_443,
uint256 inp_444,uint256 inp_445,uint256 inp_446,uint256 inp_447,
uint256 inp_448,uint256 inp_449,uint256 inp_450,uint256 inp_451,
uint256 inp_452,uint256 inp_453,uint256 inp_454,uint256 inp_455,
uint256 inp_456,uint256 inp_457,uint256 inp_458,uint256 inp_459,
uint256 inp_460,uint256 inp_461,uint256 inp_462,uint256 inp_463,
uint256 inp_464,uint256 inp_465,uint256 inp_466,uint256 inp_467,
uint256 inp_468,uint256 inp_469,uint256 inp_470,uint256 inp_471,
uint256 inp_472,uint256 inp_473,uint256 inp_474,uint256 inp_475,
uint256 inp_476,uint256 inp_477,uint256 inp_478,uint256 inp_479,
uint256 inp_480,uint256 inp_481,uint256 inp_482,uint256 inp_483,
uint256 inp_484,uint256 inp_485,uint256 inp_486,uint256 inp_487,
uint256 inp_488,uint256 inp_489,uint256 inp_490,uint256 inp_491,
uint256 inp_492,uint256 inp_493,uint256 inp_494,uint256 inp_495,
uint256 inp_496,uint256 inp_497,uint256 inp_498,uint256 inp_499,
uint256 inp_500,uint256 inp_501,uint256 inp_502,uint256 inp_503,
uint256 inp_504,uint256 inp_505,uint256 inp_506,uint256 inp_507,
uint256 inp_508,uint256 inp_509,uint256 inp_510,uint256 inp_511,
uint256 out_0,uint256 out_1,uint256 out_2,uint256 out_3,
uint256 out_4,uint256 out_5,uint256 out_6,uint256 out_7,
uint256 out_8,uint256 out_9,uint256 out_10,uint256 out_11,
uint256 out_12,uint256 out_13,uint256 out_14,uint256 out_15,
uint256 out_16,uint256 out_17,uint256 out_18,uint256 out_19,
uint256 out_20,uint256 out_21,uint256 out_22,uint256 out_23,
uint256 out_24,uint256 out_25,uint256 out_26,uint256 out_27,
uint256 out_28,uint256 out_29,uint256 out_30,uint256 out_31,
uint256 out_32,uint256 out_33,uint256 out_34,uint256 out_35,
uint256 out_36,uint256 out_37,uint256 out_38,uint256 out_39,
uint256 out_40,uint256 out_41,uint256 out_42,uint256 out_43,
uint256 out_44,uint256 out_45,uint256 out_46,uint256 out_47,
uint256 out_48,uint256 out_49,uint256 out_50,uint256 out_51,
uint256 out_52,uint256 out_53,uint256 out_54,uint256 out_55,
uint256 out_56,uint256 out_57,uint256 out_58,uint256 out_59,
uint256 out_60,uint256 out_61,uint256 out_62,uint256 out_63,
uint256 out_64,uint256 out_65,uint256 out_66,uint256 out_67,
uint256 out_68,uint256 out_69,uint256 out_70,uint256 out_71,
uint256 out_72,uint256 out_73,uint256 out_74,uint256 out_75,
uint256 out_76,uint256 out_77,uint256 out_78,uint256 out_79,
uint256 out_80,uint256 out_81,uint256 out_82,uint256 out_83,
uint256 out_84,uint256 out_85,uint256 out_86,uint256 out_87,
uint256 out_88,uint256 out_89,uint256 out_90,uint256 out_91,
uint256 out_92,uint256 out_93,uint256 out_94,uint256 out_95,
uint256 out_96,uint256 out_97,uint256 out_98,uint256 out_99,
uint256 out_100,uint256 out_101,uint256 out_102,uint256 out_103,
uint256 out_104,uint256 out_105,uint256 out_106,uint256 out_107,
uint256 out_108,uint256 out_109,uint256 out_110,uint256 out_111,
uint256 out_112,uint256 out_113,uint256 out_114,uint256 out_115,
uint256 out_116,uint256 out_117,uint256 out_118,uint256 out_119,
uint256 out_120,uint256 out_121,uint256 out_122,uint256 out_123,
uint256 out_124,uint256 out_125,uint256 out_126,uint256 out_127,
uint256 out_128,uint256 out_129,uint256 out_130,uint256 out_131,
uint256 out_132,uint256 out_133,uint256 out_134,uint256 out_135,
uint256 out_136,uint256 out_137,uint256 out_138,uint256 out_139,
uint256 out_140,uint256 out_141,uint256 out_142,uint256 out_143,
uint256 out_144,uint256 out_145,uint256 out_146,uint256 out_147,
uint256 out_148,uint256 out_149,uint256 out_150,uint256 out_151,
uint256 out_152,uint256 out_153,uint256 out_154,uint256 out_155,
uint256 out_156,uint256 out_157,uint256 out_158,uint256 out_159,
uint256 out_160,uint256 out_161,uint256 out_162,uint256 out_163,
uint256 out_164,uint256 out_165,uint256 out_166,uint256 out_167,
uint256 out_168,uint256 out_169,uint256 out_170,uint256 out_171,
uint256 out_172,uint256 out_173,uint256 out_174,uint256 out_175,
uint256 out_176,uint256 out_177,uint256 out_178,uint256 out_179,
uint256 out_180,uint256 out_181,uint256 out_182,uint256 out_183,
uint256 out_184,uint256 out_185,uint256 out_186,uint256 out_187,
uint256 out_188,uint256 out_189,uint256 out_190,uint256 out_191,
uint256 out_192,uint256 out_193,uint256 out_194,uint256 out_195,
uint256 out_196,uint256 out_197,uint256 out_198,uint256 out_199,
uint256 out_200,uint256 out_201,uint256 out_202,uint256 out_203,
uint256 out_204,uint256 out_205,uint256 out_206,uint256 out_207,
uint256 out_208,uint256 out_209,uint256 out_210,uint256 out_211,
uint256 out_212,uint256 out_213,uint256 out_214,uint256 out_215,
uint256 out_216,uint256 out_217,uint256 out_218,uint256 out_219,
uint256 out_220,uint256 out_221,uint256 out_222,uint256 out_223,
uint256 out_224,uint256 out_225,uint256 out_226,uint256 out_227,
uint256 out_228,uint256 out_229,uint256 out_230,uint256 out_231,
uint256 out_232,uint256 out_233,uint256 out_234,uint256 out_235,
uint256 out_236,uint256 out_237,uint256 out_238,uint256 out_239,
uint256 out_240,uint256 out_241,uint256 out_242,uint256 out_243,
uint256 out_244,uint256 out_245,uint256 out_246,uint256 out_247,
uint256 out_248,uint256 out_249,uint256 out_250,uint256 out_251,
uint256 out_252,uint256 out_253,uint256 out_254,uint256 out_255
) =
{ true && true }

    (* var H[8]; *)

    (* var a; *)

    (* var b; *)

    (* var c; *)

    (* var d; *)

    (* var e; *)

    (* var f; *)

    (* var g; *)

    (* var h; *)

    (* var out[256]; *)


    (* for (var i=0; i<8; i++) { *)

        (*== i = 0 ==*)

        (* H[i] = 0; *)
        mov H_0 0@uint256;

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            mov tmp hin_0;
            adds dc H_0 H_0 tmp;

            (*== j = 1 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_1 1;
            adds dc H_0 H_0 tmp;

            (*== j = 2 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_2 2;
            adds dc H_0 H_0 tmp;

            (*== j = 3 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_3 3;
            adds dc H_0 H_0 tmp;

            (*== j = 4 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_4 4;
            adds dc H_0 H_0 tmp;

            (*== j = 5 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_5 5;
            adds dc H_0 H_0 tmp;

            (*== j = 6 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_6 6;
            adds dc H_0 H_0 tmp;

            (*== j = 7 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_7 7;
            adds dc H_0 H_0 tmp;

            (*== j = 8 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_8 8;
            adds dc H_0 H_0 tmp;

            (*== j = 9 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_9 9;
            adds dc H_0 H_0 tmp;

            (*== j = 10 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_10 10;
            adds dc H_0 H_0 tmp;

            (*== j = 11 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_11 11;
            adds dc H_0 H_0 tmp;

            (*== j = 12 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_12 12;
            adds dc H_0 H_0 tmp;

            (*== j = 13 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_13 13;
            adds dc H_0 H_0 tmp;

            (*== j = 14 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_14 14;
            adds dc H_0 H_0 tmp;

            (*== j = 15 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_15 15;
            adds dc H_0 H_0 tmp;

            (*== j = 16 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_16 16;
            adds dc H_0 H_0 tmp;

            (*== j = 17 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_17 17;
            adds dc H_0 H_0 tmp;

            (*== j = 18 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_18 18;
            adds dc H_0 H_0 tmp;

            (*== j = 19 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_19 19;
            adds dc H_0 H_0 tmp;

            (*== j = 20 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_20 20;
            adds dc H_0 H_0 tmp;

            (*== j = 21 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_21 21;
            adds dc H_0 H_0 tmp;

            (*== j = 22 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_22 22;
            adds dc H_0 H_0 tmp;

            (*== j = 23 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_23 23;
            adds dc H_0 H_0 tmp;

            (*== j = 24 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_24 24;
            adds dc H_0 H_0 tmp;

            (*== j = 25 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_25 25;
            adds dc H_0 H_0 tmp;

            (*== j = 26 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_26 26;
            adds dc H_0 H_0 tmp;

            (*== j = 27 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_27 27;
            adds dc H_0 H_0 tmp;

            (*== j = 28 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_28 28;
            adds dc H_0 H_0 tmp;

            (*== j = 29 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_29 29;
            adds dc H_0 H_0 tmp;

            (*== j = 30 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_30 30;
            adds dc H_0 H_0 tmp;

            (*== j = 31 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_31 31;
            adds dc H_0 H_0 tmp;

        (* } *)

        (*== i = 1 ==*)

        (* H[i] = 0; *)
        mov H_1 0@uint256;

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            mov tmp hin_32;
            adds dc H_1 H_1 tmp;

            (*== j = 1 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_33 1;
            adds dc H_1 H_1 tmp;

            (*== j = 2 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_34 2;
            adds dc H_1 H_1 tmp;

            (*== j = 3 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_35 3;
            adds dc H_1 H_1 tmp;

            (*== j = 4 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_36 4;
            adds dc H_1 H_1 tmp;

            (*== j = 5 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_37 5;
            adds dc H_1 H_1 tmp;

            (*== j = 6 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_38 6;
            adds dc H_1 H_1 tmp;

            (*== j = 7 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_39 7;
            adds dc H_1 H_1 tmp;

            (*== j = 8 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_40 8;
            adds dc H_1 H_1 tmp;

            (*== j = 9 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_41 9;
            adds dc H_1 H_1 tmp;

            (*== j = 10 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_42 10;
            adds dc H_1 H_1 tmp;

            (*== j = 11 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_43 11;
            adds dc H_1 H_1 tmp;

            (*== j = 12 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_44 12;
            adds dc H_1 H_1 tmp;

            (*== j = 13 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_45 13;
            adds dc H_1 H_1 tmp;

            (*== j = 14 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_46 14;
            adds dc H_1 H_1 tmp;

            (*== j = 15 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_47 15;
            adds dc H_1 H_1 tmp;

            (*== j = 16 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_48 16;
            adds dc H_1 H_1 tmp;

            (*== j = 17 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_49 17;
            adds dc H_1 H_1 tmp;

            (*== j = 18 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_50 18;
            adds dc H_1 H_1 tmp;

            (*== j = 19 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_51 19;
            adds dc H_1 H_1 tmp;

            (*== j = 20 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_52 20;
            adds dc H_1 H_1 tmp;

            (*== j = 21 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_53 21;
            adds dc H_1 H_1 tmp;

            (*== j = 22 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_54 22;
            adds dc H_1 H_1 tmp;

            (*== j = 23 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_55 23;
            adds dc H_1 H_1 tmp;

            (*== j = 24 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_56 24;
            adds dc H_1 H_1 tmp;

            (*== j = 25 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_57 25;
            adds dc H_1 H_1 tmp;

            (*== j = 26 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_58 26;
            adds dc H_1 H_1 tmp;

            (*== j = 27 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_59 27;
            adds dc H_1 H_1 tmp;

            (*== j = 28 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_60 28;
            adds dc H_1 H_1 tmp;

            (*== j = 29 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_61 29;
            adds dc H_1 H_1 tmp;

            (*== j = 30 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_62 30;
            adds dc H_1 H_1 tmp;

            (*== j = 31 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_63 31;
            adds dc H_1 H_1 tmp;

        (* } *)

        (*== i = 2 ==*)

        (* H[i] = 0; *)
        mov H_2 0@uint256;

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            mov tmp hin_64;
            adds dc H_2 H_2 tmp;

            (*== j = 1 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_65 1;
            adds dc H_2 H_2 tmp;

            (*== j = 2 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_66 2;
            adds dc H_2 H_2 tmp;

            (*== j = 3 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_67 3;
            adds dc H_2 H_2 tmp;

            (*== j = 4 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_68 4;
            adds dc H_2 H_2 tmp;

            (*== j = 5 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_69 5;
            adds dc H_2 H_2 tmp;

            (*== j = 6 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_70 6;
            adds dc H_2 H_2 tmp;

            (*== j = 7 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_71 7;
            adds dc H_2 H_2 tmp;

            (*== j = 8 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_72 8;
            adds dc H_2 H_2 tmp;

            (*== j = 9 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_73 9;
            adds dc H_2 H_2 tmp;

            (*== j = 10 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_74 10;
            adds dc H_2 H_2 tmp;

            (*== j = 11 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_75 11;
            adds dc H_2 H_2 tmp;

            (*== j = 12 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_76 12;
            adds dc H_2 H_2 tmp;

            (*== j = 13 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_77 13;
            adds dc H_2 H_2 tmp;

            (*== j = 14 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_78 14;
            adds dc H_2 H_2 tmp;

            (*== j = 15 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_79 15;
            adds dc H_2 H_2 tmp;

            (*== j = 16 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_80 16;
            adds dc H_2 H_2 tmp;

            (*== j = 17 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_81 17;
            adds dc H_2 H_2 tmp;

            (*== j = 18 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_82 18;
            adds dc H_2 H_2 tmp;

            (*== j = 19 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_83 19;
            adds dc H_2 H_2 tmp;

            (*== j = 20 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_84 20;
            adds dc H_2 H_2 tmp;

            (*== j = 21 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_85 21;
            adds dc H_2 H_2 tmp;

            (*== j = 22 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_86 22;
            adds dc H_2 H_2 tmp;

            (*== j = 23 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_87 23;
            adds dc H_2 H_2 tmp;

            (*== j = 24 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_88 24;
            adds dc H_2 H_2 tmp;

            (*== j = 25 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_89 25;
            adds dc H_2 H_2 tmp;

            (*== j = 26 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_90 26;
            adds dc H_2 H_2 tmp;

            (*== j = 27 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_91 27;
            adds dc H_2 H_2 tmp;

            (*== j = 28 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_92 28;
            adds dc H_2 H_2 tmp;

            (*== j = 29 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_93 29;
            adds dc H_2 H_2 tmp;

            (*== j = 30 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_94 30;
            adds dc H_2 H_2 tmp;

            (*== j = 31 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_95 31;
            adds dc H_2 H_2 tmp;

        (* } *)

        (*== i = 3 ==*)

        (* H[i] = 0; *)
        mov H_3 0@uint256;

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            mov tmp hin_96;
            adds dc H_3 H_3 tmp;

            (*== j = 1 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_97 1;
            adds dc H_3 H_3 tmp;

            (*== j = 2 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_98 2;
            adds dc H_3 H_3 tmp;

            (*== j = 3 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_99 3;
            adds dc H_3 H_3 tmp;

            (*== j = 4 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_100 4;
            adds dc H_3 H_3 tmp;

            (*== j = 5 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_101 5;
            adds dc H_3 H_3 tmp;

            (*== j = 6 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_102 6;
            adds dc H_3 H_3 tmp;

            (*== j = 7 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_103 7;
            adds dc H_3 H_3 tmp;

            (*== j = 8 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_104 8;
            adds dc H_3 H_3 tmp;

            (*== j = 9 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_105 9;
            adds dc H_3 H_3 tmp;

            (*== j = 10 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_106 10;
            adds dc H_3 H_3 tmp;

            (*== j = 11 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_107 11;
            adds dc H_3 H_3 tmp;

            (*== j = 12 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_108 12;
            adds dc H_3 H_3 tmp;

            (*== j = 13 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_109 13;
            adds dc H_3 H_3 tmp;

            (*== j = 14 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_110 14;
            adds dc H_3 H_3 tmp;

            (*== j = 15 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_111 15;
            adds dc H_3 H_3 tmp;

            (*== j = 16 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_112 16;
            adds dc H_3 H_3 tmp;

            (*== j = 17 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_113 17;
            adds dc H_3 H_3 tmp;

            (*== j = 18 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_114 18;
            adds dc H_3 H_3 tmp;

            (*== j = 19 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_115 19;
            adds dc H_3 H_3 tmp;

            (*== j = 20 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_116 20;
            adds dc H_3 H_3 tmp;

            (*== j = 21 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_117 21;
            adds dc H_3 H_3 tmp;

            (*== j = 22 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_118 22;
            adds dc H_3 H_3 tmp;

            (*== j = 23 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_119 23;
            adds dc H_3 H_3 tmp;

            (*== j = 24 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_120 24;
            adds dc H_3 H_3 tmp;

            (*== j = 25 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_121 25;
            adds dc H_3 H_3 tmp;

            (*== j = 26 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_122 26;
            adds dc H_3 H_3 tmp;

            (*== j = 27 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_123 27;
            adds dc H_3 H_3 tmp;

            (*== j = 28 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_124 28;
            adds dc H_3 H_3 tmp;

            (*== j = 29 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_125 29;
            adds dc H_3 H_3 tmp;

            (*== j = 30 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_126 30;
            adds dc H_3 H_3 tmp;

            (*== j = 31 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_127 31;
            adds dc H_3 H_3 tmp;

        (* } *)

        (*== i = 4 ==*)

        (* H[i] = 0; *)
        mov H_4 0@uint256;

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            mov tmp hin_128;
            adds dc H_4 H_4 tmp;

            (*== j = 1 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_129 1;
            adds dc H_4 H_4 tmp;

            (*== j = 2 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_130 2;
            adds dc H_4 H_4 tmp;

            (*== j = 3 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_131 3;
            adds dc H_4 H_4 tmp;

            (*== j = 4 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_132 4;
            adds dc H_4 H_4 tmp;

            (*== j = 5 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_133 5;
            adds dc H_4 H_4 tmp;

            (*== j = 6 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_134 6;
            adds dc H_4 H_4 tmp;

            (*== j = 7 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_135 7;
            adds dc H_4 H_4 tmp;

            (*== j = 8 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_136 8;
            adds dc H_4 H_4 tmp;

            (*== j = 9 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_137 9;
            adds dc H_4 H_4 tmp;

            (*== j = 10 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_138 10;
            adds dc H_4 H_4 tmp;

            (*== j = 11 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_139 11;
            adds dc H_4 H_4 tmp;

            (*== j = 12 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_140 12;
            adds dc H_4 H_4 tmp;

            (*== j = 13 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_141 13;
            adds dc H_4 H_4 tmp;

            (*== j = 14 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_142 14;
            adds dc H_4 H_4 tmp;

            (*== j = 15 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_143 15;
            adds dc H_4 H_4 tmp;

            (*== j = 16 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_144 16;
            adds dc H_4 H_4 tmp;

            (*== j = 17 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_145 17;
            adds dc H_4 H_4 tmp;

            (*== j = 18 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_146 18;
            adds dc H_4 H_4 tmp;

            (*== j = 19 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_147 19;
            adds dc H_4 H_4 tmp;

            (*== j = 20 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_148 20;
            adds dc H_4 H_4 tmp;

            (*== j = 21 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_149 21;
            adds dc H_4 H_4 tmp;

            (*== j = 22 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_150 22;
            adds dc H_4 H_4 tmp;

            (*== j = 23 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_151 23;
            adds dc H_4 H_4 tmp;

            (*== j = 24 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_152 24;
            adds dc H_4 H_4 tmp;

            (*== j = 25 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_153 25;
            adds dc H_4 H_4 tmp;

            (*== j = 26 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_154 26;
            adds dc H_4 H_4 tmp;

            (*== j = 27 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_155 27;
            adds dc H_4 H_4 tmp;

            (*== j = 28 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_156 28;
            adds dc H_4 H_4 tmp;

            (*== j = 29 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_157 29;
            adds dc H_4 H_4 tmp;

            (*== j = 30 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_158 30;
            adds dc H_4 H_4 tmp;

            (*== j = 31 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_159 31;
            adds dc H_4 H_4 tmp;

        (* } *)

        (*== i = 5 ==*)

        (* H[i] = 0; *)
        mov H_5 0@uint256;

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            mov tmp hin_160;
            adds dc H_5 H_5 tmp;

            (*== j = 1 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_161 1;
            adds dc H_5 H_5 tmp;

            (*== j = 2 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_162 2;
            adds dc H_5 H_5 tmp;

            (*== j = 3 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_163 3;
            adds dc H_5 H_5 tmp;

            (*== j = 4 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_164 4;
            adds dc H_5 H_5 tmp;

            (*== j = 5 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_165 5;
            adds dc H_5 H_5 tmp;

            (*== j = 6 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_166 6;
            adds dc H_5 H_5 tmp;

            (*== j = 7 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_167 7;
            adds dc H_5 H_5 tmp;

            (*== j = 8 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_168 8;
            adds dc H_5 H_5 tmp;

            (*== j = 9 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_169 9;
            adds dc H_5 H_5 tmp;

            (*== j = 10 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_170 10;
            adds dc H_5 H_5 tmp;

            (*== j = 11 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_171 11;
            adds dc H_5 H_5 tmp;

            (*== j = 12 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_172 12;
            adds dc H_5 H_5 tmp;

            (*== j = 13 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_173 13;
            adds dc H_5 H_5 tmp;

            (*== j = 14 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_174 14;
            adds dc H_5 H_5 tmp;

            (*== j = 15 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_175 15;
            adds dc H_5 H_5 tmp;

            (*== j = 16 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_176 16;
            adds dc H_5 H_5 tmp;

            (*== j = 17 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_177 17;
            adds dc H_5 H_5 tmp;

            (*== j = 18 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_178 18;
            adds dc H_5 H_5 tmp;

            (*== j = 19 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_179 19;
            adds dc H_5 H_5 tmp;

            (*== j = 20 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_180 20;
            adds dc H_5 H_5 tmp;

            (*== j = 21 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_181 21;
            adds dc H_5 H_5 tmp;

            (*== j = 22 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_182 22;
            adds dc H_5 H_5 tmp;

            (*== j = 23 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_183 23;
            adds dc H_5 H_5 tmp;

            (*== j = 24 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_184 24;
            adds dc H_5 H_5 tmp;

            (*== j = 25 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_185 25;
            adds dc H_5 H_5 tmp;

            (*== j = 26 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_186 26;
            adds dc H_5 H_5 tmp;

            (*== j = 27 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_187 27;
            adds dc H_5 H_5 tmp;

            (*== j = 28 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_188 28;
            adds dc H_5 H_5 tmp;

            (*== j = 29 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_189 29;
            adds dc H_5 H_5 tmp;

            (*== j = 30 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_190 30;
            adds dc H_5 H_5 tmp;

            (*== j = 31 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_191 31;
            adds dc H_5 H_5 tmp;

        (* } *)

        (*== i = 6 ==*)

        (* H[i] = 0; *)
        mov H_6 0@uint256;

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            mov tmp hin_192;
            adds dc H_6 H_6 tmp;

            (*== j = 1 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_193 1;
            adds dc H_6 H_6 tmp;

            (*== j = 2 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_194 2;
            adds dc H_6 H_6 tmp;

            (*== j = 3 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_195 3;
            adds dc H_6 H_6 tmp;

            (*== j = 4 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_196 4;
            adds dc H_6 H_6 tmp;

            (*== j = 5 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_197 5;
            adds dc H_6 H_6 tmp;

            (*== j = 6 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_198 6;
            adds dc H_6 H_6 tmp;

            (*== j = 7 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_199 7;
            adds dc H_6 H_6 tmp;

            (*== j = 8 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_200 8;
            adds dc H_6 H_6 tmp;

            (*== j = 9 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_201 9;
            adds dc H_6 H_6 tmp;

            (*== j = 10 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_202 10;
            adds dc H_6 H_6 tmp;

            (*== j = 11 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_203 11;
            adds dc H_6 H_6 tmp;

            (*== j = 12 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_204 12;
            adds dc H_6 H_6 tmp;

            (*== j = 13 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_205 13;
            adds dc H_6 H_6 tmp;

            (*== j = 14 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_206 14;
            adds dc H_6 H_6 tmp;

            (*== j = 15 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_207 15;
            adds dc H_6 H_6 tmp;

            (*== j = 16 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_208 16;
            adds dc H_6 H_6 tmp;

            (*== j = 17 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_209 17;
            adds dc H_6 H_6 tmp;

            (*== j = 18 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_210 18;
            adds dc H_6 H_6 tmp;

            (*== j = 19 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_211 19;
            adds dc H_6 H_6 tmp;

            (*== j = 20 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_212 20;
            adds dc H_6 H_6 tmp;

            (*== j = 21 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_213 21;
            adds dc H_6 H_6 tmp;

            (*== j = 22 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_214 22;
            adds dc H_6 H_6 tmp;

            (*== j = 23 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_215 23;
            adds dc H_6 H_6 tmp;

            (*== j = 24 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_216 24;
            adds dc H_6 H_6 tmp;

            (*== j = 25 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_217 25;
            adds dc H_6 H_6 tmp;

            (*== j = 26 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_218 26;
            adds dc H_6 H_6 tmp;

            (*== j = 27 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_219 27;
            adds dc H_6 H_6 tmp;

            (*== j = 28 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_220 28;
            adds dc H_6 H_6 tmp;

            (*== j = 29 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_221 29;
            adds dc H_6 H_6 tmp;

            (*== j = 30 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_222 30;
            adds dc H_6 H_6 tmp;

            (*== j = 31 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_223 31;
            adds dc H_6 H_6 tmp;

        (* } *)

        (*== i = 7 ==*)

        (* H[i] = 0; *)
        mov H_7 0@uint256;

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            mov tmp hin_224;
            adds dc H_7 H_7 tmp;

            (*== j = 1 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_225 1;
            adds dc H_7 H_7 tmp;

            (*== j = 2 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_226 2;
            adds dc H_7 H_7 tmp;

            (*== j = 3 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_227 3;
            adds dc H_7 H_7 tmp;

            (*== j = 4 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_228 4;
            adds dc H_7 H_7 tmp;

            (*== j = 5 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_229 5;
            adds dc H_7 H_7 tmp;

            (*== j = 6 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_230 6;
            adds dc H_7 H_7 tmp;

            (*== j = 7 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_231 7;
            adds dc H_7 H_7 tmp;

            (*== j = 8 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_232 8;
            adds dc H_7 H_7 tmp;

            (*== j = 9 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_233 9;
            adds dc H_7 H_7 tmp;

            (*== j = 10 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_234 10;
            adds dc H_7 H_7 tmp;

            (*== j = 11 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_235 11;
            adds dc H_7 H_7 tmp;

            (*== j = 12 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_236 12;
            adds dc H_7 H_7 tmp;

            (*== j = 13 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_237 13;
            adds dc H_7 H_7 tmp;

            (*== j = 14 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_238 14;
            adds dc H_7 H_7 tmp;

            (*== j = 15 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_239 15;
            adds dc H_7 H_7 tmp;

            (*== j = 16 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_240 16;
            adds dc H_7 H_7 tmp;

            (*== j = 17 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_241 17;
            adds dc H_7 H_7 tmp;

            (*== j = 18 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_242 18;
            adds dc H_7 H_7 tmp;

            (*== j = 19 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_243 19;
            adds dc H_7 H_7 tmp;

            (*== j = 20 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_244 20;
            adds dc H_7 H_7 tmp;

            (*== j = 21 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_245 21;
            adds dc H_7 H_7 tmp;

            (*== j = 22 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_246 22;
            adds dc H_7 H_7 tmp;

            (*== j = 23 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_247 23;
            adds dc H_7 H_7 tmp;

            (*== j = 24 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_248 24;
            adds dc H_7 H_7 tmp;

            (*== j = 25 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_249 25;
            adds dc H_7 H_7 tmp;

            (*== j = 26 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_250 26;
            adds dc H_7 H_7 tmp;

            (*== j = 27 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_251 27;
            adds dc H_7 H_7 tmp;

            (*== j = 28 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_252 28;
            adds dc H_7 H_7 tmp;

            (*== j = 29 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_253 29;
            adds dc H_7 H_7 tmp;

            (*== j = 30 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_254 30;
            adds dc H_7 H_7 tmp;

            (*== j = 31 ==*)

            (* H[i] += hin[i*32+j] << j; *)
            (* that is, H[i] = H[i] + hin[i*32+j] << j; *)
            shls dc tmp hin_255 31;
            adds dc H_7 H_7 tmp;

        (* } *)

    (* } *)


    (* a=H[0]; *)
    mov a H_0;

    (* b=H[1]; *)
    mov b H_1;

    (* c=H[2]; *)
    mov c H_2;

    (* d=H[3]; *)
    mov d H_3;

    (* e=H[4]; *)
    mov e H_4;

    (* f=H[5]; *)
    mov f H_5;

    (* g=H[6]; *)
    mov g H_6;

    (* h=H[7]; *)
    mov h H_7;

    (* var w[64]; *)

    (* var T1; *)

    (* var T2; *)


    (* for (var i=0; i<64; i++) { *)

        (*== i = 0 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_0 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_31;
                adds dc w_0 w_0 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_30 1;
                adds dc w_0 w_0 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_29 2;
                adds dc w_0 w_0 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_28 3;
                adds dc w_0 w_0 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_27 4;
                adds dc w_0 w_0 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_26 5;
                adds dc w_0 w_0 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_25 6;
                adds dc w_0 w_0 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_24 7;
                adds dc w_0 w_0 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_23 8;
                adds dc w_0 w_0 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_22 9;
                adds dc w_0 w_0 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_21 10;
                adds dc w_0 w_0 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_20 11;
                adds dc w_0 w_0 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_19 12;
                adds dc w_0 w_0 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_18 13;
                adds dc w_0 w_0 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_17 14;
                adds dc w_0 w_0 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_16 15;
                adds dc w_0 w_0 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_15 16;
                adds dc w_0 w_0 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_14 17;
                adds dc w_0 w_0 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_13 18;
                adds dc w_0 w_0 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_12 19;
                adds dc w_0 w_0 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_11 20;
                adds dc w_0 w_0 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_10 21;
                adds dc w_0 w_0 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_9 22;
                adds dc w_0 w_0 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_8 23;
                adds dc w_0 w_0 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_7 24;
                adds dc w_0 w_0 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_6 25;
                adds dc w_0 w_0 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_5 26;
                adds dc w_0 w_0 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_4 27;
                adds dc w_0 w_0 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_3 28;
                adds dc w_0 w_0 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_2 29;
                adds dc w_0 w_0 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_1 30;
                adds dc w_0 w_0 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_0 31;
                adds dc w_0 w_0 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x428a2f98@uint256;
        adds dc tmp5 tmp4 w_0;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 1 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_1 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_63;
                adds dc w_1 w_1 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_62 1;
                adds dc w_1 w_1 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_61 2;
                adds dc w_1 w_1 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_60 3;
                adds dc w_1 w_1 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_59 4;
                adds dc w_1 w_1 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_58 5;
                adds dc w_1 w_1 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_57 6;
                adds dc w_1 w_1 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_56 7;
                adds dc w_1 w_1 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_55 8;
                adds dc w_1 w_1 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_54 9;
                adds dc w_1 w_1 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_53 10;
                adds dc w_1 w_1 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_52 11;
                adds dc w_1 w_1 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_51 12;
                adds dc w_1 w_1 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_50 13;
                adds dc w_1 w_1 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_49 14;
                adds dc w_1 w_1 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_48 15;
                adds dc w_1 w_1 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_47 16;
                adds dc w_1 w_1 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_46 17;
                adds dc w_1 w_1 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_45 18;
                adds dc w_1 w_1 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_44 19;
                adds dc w_1 w_1 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_43 20;
                adds dc w_1 w_1 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_42 21;
                adds dc w_1 w_1 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_41 22;
                adds dc w_1 w_1 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_40 23;
                adds dc w_1 w_1 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_39 24;
                adds dc w_1 w_1 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_38 25;
                adds dc w_1 w_1 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_37 26;
                adds dc w_1 w_1 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_36 27;
                adds dc w_1 w_1 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_35 28;
                adds dc w_1 w_1 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_34 29;
                adds dc w_1 w_1 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_33 30;
                adds dc w_1 w_1 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_32 31;
                adds dc w_1 w_1 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x71374491@uint256;
        adds dc tmp5 tmp4 w_1;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 2 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_2 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_95;
                adds dc w_2 w_2 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_94 1;
                adds dc w_2 w_2 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_93 2;
                adds dc w_2 w_2 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_92 3;
                adds dc w_2 w_2 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_91 4;
                adds dc w_2 w_2 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_90 5;
                adds dc w_2 w_2 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_89 6;
                adds dc w_2 w_2 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_88 7;
                adds dc w_2 w_2 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_87 8;
                adds dc w_2 w_2 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_86 9;
                adds dc w_2 w_2 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_85 10;
                adds dc w_2 w_2 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_84 11;
                adds dc w_2 w_2 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_83 12;
                adds dc w_2 w_2 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_82 13;
                adds dc w_2 w_2 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_81 14;
                adds dc w_2 w_2 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_80 15;
                adds dc w_2 w_2 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_79 16;
                adds dc w_2 w_2 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_78 17;
                adds dc w_2 w_2 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_77 18;
                adds dc w_2 w_2 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_76 19;
                adds dc w_2 w_2 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_75 20;
                adds dc w_2 w_2 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_74 21;
                adds dc w_2 w_2 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_73 22;
                adds dc w_2 w_2 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_72 23;
                adds dc w_2 w_2 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_71 24;
                adds dc w_2 w_2 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_70 25;
                adds dc w_2 w_2 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_69 26;
                adds dc w_2 w_2 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_68 27;
                adds dc w_2 w_2 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_67 28;
                adds dc w_2 w_2 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_66 29;
                adds dc w_2 w_2 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_65 30;
                adds dc w_2 w_2 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_64 31;
                adds dc w_2 w_2 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xb5c0fbcf@uint256;
        adds dc tmp5 tmp4 w_2;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 3 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_3 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_127;
                adds dc w_3 w_3 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_126 1;
                adds dc w_3 w_3 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_125 2;
                adds dc w_3 w_3 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_124 3;
                adds dc w_3 w_3 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_123 4;
                adds dc w_3 w_3 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_122 5;
                adds dc w_3 w_3 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_121 6;
                adds dc w_3 w_3 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_120 7;
                adds dc w_3 w_3 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_119 8;
                adds dc w_3 w_3 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_118 9;
                adds dc w_3 w_3 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_117 10;
                adds dc w_3 w_3 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_116 11;
                adds dc w_3 w_3 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_115 12;
                adds dc w_3 w_3 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_114 13;
                adds dc w_3 w_3 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_113 14;
                adds dc w_3 w_3 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_112 15;
                adds dc w_3 w_3 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_111 16;
                adds dc w_3 w_3 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_110 17;
                adds dc w_3 w_3 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_109 18;
                adds dc w_3 w_3 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_108 19;
                adds dc w_3 w_3 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_107 20;
                adds dc w_3 w_3 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_106 21;
                adds dc w_3 w_3 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_105 22;
                adds dc w_3 w_3 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_104 23;
                adds dc w_3 w_3 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_103 24;
                adds dc w_3 w_3 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_102 25;
                adds dc w_3 w_3 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_101 26;
                adds dc w_3 w_3 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_100 27;
                adds dc w_3 w_3 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_99 28;
                adds dc w_3 w_3 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_98 29;
                adds dc w_3 w_3 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_97 30;
                adds dc w_3 w_3 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_96 31;
                adds dc w_3 w_3 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xe9b5dba5@uint256;
        adds dc tmp5 tmp4 w_3;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 4 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_4 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_159;
                adds dc w_4 w_4 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_158 1;
                adds dc w_4 w_4 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_157 2;
                adds dc w_4 w_4 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_156 3;
                adds dc w_4 w_4 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_155 4;
                adds dc w_4 w_4 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_154 5;
                adds dc w_4 w_4 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_153 6;
                adds dc w_4 w_4 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_152 7;
                adds dc w_4 w_4 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_151 8;
                adds dc w_4 w_4 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_150 9;
                adds dc w_4 w_4 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_149 10;
                adds dc w_4 w_4 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_148 11;
                adds dc w_4 w_4 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_147 12;
                adds dc w_4 w_4 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_146 13;
                adds dc w_4 w_4 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_145 14;
                adds dc w_4 w_4 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_144 15;
                adds dc w_4 w_4 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_143 16;
                adds dc w_4 w_4 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_142 17;
                adds dc w_4 w_4 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_141 18;
                adds dc w_4 w_4 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_140 19;
                adds dc w_4 w_4 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_139 20;
                adds dc w_4 w_4 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_138 21;
                adds dc w_4 w_4 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_137 22;
                adds dc w_4 w_4 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_136 23;
                adds dc w_4 w_4 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_135 24;
                adds dc w_4 w_4 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_134 25;
                adds dc w_4 w_4 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_133 26;
                adds dc w_4 w_4 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_132 27;
                adds dc w_4 w_4 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_131 28;
                adds dc w_4 w_4 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_130 29;
                adds dc w_4 w_4 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_129 30;
                adds dc w_4 w_4 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_128 31;
                adds dc w_4 w_4 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x3956c25b@uint256;
        adds dc tmp5 tmp4 w_4;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 5 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_5 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_191;
                adds dc w_5 w_5 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_190 1;
                adds dc w_5 w_5 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_189 2;
                adds dc w_5 w_5 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_188 3;
                adds dc w_5 w_5 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_187 4;
                adds dc w_5 w_5 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_186 5;
                adds dc w_5 w_5 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_185 6;
                adds dc w_5 w_5 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_184 7;
                adds dc w_5 w_5 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_183 8;
                adds dc w_5 w_5 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_182 9;
                adds dc w_5 w_5 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_181 10;
                adds dc w_5 w_5 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_180 11;
                adds dc w_5 w_5 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_179 12;
                adds dc w_5 w_5 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_178 13;
                adds dc w_5 w_5 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_177 14;
                adds dc w_5 w_5 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_176 15;
                adds dc w_5 w_5 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_175 16;
                adds dc w_5 w_5 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_174 17;
                adds dc w_5 w_5 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_173 18;
                adds dc w_5 w_5 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_172 19;
                adds dc w_5 w_5 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_171 20;
                adds dc w_5 w_5 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_170 21;
                adds dc w_5 w_5 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_169 22;
                adds dc w_5 w_5 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_168 23;
                adds dc w_5 w_5 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_167 24;
                adds dc w_5 w_5 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_166 25;
                adds dc w_5 w_5 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_165 26;
                adds dc w_5 w_5 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_164 27;
                adds dc w_5 w_5 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_163 28;
                adds dc w_5 w_5 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_162 29;
                adds dc w_5 w_5 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_161 30;
                adds dc w_5 w_5 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_160 31;
                adds dc w_5 w_5 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x59f111f1@uint256;
        adds dc tmp5 tmp4 w_5;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 6 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_6 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_223;
                adds dc w_6 w_6 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_222 1;
                adds dc w_6 w_6 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_221 2;
                adds dc w_6 w_6 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_220 3;
                adds dc w_6 w_6 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_219 4;
                adds dc w_6 w_6 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_218 5;
                adds dc w_6 w_6 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_217 6;
                adds dc w_6 w_6 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_216 7;
                adds dc w_6 w_6 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_215 8;
                adds dc w_6 w_6 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_214 9;
                adds dc w_6 w_6 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_213 10;
                adds dc w_6 w_6 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_212 11;
                adds dc w_6 w_6 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_211 12;
                adds dc w_6 w_6 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_210 13;
                adds dc w_6 w_6 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_209 14;
                adds dc w_6 w_6 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_208 15;
                adds dc w_6 w_6 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_207 16;
                adds dc w_6 w_6 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_206 17;
                adds dc w_6 w_6 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_205 18;
                adds dc w_6 w_6 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_204 19;
                adds dc w_6 w_6 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_203 20;
                adds dc w_6 w_6 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_202 21;
                adds dc w_6 w_6 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_201 22;
                adds dc w_6 w_6 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_200 23;
                adds dc w_6 w_6 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_199 24;
                adds dc w_6 w_6 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_198 25;
                adds dc w_6 w_6 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_197 26;
                adds dc w_6 w_6 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_196 27;
                adds dc w_6 w_6 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_195 28;
                adds dc w_6 w_6 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_194 29;
                adds dc w_6 w_6 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_193 30;
                adds dc w_6 w_6 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_192 31;
                adds dc w_6 w_6 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x923f82a4@uint256;
        adds dc tmp5 tmp4 w_6;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 7 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_7 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_255;
                adds dc w_7 w_7 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_254 1;
                adds dc w_7 w_7 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_253 2;
                adds dc w_7 w_7 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_252 3;
                adds dc w_7 w_7 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_251 4;
                adds dc w_7 w_7 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_250 5;
                adds dc w_7 w_7 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_249 6;
                adds dc w_7 w_7 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_248 7;
                adds dc w_7 w_7 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_247 8;
                adds dc w_7 w_7 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_246 9;
                adds dc w_7 w_7 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_245 10;
                adds dc w_7 w_7 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_244 11;
                adds dc w_7 w_7 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_243 12;
                adds dc w_7 w_7 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_242 13;
                adds dc w_7 w_7 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_241 14;
                adds dc w_7 w_7 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_240 15;
                adds dc w_7 w_7 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_239 16;
                adds dc w_7 w_7 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_238 17;
                adds dc w_7 w_7 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_237 18;
                adds dc w_7 w_7 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_236 19;
                adds dc w_7 w_7 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_235 20;
                adds dc w_7 w_7 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_234 21;
                adds dc w_7 w_7 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_233 22;
                adds dc w_7 w_7 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_232 23;
                adds dc w_7 w_7 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_231 24;
                adds dc w_7 w_7 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_230 25;
                adds dc w_7 w_7 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_229 26;
                adds dc w_7 w_7 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_228 27;
                adds dc w_7 w_7 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_227 28;
                adds dc w_7 w_7 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_226 29;
                adds dc w_7 w_7 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_225 30;
                adds dc w_7 w_7 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_224 31;
                adds dc w_7 w_7 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xab1c5ed5@uint256;
        adds dc tmp5 tmp4 w_7;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 8 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_8 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_287;
                adds dc w_8 w_8 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_286 1;
                adds dc w_8 w_8 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_285 2;
                adds dc w_8 w_8 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_284 3;
                adds dc w_8 w_8 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_283 4;
                adds dc w_8 w_8 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_282 5;
                adds dc w_8 w_8 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_281 6;
                adds dc w_8 w_8 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_280 7;
                adds dc w_8 w_8 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_279 8;
                adds dc w_8 w_8 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_278 9;
                adds dc w_8 w_8 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_277 10;
                adds dc w_8 w_8 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_276 11;
                adds dc w_8 w_8 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_275 12;
                adds dc w_8 w_8 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_274 13;
                adds dc w_8 w_8 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_273 14;
                adds dc w_8 w_8 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_272 15;
                adds dc w_8 w_8 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_271 16;
                adds dc w_8 w_8 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_270 17;
                adds dc w_8 w_8 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_269 18;
                adds dc w_8 w_8 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_268 19;
                adds dc w_8 w_8 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_267 20;
                adds dc w_8 w_8 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_266 21;
                adds dc w_8 w_8 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_265 22;
                adds dc w_8 w_8 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_264 23;
                adds dc w_8 w_8 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_263 24;
                adds dc w_8 w_8 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_262 25;
                adds dc w_8 w_8 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_261 26;
                adds dc w_8 w_8 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_260 27;
                adds dc w_8 w_8 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_259 28;
                adds dc w_8 w_8 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_258 29;
                adds dc w_8 w_8 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_257 30;
                adds dc w_8 w_8 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_256 31;
                adds dc w_8 w_8 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xd807aa98@uint256;
        adds dc tmp5 tmp4 w_8;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 9 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_9 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_319;
                adds dc w_9 w_9 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_318 1;
                adds dc w_9 w_9 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_317 2;
                adds dc w_9 w_9 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_316 3;
                adds dc w_9 w_9 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_315 4;
                adds dc w_9 w_9 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_314 5;
                adds dc w_9 w_9 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_313 6;
                adds dc w_9 w_9 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_312 7;
                adds dc w_9 w_9 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_311 8;
                adds dc w_9 w_9 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_310 9;
                adds dc w_9 w_9 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_309 10;
                adds dc w_9 w_9 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_308 11;
                adds dc w_9 w_9 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_307 12;
                adds dc w_9 w_9 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_306 13;
                adds dc w_9 w_9 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_305 14;
                adds dc w_9 w_9 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_304 15;
                adds dc w_9 w_9 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_303 16;
                adds dc w_9 w_9 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_302 17;
                adds dc w_9 w_9 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_301 18;
                adds dc w_9 w_9 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_300 19;
                adds dc w_9 w_9 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_299 20;
                adds dc w_9 w_9 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_298 21;
                adds dc w_9 w_9 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_297 22;
                adds dc w_9 w_9 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_296 23;
                adds dc w_9 w_9 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_295 24;
                adds dc w_9 w_9 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_294 25;
                adds dc w_9 w_9 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_293 26;
                adds dc w_9 w_9 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_292 27;
                adds dc w_9 w_9 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_291 28;
                adds dc w_9 w_9 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_290 29;
                adds dc w_9 w_9 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_289 30;
                adds dc w_9 w_9 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_288 31;
                adds dc w_9 w_9 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x12835b01@uint256;
        adds dc tmp5 tmp4 w_9;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 10 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_10 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_351;
                adds dc w_10 w_10 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_350 1;
                adds dc w_10 w_10 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_349 2;
                adds dc w_10 w_10 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_348 3;
                adds dc w_10 w_10 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_347 4;
                adds dc w_10 w_10 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_346 5;
                adds dc w_10 w_10 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_345 6;
                adds dc w_10 w_10 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_344 7;
                adds dc w_10 w_10 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_343 8;
                adds dc w_10 w_10 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_342 9;
                adds dc w_10 w_10 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_341 10;
                adds dc w_10 w_10 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_340 11;
                adds dc w_10 w_10 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_339 12;
                adds dc w_10 w_10 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_338 13;
                adds dc w_10 w_10 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_337 14;
                adds dc w_10 w_10 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_336 15;
                adds dc w_10 w_10 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_335 16;
                adds dc w_10 w_10 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_334 17;
                adds dc w_10 w_10 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_333 18;
                adds dc w_10 w_10 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_332 19;
                adds dc w_10 w_10 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_331 20;
                adds dc w_10 w_10 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_330 21;
                adds dc w_10 w_10 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_329 22;
                adds dc w_10 w_10 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_328 23;
                adds dc w_10 w_10 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_327 24;
                adds dc w_10 w_10 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_326 25;
                adds dc w_10 w_10 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_325 26;
                adds dc w_10 w_10 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_324 27;
                adds dc w_10 w_10 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_323 28;
                adds dc w_10 w_10 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_322 29;
                adds dc w_10 w_10 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_321 30;
                adds dc w_10 w_10 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_320 31;
                adds dc w_10 w_10 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x243185be@uint256;
        adds dc tmp5 tmp4 w_10;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 11 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_11 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_383;
                adds dc w_11 w_11 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_382 1;
                adds dc w_11 w_11 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_381 2;
                adds dc w_11 w_11 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_380 3;
                adds dc w_11 w_11 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_379 4;
                adds dc w_11 w_11 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_378 5;
                adds dc w_11 w_11 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_377 6;
                adds dc w_11 w_11 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_376 7;
                adds dc w_11 w_11 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_375 8;
                adds dc w_11 w_11 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_374 9;
                adds dc w_11 w_11 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_373 10;
                adds dc w_11 w_11 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_372 11;
                adds dc w_11 w_11 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_371 12;
                adds dc w_11 w_11 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_370 13;
                adds dc w_11 w_11 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_369 14;
                adds dc w_11 w_11 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_368 15;
                adds dc w_11 w_11 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_367 16;
                adds dc w_11 w_11 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_366 17;
                adds dc w_11 w_11 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_365 18;
                adds dc w_11 w_11 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_364 19;
                adds dc w_11 w_11 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_363 20;
                adds dc w_11 w_11 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_362 21;
                adds dc w_11 w_11 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_361 22;
                adds dc w_11 w_11 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_360 23;
                adds dc w_11 w_11 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_359 24;
                adds dc w_11 w_11 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_358 25;
                adds dc w_11 w_11 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_357 26;
                adds dc w_11 w_11 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_356 27;
                adds dc w_11 w_11 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_355 28;
                adds dc w_11 w_11 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_354 29;
                adds dc w_11 w_11 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_353 30;
                adds dc w_11 w_11 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_352 31;
                adds dc w_11 w_11 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x550c7dc3@uint256;
        adds dc tmp5 tmp4 w_11;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 12 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_12 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_415;
                adds dc w_12 w_12 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_414 1;
                adds dc w_12 w_12 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_413 2;
                adds dc w_12 w_12 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_412 3;
                adds dc w_12 w_12 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_411 4;
                adds dc w_12 w_12 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_410 5;
                adds dc w_12 w_12 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_409 6;
                adds dc w_12 w_12 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_408 7;
                adds dc w_12 w_12 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_407 8;
                adds dc w_12 w_12 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_406 9;
                adds dc w_12 w_12 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_405 10;
                adds dc w_12 w_12 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_404 11;
                adds dc w_12 w_12 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_403 12;
                adds dc w_12 w_12 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_402 13;
                adds dc w_12 w_12 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_401 14;
                adds dc w_12 w_12 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_400 15;
                adds dc w_12 w_12 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_399 16;
                adds dc w_12 w_12 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_398 17;
                adds dc w_12 w_12 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_397 18;
                adds dc w_12 w_12 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_396 19;
                adds dc w_12 w_12 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_395 20;
                adds dc w_12 w_12 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_394 21;
                adds dc w_12 w_12 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_393 22;
                adds dc w_12 w_12 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_392 23;
                adds dc w_12 w_12 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_391 24;
                adds dc w_12 w_12 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_390 25;
                adds dc w_12 w_12 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_389 26;
                adds dc w_12 w_12 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_388 27;
                adds dc w_12 w_12 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_387 28;
                adds dc w_12 w_12 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_386 29;
                adds dc w_12 w_12 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_385 30;
                adds dc w_12 w_12 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_384 31;
                adds dc w_12 w_12 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x72be5d74@uint256;
        adds dc tmp5 tmp4 w_12;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 13 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_13 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_447;
                adds dc w_13 w_13 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_446 1;
                adds dc w_13 w_13 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_445 2;
                adds dc w_13 w_13 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_444 3;
                adds dc w_13 w_13 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_443 4;
                adds dc w_13 w_13 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_442 5;
                adds dc w_13 w_13 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_441 6;
                adds dc w_13 w_13 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_440 7;
                adds dc w_13 w_13 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_439 8;
                adds dc w_13 w_13 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_438 9;
                adds dc w_13 w_13 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_437 10;
                adds dc w_13 w_13 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_436 11;
                adds dc w_13 w_13 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_435 12;
                adds dc w_13 w_13 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_434 13;
                adds dc w_13 w_13 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_433 14;
                adds dc w_13 w_13 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_432 15;
                adds dc w_13 w_13 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_431 16;
                adds dc w_13 w_13 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_430 17;
                adds dc w_13 w_13 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_429 18;
                adds dc w_13 w_13 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_428 19;
                adds dc w_13 w_13 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_427 20;
                adds dc w_13 w_13 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_426 21;
                adds dc w_13 w_13 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_425 22;
                adds dc w_13 w_13 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_424 23;
                adds dc w_13 w_13 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_423 24;
                adds dc w_13 w_13 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_422 25;
                adds dc w_13 w_13 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_421 26;
                adds dc w_13 w_13 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_420 27;
                adds dc w_13 w_13 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_419 28;
                adds dc w_13 w_13 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_418 29;
                adds dc w_13 w_13 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_417 30;
                adds dc w_13 w_13 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_416 31;
                adds dc w_13 w_13 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x80deb1fe@uint256;
        adds dc tmp5 tmp4 w_13;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 14 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_14 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_479;
                adds dc w_14 w_14 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_478 1;
                adds dc w_14 w_14 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_477 2;
                adds dc w_14 w_14 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_476 3;
                adds dc w_14 w_14 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_475 4;
                adds dc w_14 w_14 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_474 5;
                adds dc w_14 w_14 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_473 6;
                adds dc w_14 w_14 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_472 7;
                adds dc w_14 w_14 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_471 8;
                adds dc w_14 w_14 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_470 9;
                adds dc w_14 w_14 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_469 10;
                adds dc w_14 w_14 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_468 11;
                adds dc w_14 w_14 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_467 12;
                adds dc w_14 w_14 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_466 13;
                adds dc w_14 w_14 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_465 14;
                adds dc w_14 w_14 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_464 15;
                adds dc w_14 w_14 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_463 16;
                adds dc w_14 w_14 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_462 17;
                adds dc w_14 w_14 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_461 18;
                adds dc w_14 w_14 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_460 19;
                adds dc w_14 w_14 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_459 20;
                adds dc w_14 w_14 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_458 21;
                adds dc w_14 w_14 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_457 22;
                adds dc w_14 w_14 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_456 23;
                adds dc w_14 w_14 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_455 24;
                adds dc w_14 w_14 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_454 25;
                adds dc w_14 w_14 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_453 26;
                adds dc w_14 w_14 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_452 27;
                adds dc w_14 w_14 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_451 28;
                adds dc w_14 w_14 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_450 29;
                adds dc w_14 w_14 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_449 30;
                adds dc w_14 w_14 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_448 31;
                adds dc w_14 w_14 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x9bdc06a7@uint256;
        adds dc tmp5 tmp4 w_14;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 15 ==*)

        (* if (i<16) { *)

            (* w[i]=0; *)
            mov w_15 0@uint256;

            (* for (var j=0; j<32; j++) { *)

                (*== j = 0 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                mov tmp inp_511;
                adds dc w_15 w_15 tmp;

                (*== j = 1 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_510 1;
                adds dc w_15 w_15 tmp;

                (*== j = 2 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_509 2;
                adds dc w_15 w_15 tmp;

                (*== j = 3 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_508 3;
                adds dc w_15 w_15 tmp;

                (*== j = 4 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_507 4;
                adds dc w_15 w_15 tmp;

                (*== j = 5 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_506 5;
                adds dc w_15 w_15 tmp;

                (*== j = 6 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_505 6;
                adds dc w_15 w_15 tmp;

                (*== j = 7 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_504 7;
                adds dc w_15 w_15 tmp;

                (*== j = 8 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_503 8;
                adds dc w_15 w_15 tmp;

                (*== j = 9 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_502 9;
                adds dc w_15 w_15 tmp;

                (*== j = 10 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_501 10;
                adds dc w_15 w_15 tmp;

                (*== j = 11 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_500 11;
                adds dc w_15 w_15 tmp;

                (*== j = 12 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_499 12;
                adds dc w_15 w_15 tmp;

                (*== j = 13 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_498 13;
                adds dc w_15 w_15 tmp;

                (*== j = 14 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_497 14;
                adds dc w_15 w_15 tmp;

                (*== j = 15 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_496 15;
                adds dc w_15 w_15 tmp;

                (*== j = 16 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_495 16;
                adds dc w_15 w_15 tmp;

                (*== j = 17 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_494 17;
                adds dc w_15 w_15 tmp;

                (*== j = 18 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_493 18;
                adds dc w_15 w_15 tmp;

                (*== j = 19 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_492 19;
                adds dc w_15 w_15 tmp;

                (*== j = 20 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_491 20;
                adds dc w_15 w_15 tmp;

                (*== j = 21 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_490 21;
                adds dc w_15 w_15 tmp;

                (*== j = 22 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_489 22;
                adds dc w_15 w_15 tmp;

                (*== j = 23 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_488 23;
                adds dc w_15 w_15 tmp;

                (*== j = 24 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_487 24;
                adds dc w_15 w_15 tmp;

                (*== j = 25 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_486 25;
                adds dc w_15 w_15 tmp;

                (*== j = 26 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_485 26;
                adds dc w_15 w_15 tmp;

                (*== j = 27 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_484 27;
                adds dc w_15 w_15 tmp;

                (*== j = 28 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_483 28;
                adds dc w_15 w_15 tmp;

                (*== j = 29 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_482 29;
                adds dc w_15 w_15 tmp;

                (*== j = 30 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_481 30;
                adds dc w_15 w_15 tmp;

                (*== j = 31 ==*)

                (* w[i] +=  inp[i*32+31-j]<<j; *)
                (* that is, w[i] = w[i] + inp[i*32+31-j]<<j; *)
                shls dc tmp inp_480 31;
                adds dc w_15 w_15 tmp;

            (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xc19bf174@uint256;
        adds dc tmp5 tmp4 w_15;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 16 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_14, tmp0);
            adds dc tmp1 tmp0 w_9;
            inline ssigma0(w_1, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_0;
            and w_16@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xe49b69c1@uint256;
        adds dc tmp5 tmp4 w_16;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 17 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_15, tmp0);
            adds dc tmp1 tmp0 w_10;
            inline ssigma0(w_2, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_1;
            and w_17@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xefbe4786@uint256;
        adds dc tmp5 tmp4 w_17;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 18 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_16, tmp0);
            adds dc tmp1 tmp0 w_11;
            inline ssigma0(w_3, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_2;
            and w_18@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xfc19dc6@uint256;
        adds dc tmp5 tmp4 w_18;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 19 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_17, tmp0);
            adds dc tmp1 tmp0 w_12;
            inline ssigma0(w_4, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_3;
            and w_19@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x240ca1cc@uint256;
        adds dc tmp5 tmp4 w_19;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 20 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_18, tmp0);
            adds dc tmp1 tmp0 w_13;
            inline ssigma0(w_5, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_4;
            and w_20@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x2de92c6f@uint256;
        adds dc tmp5 tmp4 w_20;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 21 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_19, tmp0);
            adds dc tmp1 tmp0 w_14;
            inline ssigma0(w_6, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_5;
            and w_21@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x4a7484aa@uint256;
        adds dc tmp5 tmp4 w_21;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 22 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_20, tmp0);
            adds dc tmp1 tmp0 w_15;
            inline ssigma0(w_7, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_6;
            and w_22@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x5cb0a9dc@uint256;
        adds dc tmp5 tmp4 w_22;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 23 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_21, tmp0);
            adds dc tmp1 tmp0 w_16;
            inline ssigma0(w_8, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_7;
            and w_23@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x76f988da@uint256;
        adds dc tmp5 tmp4 w_23;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 24 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_22, tmp0);
            adds dc tmp1 tmp0 w_17;
            inline ssigma0(w_9, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_8;
            and w_24@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x983e5152@uint256;
        adds dc tmp5 tmp4 w_24;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 25 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_23, tmp0);
            adds dc tmp1 tmp0 w_18;
            inline ssigma0(w_10, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_9;
            and w_25@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xa831c66d@uint256;
        adds dc tmp5 tmp4 w_25;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 26 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_24, tmp0);
            adds dc tmp1 tmp0 w_19;
            inline ssigma0(w_11, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_10;
            and w_26@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xb00327c8@uint256;
        adds dc tmp5 tmp4 w_26;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 27 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_25, tmp0);
            adds dc tmp1 tmp0 w_20;
            inline ssigma0(w_12, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_11;
            and w_27@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xbf597fc7@uint256;
        adds dc tmp5 tmp4 w_27;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 28 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_26, tmp0);
            adds dc tmp1 tmp0 w_21;
            inline ssigma0(w_13, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_12;
            and w_28@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xc6e00bf3@uint256;
        adds dc tmp5 tmp4 w_28;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 29 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_27, tmp0);
            adds dc tmp1 tmp0 w_22;
            inline ssigma0(w_14, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_13;
            and w_29@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xd5a79147@uint256;
        adds dc tmp5 tmp4 w_29;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 30 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_28, tmp0);
            adds dc tmp1 tmp0 w_23;
            inline ssigma0(w_15, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_14;
            and w_30@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x6ca6351@uint256;
        adds dc tmp5 tmp4 w_30;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 31 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_29, tmp0);
            adds dc tmp1 tmp0 w_24;
            inline ssigma0(w_16, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_15;
            and w_31@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x14292967@uint256;
        adds dc tmp5 tmp4 w_31;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 32 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_30, tmp0);
            adds dc tmp1 tmp0 w_25;
            inline ssigma0(w_17, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_16;
            and w_32@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x27b70a85@uint256;
        adds dc tmp5 tmp4 w_32;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 33 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_31, tmp0);
            adds dc tmp1 tmp0 w_26;
            inline ssigma0(w_18, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_17;
            and w_33@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x2e1b2138@uint256;
        adds dc tmp5 tmp4 w_33;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 34 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_32, tmp0);
            adds dc tmp1 tmp0 w_27;
            inline ssigma0(w_19, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_18;
            and w_34@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x4d2c6dfc@uint256;
        adds dc tmp5 tmp4 w_34;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 35 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_33, tmp0);
            adds dc tmp1 tmp0 w_28;
            inline ssigma0(w_20, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_19;
            and w_35@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x53380d13@uint256;
        adds dc tmp5 tmp4 w_35;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 36 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_34, tmp0);
            adds dc tmp1 tmp0 w_29;
            inline ssigma0(w_21, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_20;
            and w_36@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x650a7354@uint256;
        adds dc tmp5 tmp4 w_36;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 37 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_35, tmp0);
            adds dc tmp1 tmp0 w_30;
            inline ssigma0(w_22, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_21;
            and w_37@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x766a0abb@uint256;
        adds dc tmp5 tmp4 w_37;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 38 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_36, tmp0);
            adds dc tmp1 tmp0 w_31;
            inline ssigma0(w_23, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_22;
            and w_38@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x81c2c92e@uint256;
        adds dc tmp5 tmp4 w_38;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 39 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_37, tmp0);
            adds dc tmp1 tmp0 w_32;
            inline ssigma0(w_24, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_23;
            and w_39@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x92722c85@uint256;
        adds dc tmp5 tmp4 w_39;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 40 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_38, tmp0);
            adds dc tmp1 tmp0 w_33;
            inline ssigma0(w_25, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_24;
            and w_40@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xa2bfe8a1@uint256;
        adds dc tmp5 tmp4 w_40;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 41 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_39, tmp0);
            adds dc tmp1 tmp0 w_34;
            inline ssigma0(w_26, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_25;
            and w_41@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xa81a664b@uint256;
        adds dc tmp5 tmp4 w_41;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 42 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_40, tmp0);
            adds dc tmp1 tmp0 w_35;
            inline ssigma0(w_27, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_26;
            and w_42@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xc24b8b70@uint256;
        adds dc tmp5 tmp4 w_42;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 43 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_41, tmp0);
            adds dc tmp1 tmp0 w_36;
            inline ssigma0(w_28, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_27;
            and w_43@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xc76c51a3@uint256;
        adds dc tmp5 tmp4 w_43;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 44 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_42, tmp0);
            adds dc tmp1 tmp0 w_37;
            inline ssigma0(w_29, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_28;
            and w_44@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xd192e819@uint256;
        adds dc tmp5 tmp4 w_44;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 45 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_43, tmp0);
            adds dc tmp1 tmp0 w_38;
            inline ssigma0(w_30, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_29;
            and w_45@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xd6990624@uint256;
        adds dc tmp5 tmp4 w_45;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 46 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_44, tmp0);
            adds dc tmp1 tmp0 w_39;
            inline ssigma0(w_31, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_30;
            and w_46@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xf40e3585@uint256;
        adds dc tmp5 tmp4 w_46;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 47 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_45, tmp0);
            adds dc tmp1 tmp0 w_40;
            inline ssigma0(w_32, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_31;
            and w_47@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x106aa070@uint256;
        adds dc tmp5 tmp4 w_47;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 48 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_46, tmp0);
            adds dc tmp1 tmp0 w_41;
            inline ssigma0(w_33, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_32;
            and w_48@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x19a4c116@uint256;
        adds dc tmp5 tmp4 w_48;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 49 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_47, tmp0);
            adds dc tmp1 tmp0 w_42;
            inline ssigma0(w_34, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_33;
            and w_49@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x1e376c08@uint256;
        adds dc tmp5 tmp4 w_49;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 50 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_48, tmp0);
            adds dc tmp1 tmp0 w_43;
            inline ssigma0(w_35, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_34;
            and w_50@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x2748774c@uint256;
        adds dc tmp5 tmp4 w_50;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 51 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_49, tmp0);
            adds dc tmp1 tmp0 w_44;
            inline ssigma0(w_36, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_35;
            and w_51@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x34b0bcb5@uint256;
        adds dc tmp5 tmp4 w_51;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 52 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_50, tmp0);
            adds dc tmp1 tmp0 w_45;
            inline ssigma0(w_37, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_36;
            and w_52@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x391c0cb3@uint256;
        adds dc tmp5 tmp4 w_52;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 53 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_51, tmp0);
            adds dc tmp1 tmp0 w_46;
            inline ssigma0(w_38, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_37;
            and w_53@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x4ed8aa4a@uint256;
        adds dc tmp5 tmp4 w_53;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 54 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_52, tmp0);
            adds dc tmp1 tmp0 w_47;
            inline ssigma0(w_39, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_38;
            and w_54@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x5b9cca4f@uint256;
        adds dc tmp5 tmp4 w_54;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 55 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_53, tmp0);
            adds dc tmp1 tmp0 w_48;
            inline ssigma0(w_40, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_39;
            and w_55@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x682e6ff3@uint256;
        adds dc tmp5 tmp4 w_55;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 56 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_54, tmp0);
            adds dc tmp1 tmp0 w_49;
            inline ssigma0(w_41, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_40;
            and w_56@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x748f82ee@uint256;
        adds dc tmp5 tmp4 w_56;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 57 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_55, tmp0);
            adds dc tmp1 tmp0 w_50;
            inline ssigma0(w_42, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_41;
            and w_57@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x78a5636f@uint256;
        adds dc tmp5 tmp4 w_57;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 58 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_56, tmp0);
            adds dc tmp1 tmp0 w_51;
            inline ssigma0(w_43, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_42;
            and w_58@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x84c87814@uint256;
        adds dc tmp5 tmp4 w_58;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 59 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_57, tmp0);
            adds dc tmp1 tmp0 w_52;
            inline ssigma0(w_44, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_43;
            and w_59@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x8cc70208@uint256;
        adds dc tmp5 tmp4 w_59;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 60 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_58, tmp0);
            adds dc tmp1 tmp0 w_53;
            inline ssigma0(w_45, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_44;
            and w_60@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0x90befffa@uint256;
        adds dc tmp5 tmp4 w_60;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 61 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_59, tmp0);
            adds dc tmp1 tmp0 w_54;
            inline ssigma0(w_46, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_45;
            and w_61@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xa4506ceb@uint256;
        adds dc tmp5 tmp4 w_61;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 62 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_60, tmp0);
            adds dc tmp1 tmp0 w_55;
            inline ssigma0(w_47, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_46;
            and w_62@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xbef9a3f7@uint256;
        adds dc tmp5 tmp4 w_62;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)
        (*== i = 63 ==*)

        (* } else { *)

            (* w[i] = (ssigma1(w[i-2]) + w[i-7] + ssigma0(w[i-15]) + w[i-16]) & 0xFFFFFFFF; *)
            inline ssigma1(w_61, tmp0);
            adds dc tmp1 tmp0 w_56;
            inline ssigma0(w_48, tmp2);
            adds dc tmp3 tmp1 tmp2;
            adds dc tmp4 tmp3 w_47;
            and w_63@uint256 tmp4 0xFFFFFFFF@uint256;

        (* } *)

        (* T1 = (h + bsigma1(e) + Ch(e,f,g) + sha256K(i) + w[i]) & 0xFFFFFFFF; *)
        inline bsigma1(e, tmp0);
        adds dc tmp1 h tmp0;
        inline Ch(e, f, g, tmp2);
        adds dc tmp3 tmp1 tmp2;
        adds dc tmp4 tmp3 0xc67178f2@uint256;
        adds dc tmp5 tmp4 w_63;
        and T1@uint256 tmp5 0xFFFFFFFF@uint256;

        (* T2 = (bsigma0(a) + Maj(a,b,c)) & 0xFFFFFFFF; *)
        inline bsigma0(a, tmp0);
        inline Maj(a, b, c, tmp1);
        adds dc tmp2 tmp0 tmp1;
        and T2@uint256 tmp2 0xFFFFFFFF@uint256;

        (* h=g; *)
        mov h g;

        (* g=f; *)
        mov g f;

        (* f=e; *)
        mov f e;

        (* e=(d+T1) & 0xFFFFFFFF; *)
        adds dc tmp0 d T1;
        and e@uint256 tmp0 0xFFFFFFFF@uint256;

        (* d=c; *)
        mov d c;

        (* c=b; *)
        mov c b;

        (* b=a; *)
        mov b a;

        (* a=(T1+T2) & 0xFFFFFFFF; *)
        adds dc tmp0 T1 T2;
        and a@uint256 tmp0 0xFFFFFFFF@uint256;

    (* } *)


    (* H[0] = H[0] + a; *)
    adds dc H_0 H_0 a;

    (* H[1] = H[1] + b; *)
    adds dc H_1 H_1 b;

    (* H[2] = H[2] + c; *)
    adds dc H_2 H_2 c;

    (* H[3] = H[3] + d; *)
    adds dc H_3 H_3 d;

    (* H[4] = H[4] + e; *)
    adds dc H_4 H_4 e;

    (* H[5] = H[5] + f; *)
    adds dc H_5 H_5 f;

    (* H[6] = H[6] + g; *)
    adds dc H_6 H_6 g;

    (* H[7] = H[7] + h; *)
    adds dc H_7 H_7 h;


    (* for (var i=0; i<8; i++) { *)

        (*== i = 0 ==*)

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            mov tmp0 H_0;
            and out_31@uint256 tmp0 1@uint256;

            (*== j = 1 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 1;
            and out_30@uint256 tmp0 1@uint256;

            (*== j = 2 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 2;
            and out_29@uint256 tmp0 1@uint256;

            (*== j = 3 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 3;
            and out_28@uint256 tmp0 1@uint256;

            (*== j = 4 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 4;
            and out_27@uint256 tmp0 1@uint256;

            (*== j = 5 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 5;
            and out_26@uint256 tmp0 1@uint256;

            (*== j = 6 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 6;
            and out_25@uint256 tmp0 1@uint256;

            (*== j = 7 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 7;
            and out_24@uint256 tmp0 1@uint256;

            (*== j = 8 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 8;
            and out_23@uint256 tmp0 1@uint256;

            (*== j = 9 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 9;
            and out_22@uint256 tmp0 1@uint256;

            (*== j = 10 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 10;
            and out_21@uint256 tmp0 1@uint256;

            (*== j = 11 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 11;
            and out_20@uint256 tmp0 1@uint256;

            (*== j = 12 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 12;
            and out_19@uint256 tmp0 1@uint256;

            (*== j = 13 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 13;
            and out_18@uint256 tmp0 1@uint256;

            (*== j = 14 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 14;
            and out_17@uint256 tmp0 1@uint256;

            (*== j = 15 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 15;
            and out_16@uint256 tmp0 1@uint256;

            (*== j = 16 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 16;
            and out_15@uint256 tmp0 1@uint256;

            (*== j = 17 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 17;
            and out_14@uint256 tmp0 1@uint256;

            (*== j = 18 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 18;
            and out_13@uint256 tmp0 1@uint256;

            (*== j = 19 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 19;
            and out_12@uint256 tmp0 1@uint256;

            (*== j = 20 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 20;
            and out_11@uint256 tmp0 1@uint256;

            (*== j = 21 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 21;
            and out_10@uint256 tmp0 1@uint256;

            (*== j = 22 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 22;
            and out_9@uint256 tmp0 1@uint256;

            (*== j = 23 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 23;
            and out_8@uint256 tmp0 1@uint256;

            (*== j = 24 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 24;
            and out_7@uint256 tmp0 1@uint256;

            (*== j = 25 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 25;
            and out_6@uint256 tmp0 1@uint256;

            (*== j = 26 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 26;
            and out_5@uint256 tmp0 1@uint256;

            (*== j = 27 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 27;
            and out_4@uint256 tmp0 1@uint256;

            (*== j = 28 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 28;
            and out_3@uint256 tmp0 1@uint256;

            (*== j = 29 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 29;
            and out_2@uint256 tmp0 1@uint256;

            (*== j = 30 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 30;
            and out_1@uint256 tmp0 1@uint256;

            (*== j = 31 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_0 31;
            and out_0@uint256 tmp0 1@uint256;

        (* } *)

        (*== i = 1 ==*)

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            mov tmp0 H_1;
            and out_63@uint256 tmp0 1@uint256;

            (*== j = 1 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 1;
            and out_62@uint256 tmp0 1@uint256;

            (*== j = 2 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 2;
            and out_61@uint256 tmp0 1@uint256;

            (*== j = 3 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 3;
            and out_60@uint256 tmp0 1@uint256;

            (*== j = 4 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 4;
            and out_59@uint256 tmp0 1@uint256;

            (*== j = 5 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 5;
            and out_58@uint256 tmp0 1@uint256;

            (*== j = 6 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 6;
            and out_57@uint256 tmp0 1@uint256;

            (*== j = 7 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 7;
            and out_56@uint256 tmp0 1@uint256;

            (*== j = 8 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 8;
            and out_55@uint256 tmp0 1@uint256;

            (*== j = 9 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 9;
            and out_54@uint256 tmp0 1@uint256;

            (*== j = 10 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 10;
            and out_53@uint256 tmp0 1@uint256;

            (*== j = 11 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 11;
            and out_52@uint256 tmp0 1@uint256;

            (*== j = 12 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 12;
            and out_51@uint256 tmp0 1@uint256;

            (*== j = 13 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 13;
            and out_50@uint256 tmp0 1@uint256;

            (*== j = 14 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 14;
            and out_49@uint256 tmp0 1@uint256;

            (*== j = 15 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 15;
            and out_48@uint256 tmp0 1@uint256;

            (*== j = 16 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 16;
            and out_47@uint256 tmp0 1@uint256;

            (*== j = 17 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 17;
            and out_46@uint256 tmp0 1@uint256;

            (*== j = 18 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 18;
            and out_45@uint256 tmp0 1@uint256;

            (*== j = 19 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 19;
            and out_44@uint256 tmp0 1@uint256;

            (*== j = 20 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 20;
            and out_43@uint256 tmp0 1@uint256;

            (*== j = 21 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 21;
            and out_42@uint256 tmp0 1@uint256;

            (*== j = 22 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 22;
            and out_41@uint256 tmp0 1@uint256;

            (*== j = 23 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 23;
            and out_40@uint256 tmp0 1@uint256;

            (*== j = 24 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 24;
            and out_39@uint256 tmp0 1@uint256;

            (*== j = 25 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 25;
            and out_38@uint256 tmp0 1@uint256;

            (*== j = 26 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 26;
            and out_37@uint256 tmp0 1@uint256;

            (*== j = 27 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 27;
            and out_36@uint256 tmp0 1@uint256;

            (*== j = 28 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 28;
            and out_35@uint256 tmp0 1@uint256;

            (*== j = 29 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 29;
            and out_34@uint256 tmp0 1@uint256;

            (*== j = 30 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 30;
            and out_33@uint256 tmp0 1@uint256;

            (*== j = 31 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_1 31;
            and out_32@uint256 tmp0 1@uint256;

        (* } *)

        (*== i = 2 ==*)

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            mov tmp0 H_2;
            and out_95@uint256 tmp0 1@uint256;

            (*== j = 1 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 1;
            and out_94@uint256 tmp0 1@uint256;

            (*== j = 2 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 2;
            and out_93@uint256 tmp0 1@uint256;

            (*== j = 3 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 3;
            and out_92@uint256 tmp0 1@uint256;

            (*== j = 4 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 4;
            and out_91@uint256 tmp0 1@uint256;

            (*== j = 5 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 5;
            and out_90@uint256 tmp0 1@uint256;

            (*== j = 6 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 6;
            and out_89@uint256 tmp0 1@uint256;

            (*== j = 7 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 7;
            and out_88@uint256 tmp0 1@uint256;

            (*== j = 8 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 8;
            and out_87@uint256 tmp0 1@uint256;

            (*== j = 9 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 9;
            and out_86@uint256 tmp0 1@uint256;

            (*== j = 10 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 10;
            and out_85@uint256 tmp0 1@uint256;

            (*== j = 11 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 11;
            and out_84@uint256 tmp0 1@uint256;

            (*== j = 12 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 12;
            and out_83@uint256 tmp0 1@uint256;

            (*== j = 13 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 13;
            and out_82@uint256 tmp0 1@uint256;

            (*== j = 14 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 14;
            and out_81@uint256 tmp0 1@uint256;

            (*== j = 15 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 15;
            and out_80@uint256 tmp0 1@uint256;

            (*== j = 16 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 16;
            and out_79@uint256 tmp0 1@uint256;

            (*== j = 17 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 17;
            and out_78@uint256 tmp0 1@uint256;

            (*== j = 18 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 18;
            and out_77@uint256 tmp0 1@uint256;

            (*== j = 19 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 19;
            and out_76@uint256 tmp0 1@uint256;

            (*== j = 20 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 20;
            and out_75@uint256 tmp0 1@uint256;

            (*== j = 21 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 21;
            and out_74@uint256 tmp0 1@uint256;

            (*== j = 22 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 22;
            and out_73@uint256 tmp0 1@uint256;

            (*== j = 23 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 23;
            and out_72@uint256 tmp0 1@uint256;

            (*== j = 24 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 24;
            and out_71@uint256 tmp0 1@uint256;

            (*== j = 25 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 25;
            and out_70@uint256 tmp0 1@uint256;

            (*== j = 26 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 26;
            and out_69@uint256 tmp0 1@uint256;

            (*== j = 27 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 27;
            and out_68@uint256 tmp0 1@uint256;

            (*== j = 28 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 28;
            and out_67@uint256 tmp0 1@uint256;

            (*== j = 29 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 29;
            and out_66@uint256 tmp0 1@uint256;

            (*== j = 30 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 30;
            and out_65@uint256 tmp0 1@uint256;

            (*== j = 31 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_2 31;
            and out_64@uint256 tmp0 1@uint256;

        (* } *)

        (*== i = 3 ==*)

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            mov tmp0 H_3;
            and out_127@uint256 tmp0 1@uint256;

            (*== j = 1 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 1;
            and out_126@uint256 tmp0 1@uint256;

            (*== j = 2 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 2;
            and out_125@uint256 tmp0 1@uint256;

            (*== j = 3 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 3;
            and out_124@uint256 tmp0 1@uint256;

            (*== j = 4 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 4;
            and out_123@uint256 tmp0 1@uint256;

            (*== j = 5 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 5;
            and out_122@uint256 tmp0 1@uint256;

            (*== j = 6 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 6;
            and out_121@uint256 tmp0 1@uint256;

            (*== j = 7 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 7;
            and out_120@uint256 tmp0 1@uint256;

            (*== j = 8 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 8;
            and out_119@uint256 tmp0 1@uint256;

            (*== j = 9 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 9;
            and out_118@uint256 tmp0 1@uint256;

            (*== j = 10 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 10;
            and out_117@uint256 tmp0 1@uint256;

            (*== j = 11 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 11;
            and out_116@uint256 tmp0 1@uint256;

            (*== j = 12 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 12;
            and out_115@uint256 tmp0 1@uint256;

            (*== j = 13 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 13;
            and out_114@uint256 tmp0 1@uint256;

            (*== j = 14 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 14;
            and out_113@uint256 tmp0 1@uint256;

            (*== j = 15 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 15;
            and out_112@uint256 tmp0 1@uint256;

            (*== j = 16 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 16;
            and out_111@uint256 tmp0 1@uint256;

            (*== j = 17 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 17;
            and out_110@uint256 tmp0 1@uint256;

            (*== j = 18 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 18;
            and out_109@uint256 tmp0 1@uint256;

            (*== j = 19 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 19;
            and out_108@uint256 tmp0 1@uint256;

            (*== j = 20 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 20;
            and out_107@uint256 tmp0 1@uint256;

            (*== j = 21 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 21;
            and out_106@uint256 tmp0 1@uint256;

            (*== j = 22 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 22;
            and out_105@uint256 tmp0 1@uint256;

            (*== j = 23 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 23;
            and out_104@uint256 tmp0 1@uint256;

            (*== j = 24 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 24;
            and out_103@uint256 tmp0 1@uint256;

            (*== j = 25 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 25;
            and out_102@uint256 tmp0 1@uint256;

            (*== j = 26 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 26;
            and out_101@uint256 tmp0 1@uint256;

            (*== j = 27 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 27;
            and out_100@uint256 tmp0 1@uint256;

            (*== j = 28 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 28;
            and out_99@uint256 tmp0 1@uint256;

            (*== j = 29 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 29;
            and out_98@uint256 tmp0 1@uint256;

            (*== j = 30 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 30;
            and out_97@uint256 tmp0 1@uint256;

            (*== j = 31 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_3 31;
            and out_96@uint256 tmp0 1@uint256;

        (* } *)

        (*== i = 4 ==*)

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            mov tmp0 H_4;
            and out_159@uint256 tmp0 1@uint256;

            (*== j = 1 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 1;
            and out_158@uint256 tmp0 1@uint256;

            (*== j = 2 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 2;
            and out_157@uint256 tmp0 1@uint256;

            (*== j = 3 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 3;
            and out_156@uint256 tmp0 1@uint256;

            (*== j = 4 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 4;
            and out_155@uint256 tmp0 1@uint256;

            (*== j = 5 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 5;
            and out_154@uint256 tmp0 1@uint256;

            (*== j = 6 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 6;
            and out_153@uint256 tmp0 1@uint256;

            (*== j = 7 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 7;
            and out_152@uint256 tmp0 1@uint256;

            (*== j = 8 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 8;
            and out_151@uint256 tmp0 1@uint256;

            (*== j = 9 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 9;
            and out_150@uint256 tmp0 1@uint256;

            (*== j = 10 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 10;
            and out_149@uint256 tmp0 1@uint256;

            (*== j = 11 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 11;
            and out_148@uint256 tmp0 1@uint256;

            (*== j = 12 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 12;
            and out_147@uint256 tmp0 1@uint256;

            (*== j = 13 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 13;
            and out_146@uint256 tmp0 1@uint256;

            (*== j = 14 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 14;
            and out_145@uint256 tmp0 1@uint256;

            (*== j = 15 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 15;
            and out_144@uint256 tmp0 1@uint256;

            (*== j = 16 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 16;
            and out_143@uint256 tmp0 1@uint256;

            (*== j = 17 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 17;
            and out_142@uint256 tmp0 1@uint256;

            (*== j = 18 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 18;
            and out_141@uint256 tmp0 1@uint256;

            (*== j = 19 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 19;
            and out_140@uint256 tmp0 1@uint256;

            (*== j = 20 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 20;
            and out_139@uint256 tmp0 1@uint256;

            (*== j = 21 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 21;
            and out_138@uint256 tmp0 1@uint256;

            (*== j = 22 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 22;
            and out_137@uint256 tmp0 1@uint256;

            (*== j = 23 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 23;
            and out_136@uint256 tmp0 1@uint256;

            (*== j = 24 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 24;
            and out_135@uint256 tmp0 1@uint256;

            (*== j = 25 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 25;
            and out_134@uint256 tmp0 1@uint256;

            (*== j = 26 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 26;
            and out_133@uint256 tmp0 1@uint256;

            (*== j = 27 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 27;
            and out_132@uint256 tmp0 1@uint256;

            (*== j = 28 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 28;
            and out_131@uint256 tmp0 1@uint256;

            (*== j = 29 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 29;
            and out_130@uint256 tmp0 1@uint256;

            (*== j = 30 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 30;
            and out_129@uint256 tmp0 1@uint256;

            (*== j = 31 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_4 31;
            and out_128@uint256 tmp0 1@uint256;

        (* } *)

        (*== i = 5 ==*)

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            mov tmp0 H_5;
            and out_191@uint256 tmp0 1@uint256;

            (*== j = 1 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 1;
            and out_190@uint256 tmp0 1@uint256;

            (*== j = 2 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 2;
            and out_189@uint256 tmp0 1@uint256;

            (*== j = 3 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 3;
            and out_188@uint256 tmp0 1@uint256;

            (*== j = 4 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 4;
            and out_187@uint256 tmp0 1@uint256;

            (*== j = 5 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 5;
            and out_186@uint256 tmp0 1@uint256;

            (*== j = 6 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 6;
            and out_185@uint256 tmp0 1@uint256;

            (*== j = 7 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 7;
            and out_184@uint256 tmp0 1@uint256;

            (*== j = 8 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 8;
            and out_183@uint256 tmp0 1@uint256;

            (*== j = 9 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 9;
            and out_182@uint256 tmp0 1@uint256;

            (*== j = 10 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 10;
            and out_181@uint256 tmp0 1@uint256;

            (*== j = 11 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 11;
            and out_180@uint256 tmp0 1@uint256;

            (*== j = 12 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 12;
            and out_179@uint256 tmp0 1@uint256;

            (*== j = 13 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 13;
            and out_178@uint256 tmp0 1@uint256;

            (*== j = 14 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 14;
            and out_177@uint256 tmp0 1@uint256;

            (*== j = 15 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 15;
            and out_176@uint256 tmp0 1@uint256;

            (*== j = 16 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 16;
            and out_175@uint256 tmp0 1@uint256;

            (*== j = 17 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 17;
            and out_174@uint256 tmp0 1@uint256;

            (*== j = 18 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 18;
            and out_173@uint256 tmp0 1@uint256;

            (*== j = 19 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 19;
            and out_172@uint256 tmp0 1@uint256;

            (*== j = 20 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 20;
            and out_171@uint256 tmp0 1@uint256;

            (*== j = 21 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 21;
            and out_170@uint256 tmp0 1@uint256;

            (*== j = 22 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 22;
            and out_169@uint256 tmp0 1@uint256;

            (*== j = 23 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 23;
            and out_168@uint256 tmp0 1@uint256;

            (*== j = 24 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 24;
            and out_167@uint256 tmp0 1@uint256;

            (*== j = 25 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 25;
            and out_166@uint256 tmp0 1@uint256;

            (*== j = 26 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 26;
            and out_165@uint256 tmp0 1@uint256;

            (*== j = 27 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 27;
            and out_164@uint256 tmp0 1@uint256;

            (*== j = 28 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 28;
            and out_163@uint256 tmp0 1@uint256;

            (*== j = 29 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 29;
            and out_162@uint256 tmp0 1@uint256;

            (*== j = 30 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 30;
            and out_161@uint256 tmp0 1@uint256;

            (*== j = 31 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_5 31;
            and out_160@uint256 tmp0 1@uint256;

        (* } *)

        (*== i = 6 ==*)

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            mov tmp0 H_6;
            and out_223@uint256 tmp0 1@uint256;

            (*== j = 1 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 1;
            and out_222@uint256 tmp0 1@uint256;

            (*== j = 2 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 2;
            and out_221@uint256 tmp0 1@uint256;

            (*== j = 3 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 3;
            and out_220@uint256 tmp0 1@uint256;

            (*== j = 4 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 4;
            and out_219@uint256 tmp0 1@uint256;

            (*== j = 5 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 5;
            and out_218@uint256 tmp0 1@uint256;

            (*== j = 6 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 6;
            and out_217@uint256 tmp0 1@uint256;

            (*== j = 7 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 7;
            and out_216@uint256 tmp0 1@uint256;

            (*== j = 8 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 8;
            and out_215@uint256 tmp0 1@uint256;

            (*== j = 9 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 9;
            and out_214@uint256 tmp0 1@uint256;

            (*== j = 10 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 10;
            and out_213@uint256 tmp0 1@uint256;

            (*== j = 11 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 11;
            and out_212@uint256 tmp0 1@uint256;

            (*== j = 12 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 12;
            and out_211@uint256 tmp0 1@uint256;

            (*== j = 13 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 13;
            and out_210@uint256 tmp0 1@uint256;

            (*== j = 14 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 14;
            and out_209@uint256 tmp0 1@uint256;

            (*== j = 15 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 15;
            and out_208@uint256 tmp0 1@uint256;

            (*== j = 16 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 16;
            and out_207@uint256 tmp0 1@uint256;

            (*== j = 17 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 17;
            and out_206@uint256 tmp0 1@uint256;

            (*== j = 18 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 18;
            and out_205@uint256 tmp0 1@uint256;

            (*== j = 19 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 19;
            and out_204@uint256 tmp0 1@uint256;

            (*== j = 20 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 20;
            and out_203@uint256 tmp0 1@uint256;

            (*== j = 21 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 21;
            and out_202@uint256 tmp0 1@uint256;

            (*== j = 22 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 22;
            and out_201@uint256 tmp0 1@uint256;

            (*== j = 23 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 23;
            and out_200@uint256 tmp0 1@uint256;

            (*== j = 24 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 24;
            and out_199@uint256 tmp0 1@uint256;

            (*== j = 25 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 25;
            and out_198@uint256 tmp0 1@uint256;

            (*== j = 26 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 26;
            and out_197@uint256 tmp0 1@uint256;

            (*== j = 27 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 27;
            and out_196@uint256 tmp0 1@uint256;

            (*== j = 28 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 28;
            and out_195@uint256 tmp0 1@uint256;

            (*== j = 29 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 29;
            and out_194@uint256 tmp0 1@uint256;

            (*== j = 30 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 30;
            and out_193@uint256 tmp0 1@uint256;

            (*== j = 31 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_6 31;
            and out_192@uint256 tmp0 1@uint256;

        (* } *)

        (*== i = 7 ==*)

        (* for (var j=0; j<32; j++) { *)

            (*== j = 0 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            mov tmp0 H_7;
            and out_255@uint256 tmp0 1@uint256;

            (*== j = 1 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 1;
            and out_254@uint256 tmp0 1@uint256;

            (*== j = 2 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 2;
            and out_253@uint256 tmp0 1@uint256;

            (*== j = 3 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 3;
            and out_252@uint256 tmp0 1@uint256;

            (*== j = 4 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 4;
            and out_251@uint256 tmp0 1@uint256;

            (*== j = 5 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 5;
            and out_250@uint256 tmp0 1@uint256;

            (*== j = 6 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 6;
            and out_249@uint256 tmp0 1@uint256;

            (*== j = 7 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 7;
            and out_248@uint256 tmp0 1@uint256;

            (*== j = 8 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 8;
            and out_247@uint256 tmp0 1@uint256;

            (*== j = 9 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 9;
            and out_246@uint256 tmp0 1@uint256;

            (*== j = 10 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 10;
            and out_245@uint256 tmp0 1@uint256;

            (*== j = 11 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 11;
            and out_244@uint256 tmp0 1@uint256;

            (*== j = 12 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 12;
            and out_243@uint256 tmp0 1@uint256;

            (*== j = 13 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 13;
            and out_242@uint256 tmp0 1@uint256;

            (*== j = 14 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 14;
            and out_241@uint256 tmp0 1@uint256;

            (*== j = 15 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 15;
            and out_240@uint256 tmp0 1@uint256;

            (*== j = 16 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 16;
            and out_239@uint256 tmp0 1@uint256;

            (*== j = 17 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 17;
            and out_238@uint256 tmp0 1@uint256;

            (*== j = 18 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 18;
            and out_237@uint256 tmp0 1@uint256;

            (*== j = 19 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 19;
            and out_236@uint256 tmp0 1@uint256;

            (*== j = 20 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 20;
            and out_235@uint256 tmp0 1@uint256;

            (*== j = 21 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 21;
            and out_234@uint256 tmp0 1@uint256;

            (*== j = 22 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 22;
            and out_233@uint256 tmp0 1@uint256;

            (*== j = 23 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 23;
            and out_232@uint256 tmp0 1@uint256;

            (*== j = 24 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 24;
            and out_231@uint256 tmp0 1@uint256;

            (*== j = 25 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 25;
            and out_230@uint256 tmp0 1@uint256;

            (*== j = 26 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 26;
            and out_229@uint256 tmp0 1@uint256;

            (*== j = 27 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 27;
            and out_228@uint256 tmp0 1@uint256;

            (*== j = 28 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 28;
            and out_227@uint256 tmp0 1@uint256;

            (*== j = 29 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 29;
            and out_226@uint256 tmp0 1@uint256;

            (*== j = 30 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 30;
            and out_225@uint256 tmp0 1@uint256;

            (*== j = 31 ==*)

            (* out[i*32+31-j] = (H[i] >> j) & 1; *)
            shrs tmp0 dc H_7 31;
            and out_224@uint256 tmp0 1@uint256;

        (* } *)

    (* } *)


    (* return out; *)

{ true && true }




