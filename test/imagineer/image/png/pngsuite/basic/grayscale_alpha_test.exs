defmodule Imagineer.Image.PNG.PngSuite.Basic.GrayscaleAlphaTest do
  use ExUnit.Case, async: true

  @test_path "test/support/images/pngsuite/basic/"
  @tmp_path "./tmp/"

  @actual_pixels [
    [{255, 0}, {255, 8}, {255, 16}, {255, 24}, {255, 32}, {255, 41}, {255, 49}, {255, 57}, {255, 65}, {255, 74}, {255, 82}, {255, 90}, {255, 98}, {255, 106}, {255, 115}, {255, 123}, {255, 131}, {255, 139}, {255, 148}, {255, 156}, {255, 164}, {255, 172}, {255, 180}, {255, 189}, {255, 197}, {255, 205}, {255, 213}, {255, 222}, {255, 230}, {255, 238}, {255, 246}, {255, 255}],
    [{246, 0}, {246, 8}, {246, 16}, {246, 24}, {246, 32}, {246, 41}, {246, 49}, {246, 57}, {246, 65}, {246, 74}, {246, 82}, {246, 90}, {246, 98}, {246, 106}, {246, 115}, {246, 123}, {246, 131}, {246, 139}, {246, 148}, {246, 156}, {246, 164}, {246, 172}, {246, 180}, {246, 189}, {246, 197}, {246, 205}, {246, 213}, {246, 222}, {246, 230}, {246, 238}, {246, 246}, {246, 255}],
    [{238, 0}, {238, 8}, {238, 16}, {238, 24}, {238, 32}, {238, 41}, {238, 49}, {238, 57}, {238, 65}, {238, 74}, {238, 82}, {238, 90}, {238, 98}, {238, 106}, {238, 115}, {238, 123}, {238, 131}, {238, 139}, {238, 148}, {238, 156}, {238, 164}, {238, 172}, {238, 180}, {238, 189}, {238, 197}, {238, 205}, {238, 213}, {238, 222}, {238, 230}, {238, 238}, {238, 246}, {238, 255}],
    [{230, 0}, {230, 8}, {230, 16}, {230, 24}, {230, 32}, {230, 41}, {230, 49}, {230, 57}, {230, 65}, {230, 74}, {230, 82}, {230, 90}, {230, 98}, {230, 106}, {230, 115}, {230, 123}, {230, 131}, {230, 139}, {230, 148}, {230, 156}, {230, 164}, {230, 172}, {230, 180}, {230, 189}, {230, 197}, {230, 205}, {230, 213}, {230, 222}, {230, 230}, {230, 238}, {230, 246}, {230, 255}],
    [{222, 0}, {222, 8}, {222, 16}, {222, 24}, {222, 32}, {222, 41}, {222, 49}, {222, 57}, {222, 65}, {222, 74}, {222, 82}, {222, 90}, {222, 98}, {222, 106}, {222, 115}, {222, 123}, {222, 131}, {222, 139}, {222, 148}, {222, 156}, {222, 164}, {222, 172}, {222, 180}, {222, 189}, {222, 197}, {222, 205}, {222, 213}, {222, 222}, {222, 230}, {222, 238}, {222, 246}, {222, 255}],
    [{213, 0}, {213, 8}, {213, 16}, {213, 24}, {213, 32}, {213, 41}, {213, 49}, {213, 57}, {213, 65}, {213, 74}, {213, 82}, {213, 90}, {213, 98}, {213, 106}, {213, 115}, {213, 123}, {213, 131}, {213, 139}, {213, 148}, {213, 156}, {213, 164}, {213, 172}, {213, 180}, {213, 189}, {213, 197}, {213, 205}, {213, 213}, {213, 222}, {213, 230}, {213, 238}, {213, 246}, {213, 255}],
    [{205, 0}, {205, 8}, {205, 16}, {205, 24}, {205, 32}, {205, 41}, {205, 49}, {205, 57}, {205, 65}, {205, 74}, {205, 82}, {205, 90}, {205, 98}, {205, 106}, {205, 115}, {205, 123}, {205, 131}, {205, 139}, {205, 148}, {205, 156}, {205, 164}, {205, 172}, {205, 180}, {205, 189}, {205, 197}, {205, 205}, {205, 213}, {205, 222}, {205, 230}, {205, 238}, {205, 246}, {205, 255}],
    [{197, 0}, {197, 8}, {197, 16}, {197, 24}, {197, 32}, {197, 41}, {197, 49}, {197, 57}, {197, 65}, {197, 74}, {197, 82}, {197, 90}, {197, 98}, {197, 106}, {197, 115}, {197, 123}, {197, 131}, {197, 139}, {197, 148}, {197, 156}, {197, 164}, {197, 172}, {197, 180}, {197, 189}, {197, 197}, {197, 205}, {197, 213}, {197, 222}, {197, 230}, {197, 238}, {197, 246}, {197, 255}],
    [{189, 0}, {189, 8}, {189, 16}, {189, 24}, {189, 32}, {189, 41}, {189, 49}, {189, 57}, {189, 65}, {189, 74}, {189, 82}, {189, 90}, {189, 98}, {189, 106}, {189, 115}, {189, 123}, {189, 131}, {189, 139}, {189, 148}, {189, 156}, {189, 164}, {189, 172}, {189, 180}, {189, 189}, {189, 197}, {189, 205}, {189, 213}, {189, 222}, {189, 230}, {189, 238}, {189, 246}, {189, 255}],
    [{180, 0}, {180, 8}, {180, 16}, {180, 24}, {180, 32}, {180, 41}, {180, 49}, {180, 57}, {180, 65}, {180, 74}, {180, 82}, {180, 90}, {180, 98}, {180, 106}, {180, 115}, {180, 123}, {180, 131}, {180, 139}, {180, 148}, {180, 156}, {180, 164}, {180, 172}, {180, 180}, {180, 189}, {180, 197}, {180, 205}, {180, 213}, {180, 222}, {180, 230}, {180, 238}, {180, 246}, {180, 255}],
    [{172, 0}, {172, 8}, {172, 16}, {172, 24}, {172, 32}, {172, 41}, {172, 49}, {172, 57}, {172, 65}, {172, 74}, {172, 82}, {172, 90}, {172, 98}, {172, 106}, {172, 115}, {172, 123}, {172, 131}, {172, 139}, {172, 148}, {172, 156}, {172, 164}, {172, 172}, {172, 180}, {172, 189}, {172, 197}, {172, 205}, {172, 213}, {172, 222}, {172, 230}, {172, 238}, {172, 246}, {172, 255}],
    [{164, 0}, {164, 8}, {164, 16}, {164, 24}, {164, 32}, {164, 41}, {164, 49}, {164, 57}, {164, 65}, {164, 74}, {164, 82}, {164, 90}, {164, 98}, {164, 106}, {164, 115}, {164, 123}, {164, 131}, {164, 139}, {164, 148}, {164, 156}, {164, 164}, {164, 172}, {164, 180}, {164, 189}, {164, 197}, {164, 205}, {164, 213}, {164, 222}, {164, 230}, {164, 238}, {164, 246}, {164, 255}],
    [{156, 0}, {156, 8}, {156, 16}, {156, 24}, {156, 32}, {156, 41}, {156, 49}, {156, 57}, {156, 65}, {156, 74}, {156, 82}, {156, 90}, {156, 98}, {156, 106}, {156, 115}, {156, 123}, {156, 131}, {156, 139}, {156, 148}, {156, 156}, {156, 164}, {156, 172}, {156, 180}, {156, 189}, {156, 197}, {156, 205}, {156, 213}, {156, 222}, {156, 230}, {156, 238}, {156, 246}, {156, 255}],
    [{148, 0}, {148, 8}, {148, 16}, {148, 24}, {148, 32}, {148, 41}, {148, 49}, {148, 57}, {148, 65}, {148, 74}, {148, 82}, {148, 90}, {148, 98}, {148, 106}, {148, 115}, {148, 123}, {148, 131}, {148, 139}, {148, 148}, {148, 156}, {148, 164}, {148, 172}, {148, 180}, {148, 189}, {148, 197}, {148, 205}, {148, 213}, {148, 222}, {148, 230}, {148, 238}, {148, 246}, {148, 255}],
    [{139, 0}, {139, 8}, {139, 16}, {139, 24}, {139, 32}, {139, 41}, {139, 49}, {139, 57}, {139, 65}, {139, 74}, {139, 82}, {139, 90}, {139, 98}, {139, 106}, {139, 115}, {139, 123}, {139, 131}, {139, 139}, {139, 148}, {139, 156}, {139, 164}, {139, 172}, {139, 180}, {139, 189}, {139, 197}, {139, 205}, {139, 213}, {139, 222}, {139, 230}, {139, 238}, {139, 246}, {139, 255}],
    [{131, 0}, {131, 8}, {131, 16}, {131, 24}, {131, 32}, {131, 41}, {131, 49}, {131, 57}, {131, 65}, {131, 74}, {131, 82}, {131, 90}, {131, 98}, {131, 106}, {131, 115}, {131, 123}, {131, 131}, {131, 139}, {131, 148}, {131, 156}, {131, 164}, {131, 172}, {131, 180}, {131, 189}, {131, 197}, {131, 205}, {131, 213}, {131, 222}, {131, 230}, {131, 238}, {131, 246}, {131, 255}],
    [{123, 0}, {123, 8}, {123, 16}, {123, 24}, {123, 32}, {123, 41}, {123, 49}, {123, 57}, {123, 65}, {123, 74}, {123, 82}, {123, 90}, {123, 98}, {123, 106}, {123, 115}, {123, 123}, {123, 131}, {123, 139}, {123, 148}, {123, 156}, {123, 164}, {123, 172}, {123, 180}, {123, 189}, {123, 197}, {123, 205}, {123, 213}, {123, 222}, {123, 230}, {123, 238}, {123, 246}, {123, 255}],
    [{115, 0}, {115, 8}, {115, 16}, {115, 24}, {115, 32}, {115, 41}, {115, 49}, {115, 57}, {115, 65}, {115, 74}, {115, 82}, {115, 90}, {115, 98}, {115, 106}, {115, 115}, {115, 123}, {115, 131}, {115, 139}, {115, 148}, {115, 156}, {115, 164}, {115, 172}, {115, 180}, {115, 189}, {115, 197}, {115, 205}, {115, 213}, {115, 222}, {115, 230}, {115, 238}, {115, 246}, {115, 255}],
    [{106, 0}, {106, 8}, {106, 16}, {106, 24}, {106, 32}, {106, 41}, {106, 49}, {106, 57}, {106, 65}, {106, 74}, {106, 82}, {106, 90}, {106, 98}, {106, 106}, {106, 115}, {106, 123}, {106, 131}, {106, 139}, {106, 148}, {106, 156}, {106, 164}, {106, 172}, {106, 180}, {106, 189}, {106, 197}, {106, 205}, {106, 213}, {106, 222}, {106, 230}, {106, 238}, {106, 246}, {106, 255}],
    [{98, 0}, {98, 8}, {98, 16}, {98, 24}, {98, 32}, {98, 41}, {98, 49}, {98, 57}, {98, 65}, {98, 74}, {98, 82}, {98, 90}, {98, 98}, {98, 106}, {98, 115}, {98, 123}, {98, 131}, {98, 139}, {98, 148}, {98, 156}, {98, 164}, {98, 172}, {98, 180}, {98, 189}, {98, 197}, {98, 205}, {98, 213}, {98, 222}, {98, 230}, {98, 238}, {98, 246}, {98, 255}],
    [{90, 0}, {90, 8}, {90, 16}, {90, 24}, {90, 32}, {90, 41}, {90, 49}, {90, 57}, {90, 65}, {90, 74}, {90, 82}, {90, 90}, {90, 98}, {90, 106}, {90, 115}, {90, 123}, {90, 131}, {90, 139}, {90, 148}, {90, 156}, {90, 164}, {90, 172}, {90, 180}, {90, 189}, {90, 197}, {90, 205}, {90, 213}, {90, 222}, {90, 230}, {90, 238}, {90, 246}, {90, 255}],
    [{82, 0}, {82, 8}, {82, 16}, {82, 24}, {82, 32}, {82, 41}, {82, 49}, {82, 57}, {82, 65}, {82, 74}, {82, 82}, {82, 90}, {82, 98}, {82, 106}, {82, 115}, {82, 123}, {82, 131}, {82, 139}, {82, 148}, {82, 156}, {82, 164}, {82, 172}, {82, 180}, {82, 189}, {82, 197}, {82, 205}, {82, 213}, {82, 222}, {82, 230}, {82, 238}, {82, 246}, {82, 255}],
    [{74, 0}, {74, 8}, {74, 16}, {74, 24}, {74, 32}, {74, 41}, {74, 49}, {74, 57}, {74, 65}, {74, 74}, {74, 82}, {74, 90}, {74, 98}, {74, 106}, {74, 115}, {74, 123}, {74, 131}, {74, 139}, {74, 148}, {74, 156}, {74, 164}, {74, 172}, {74, 180}, {74, 189}, {74, 197}, {74, 205}, {74, 213}, {74, 222}, {74, 230}, {74, 238}, {74, 246}, {74, 255}],
    [{65, 0}, {65, 8}, {65, 16}, {65, 24}, {65, 32}, {65, 41}, {65, 49}, {65, 57}, {65, 65}, {65, 74}, {65, 82}, {65, 90}, {65, 98}, {65, 106}, {65, 115}, {65, 123}, {65, 131}, {65, 139}, {65, 148}, {65, 156}, {65, 164}, {65, 172}, {65, 180}, {65, 189}, {65, 197}, {65, 205}, {65, 213}, {65, 222}, {65, 230}, {65, 238}, {65, 246}, {65, 255}],
    [{57, 0}, {57, 8}, {57, 16}, {57, 24}, {57, 32}, {57, 41}, {57, 49}, {57, 57}, {57, 65}, {57, 74}, {57, 82}, {57, 90}, {57, 98}, {57, 106}, {57, 115}, {57, 123}, {57, 131}, {57, 139}, {57, 148}, {57, 156}, {57, 164}, {57, 172}, {57, 180}, {57, 189}, {57, 197}, {57, 205}, {57, 213}, {57, 222}, {57, 230}, {57, 238}, {57, 246}, {57, 255}],
    [{49, 0}, {49, 8}, {49, 16}, {49, 24}, {49, 32}, {49, 41}, {49, 49}, {49, 57}, {49, 65}, {49, 74}, {49, 82}, {49, 90}, {49, 98}, {49, 106}, {49, 115}, {49, 123}, {49, 131}, {49, 139}, {49, 148}, {49, 156}, {49, 164}, {49, 172}, {49, 180}, {49, 189}, {49, 197}, {49, 205}, {49, 213}, {49, 222}, {49, 230}, {49, 238}, {49, 246}, {49, 255}],
    [{41, 0}, {41, 8}, {41, 16}, {41, 24}, {41, 32}, {41, 41}, {41, 49}, {41, 57}, {41, 65}, {41, 74}, {41, 82}, {41, 90}, {41, 98}, {41, 106}, {41, 115}, {41, 123}, {41, 131}, {41, 139}, {41, 148}, {41, 156}, {41, 164}, {41, 172}, {41, 180}, {41, 189}, {41, 197}, {41, 205}, {41, 213}, {41, 222}, {41, 230}, {41, 238}, {41, 246}, {41, 255}],
    [{32, 0}, {32, 8}, {32, 16}, {32, 24}, {32, 32}, {32, 41}, {32, 49}, {32, 57}, {32, 65}, {32, 74}, {32, 82}, {32, 90}, {32, 98}, {32, 106}, {32, 115}, {32, 123}, {32, 131}, {32, 139}, {32, 148}, {32, 156}, {32, 164}, {32, 172}, {32, 180}, {32, 189}, {32, 197}, {32, 205}, {32, 213}, {32, 222}, {32, 230}, {32, 238}, {32, 246}, {32, 255}],
    [{24, 0}, {24, 8}, {24, 16}, {24, 24}, {24, 32}, {24, 41}, {24, 49}, {24, 57}, {24, 65}, {24, 74}, {24, 82}, {24, 90}, {24, 98}, {24, 106}, {24, 115}, {24, 123}, {24, 131}, {24, 139}, {24, 148}, {24, 156}, {24, 164}, {24, 172}, {24, 180}, {24, 189}, {24, 197}, {24, 205}, {24, 213}, {24, 222}, {24, 230}, {24, 238}, {24, 246}, {24, 255}],
    [{16, 0}, {16, 8}, {16, 16}, {16, 24}, {16, 32}, {16, 41}, {16, 49}, {16, 57}, {16, 65}, {16, 74}, {16, 82}, {16, 90}, {16, 98}, {16, 106}, {16, 115}, {16, 123}, {16, 131}, {16, 139}, {16, 148}, {16, 156}, {16, 164}, {16, 172}, {16, 180}, {16, 189}, {16, 197}, {16, 205}, {16, 213}, {16, 222}, {16, 230}, {16, 238}, {16, 246}, {16, 255}],
    [{8, 0}, {8, 8}, {8, 16}, {8, 24}, {8, 32}, {8, 41}, {8, 49}, {8, 57}, {8, 65}, {8, 74}, {8, 82}, {8, 90}, {8, 98}, {8, 106}, {8, 115}, {8, 123}, {8, 131}, {8, 139}, {8, 148}, {8, 156}, {8, 164}, {8, 172}, {8, 180}, {8, 189}, {8, 197}, {8, 205}, {8, 213}, {8, 222}, {8, 230}, {8, 238}, {8, 246}, {8, 255}],
    [{0, 0}, {0, 8}, {0, 16}, {0, 24}, {0, 32}, {0, 41}, {0, 49}, {0, 57}, {0, 65}, {0, 74}, {0, 82}, {0, 90}, {0, 98}, {0, 106}, {0, 115}, {0, 123}, {0, 131}, {0, 139}, {0, 148}, {0, 156}, {0, 164}, {0, 172}, {0, 180}, {0, 189}, {0, 197}, {0, 205}, {0, 213}, {0, 222}, {0, 230}, {0, 238}, {0, 246}, {0, 255}]
  ]

  test "8 bit grayscale with alpha channel" do
    {:ok, image} = Imagineer.load(@test_path <> "basn4a08.png")

    assert image.height == 32
    assert image.width == 32

    assert image.color_format == :grayscale_alpha8
    assert image.compression == :zlib
    assert image.color_type == 4
    assert image.interlace_method == 0
    assert image.gamma == 1.0
    assert image.bit_depth == 8
    assert image.mask == nil
    assert image.format == :png
    assert image.mime_type == "image/png"
    assert image.palette == []

    assert_pixels_match(image.pixels, @actual_pixels)

    :ok = Imagineer.write(image, @tmp_path <> "basn4a08_test.png")
    {:ok, image} = Imagineer.load(@tmp_path <> "basn4a08_test.png")

    assert image.height == 32
    assert image.width == 32

    assert image.color_format == :grayscale_alpha8
    assert image.compression == :zlib
    assert image.color_type == 4
    assert image.interlace_method == 0
    assert image.gamma == 1.0
    assert image.bit_depth == 8
    assert image.mask == nil
    assert image.format == :png
    assert image.mime_type == "image/png"
    assert image.palette == []

    assert_pixels_match(image.pixels, @actual_pixels)
  end

  @actual_pixels [
    [{0, 0}, {4228, 0}, {8456, 0}, {12684, 0}, {16912, 0}, {21140, 0}, {25368, 0}, {29596, 0}, {33824, 0}, {38052, 0}, {42280, 0}, {46508, 0}, {50736, 0}, {54964, 0}, {59192, 0}, {63420, 0}, {63420, 0}, {59192, 0}, {54964, 0}, {50736, 0}, {46508, 0}, {42280, 0}, {38052, 0}, {33824, 0}, {29596, 0}, {25368, 0}, {21140, 0}, {16912, 0}, {12684, 0}, {8456, 0}, {4228, 0}, {0, 0}],
    [{4228, 0}, {0, 4229}, {4519, 4229}, {9039, 4229}, {13558, 4229}, {18078, 4229}, {22598, 4229}, {27117, 4229}, {31637, 4229}, {36157, 4229}, {40676, 4229}, {45196, 4229}, {49716, 4229}, {54235, 4229}, {58755, 4229}, {63275, 4229}, {63275, 4229}, {58755, 4229}, {54235, 4229}, {49716, 4229}, {45196, 4229}, {40676, 4229}, {36157, 4229}, {31637, 4229}, {27117, 4229}, {22598, 4229}, {18078, 4229}, {13558, 4229}, {9039, 4229}, {4519, 4229}, {0, 4229}, {4228, 0}],
    [{8456, 0}, {4519, 4229}, {0, 8457}, {4854, 8457}, {9708, 8457}, {14563, 8457}, {19417, 8457}, {24272, 8457}, {29126, 8457}, {33981, 8457}, {38835, 8457}, {43689, 8457}, {48544, 8457}, {53398, 8457}, {58253, 8457}, {63107, 8457}, {63107, 8457}, {58253, 8457}, {53398, 8457}, {48544, 8457}, {43689, 8457}, {38835, 8457}, {33981, 8457}, {29126, 8457}, {24272, 8457}, {19417, 8457}, {14563, 8457}, {9708, 8457}, {4854, 8457}, {0, 8457}, {4519, 4229}, {8456, 0}],
    [{12684, 0}, {9039, 4229}, {4854, 8457}, {0, 12685}, {5242, 12685}, {10485, 12685}, {15728, 12685}, {20971, 12685}, {26213, 12685}, {31456, 12685}, {36699, 12685}, {41942, 12685}, {47185, 12685}, {52427, 12685}, {57670, 12685}, {62913, 12685}, {62913, 12685}, {57670, 12685}, {52427, 12685}, {47185, 12685}, {41942, 12685}, {36699, 12685}, {31456, 12685}, {26213, 12685}, {20971, 12685}, {15728, 12685}, {10485, 12685}, {5242, 12685}, {0, 12685}, {4854, 8457}, {9039, 4229}, {12684, 0}],
    [{16912, 0}, {13558, 4229}, {9708, 8457}, {5242, 12685}, {0, 16913}, {5698, 16913}, {11397, 16913}, {17096, 16913}, {22794, 16913}, {28493, 16913}, {34192, 16913}, {39890, 16913}, {45589, 16913}, {51288, 16913}, {56986, 16913}, {62685, 16913}, {62685, 16913}, {56986, 16913}, {51288, 16913}, {45589, 16913}, {39890, 16913}, {34192, 16913}, {28493, 16913}, {22794, 16913}, {17096, 16913}, {11397, 16913}, {5698, 16913}, {0, 16913}, {5242, 12685}, {9708, 8457}, {13558, 4229}, {16912, 0}],
    [{21140, 0}, {18078, 4229}, {14563, 8457}, {10485, 12685}, {5698, 16913}, {0, 21141}, {6241, 21141}, {12482, 21141}, {18724, 21141}, {24965, 21141}, {31207, 21141}, {37448, 21141}, {43689, 21141}, {49931, 21141}, {56172, 21141}, {62414, 21141}, {62414, 21141}, {56172, 21141}, {49931, 21141}, {43689, 21141}, {37448, 21141}, {31207, 21141}, {24965, 21141}, {18724, 21141}, {12482, 21141}, {6241, 21141}, {0, 21141}, {5698, 16913}, {10485, 12685}, {14563, 8457}, {18078, 4229}, {21140, 0}],
    [{25368, 0}, {22598, 4229}, {19417, 8457}, {15728, 12685}, {11397, 16913}, {6241, 21141}, {0, 25369}, {6898, 25369}, {13796, 25369}, {20695, 25369}, {27593, 25369}, {34492, 25369}, {41390, 25369}, {48288, 25369}, {55187, 25369}, {62085, 25369}, {62085, 25369}, {55187, 25369}, {48288, 25369}, {41390, 25369}, {34492, 25369}, {27593, 25369}, {20695, 25369}, {13796, 25369}, {6898, 25369}, {0, 25369}, {6241, 21141}, {11397, 16913}, {15728, 12685}, {19417, 8457}, {22598, 4229}, {25368, 0}],
    [{29596, 0}, {27117, 4229}, {24272, 8457}, {20971, 12685}, {17096, 16913}, {12482, 21141}, {6898, 25369}, {0, 29597}, {7709, 29597}, {15419, 29597}, {23129, 29597}, {30839, 29597}, {38549, 29597}, {46259, 29597}, {53969, 29597}, {61679, 29597}, {61679, 29597}, {53969, 29597}, {46259, 29597}, {38549, 29597}, {30839, 29597}, {23129, 29597}, {15419, 29597}, {7709, 29597}, {0, 29597}, {6898, 25369}, {12482, 21141}, {17096, 16913}, {20971, 12685}, {24272, 8457}, {27117, 4229}, {29596, 0}],
    [{33824, 0}, {31637, 4229}, {29126, 8457}, {26213, 12685}, {22794, 16913}, {18724, 21141}, {13796, 25369}, {7709, 29597}, {0, 33825}, {8737, 33825}, {17475, 33825}, {26213, 33825}, {34951, 33825}, {43689, 33825}, {52427, 33825}, {61165, 33825}, {61165, 33825}, {52427, 33825}, {43689, 33825}, {34951, 33825}, {26213, 33825}, {17475, 33825}, {8737, 33825}, {0, 33825}, {7709, 29597}, {13796, 25369}, {18724, 21141}, {22794, 16913}, {26213, 12685}, {29126, 8457}, {31637, 4229}, {33824, 0}],
    [{38052, 0}, {36157, 4229}, {33981, 8457}, {31456, 12685}, {28493, 16913}, {24965, 21141}, {20695, 25369}, {15419, 29597}, {8737, 33825}, {0, 38053}, {10082, 38053}, {20164, 38053}, {30246, 38053}, {40329, 38053}, {50411, 38053}, {60493, 38053}, {60493, 38053}, {50411, 38053}, {40329, 38053}, {30246, 38053}, {20164, 38053}, {10082, 38053}, {0, 38053}, {8737, 33825}, {15419, 29597}, {20695, 25369}, {24965, 21141}, {28493, 16913}, {31456, 12685}, {33981, 8457}, {36157, 4229}, {38052, 0}],
    [{42280, 0}, {40676, 4229}, {38835, 8457}, {36699, 12685}, {34192, 16913}, {31207, 21141}, {27593, 25369}, {23129, 29597}, {17475, 33825}, {10082, 38053}, {0, 42281}, {11915, 42281}, {23830, 42281}, {35746, 42281}, {47661, 42281}, {59577, 42281}, {59577, 42281}, {47661, 42281}, {35746, 42281}, {23830, 42281}, {11915, 42281}, {0, 42281}, {10082, 38053}, {17475, 33825}, {23129, 29597}, {27593, 25369}, {31207, 21141}, {34192, 16913}, {36699, 12685}, {38835, 8457}, {40676, 4229}, {42280, 0}],
    [{46508, 0}, {45196, 4229}, {43689, 8457}, {41942, 12685}, {39890, 16913}, {37448, 21141}, {34492, 25369}, {30839, 29597}, {26213, 33825}, {20164, 38053}, {11915, 42281}, {0, 46509}, {14563, 46509}, {29126, 46509}, {43689, 46509}, {58253, 46509}, {58253, 46509}, {43689, 46509}, {29126, 46509}, {14563, 46509}, {0, 46509}, {11915, 42281}, {20164, 38053}, {26213, 33825}, {30839, 29597}, {34492, 25369}, {37448, 21141}, {39890, 16913}, {41942, 12685}, {43689, 8457}, {45196, 4229}, {46508, 0}],
    [{50736, 0}, {49716, 4229}, {48544, 8457}, {47185, 12685}, {45589, 16913}, {43689, 21141}, {41390, 25369}, {38549, 29597}, {34951, 33825}, {30246, 38053}, {23830, 42281}, {14563, 46509}, {0, 50737}, {18724, 50737}, {37448, 50737}, {56172, 50737}, {56172, 50737}, {37448, 50737}, {18724, 50737}, {0, 50737}, {14563, 46509}, {23830, 42281}, {30246, 38053}, {34951, 33825}, {38549, 29597}, {41390, 25369}, {43689, 21141}, {45589, 16913}, {47185, 12685}, {48544, 8457}, {49716, 4229}, {50736, 0}],
    [{54964, 0}, {54235, 4229}, {53398, 8457}, {52427, 12685}, {51288, 16913}, {49931, 21141}, {48288, 25369}, {46259, 29597}, {43689, 33825}, {40329, 38053}, {35746, 42281}, {29126, 46509}, {18724, 50737}, {0, 54965}, {26213, 54965}, {52427, 54965}, {52427, 54965}, {26213, 54965}, {0, 54965}, {18724, 50737}, {29126, 46509}, {35746, 42281}, {40329, 38053}, {43689, 33825}, {46259, 29597}, {48288, 25369}, {49931, 21141}, {51288, 16913}, {52427, 12685}, {53398, 8457}, {54235, 4229}, {54964, 0}],
    [{59192, 0}, {58755, 4229}, {58253, 8457}, {57670, 12685}, {56986, 16913}, {56172, 21141}, {55187, 25369}, {53969, 29597}, {52427, 33825}, {50411, 38053}, {47661, 42281}, {43689, 46509}, {37448, 50737}, {26213, 54965}, {0, 59193}, {43689, 59193}, {43689, 59193}, {0, 59193}, {26213, 54965}, {37448, 50737}, {43689, 46509}, {47661, 42281}, {50411, 38053}, {52427, 33825}, {53969, 29597}, {55187, 25369}, {56172, 21141}, {56986, 16913}, {57670, 12685}, {58253, 8457}, {58755, 4229}, {59192, 0}],
    [{63420, 0}, {63275, 4229}, {63107, 8457}, {62913, 12685}, {62685, 16913}, {62414, 21141}, {62085, 25369}, {61679, 29597}, {61165, 33825}, {60493, 38053}, {59577, 42281}, {58253, 46509}, {56172, 50737}, {52427, 54965}, {43689, 59193}, {0, 63421}, {0, 63421}, {43689, 59193}, {52427, 54965}, {56172, 50737}, {58253, 46509}, {59577, 42281}, {60493, 38053}, {61165, 33825}, {61679, 29597}, {62085, 25369}, {62414, 21141}, {62685, 16913}, {62913, 12685}, {63107, 8457}, {63275, 4229}, {63420, 0}],
    [{63420, 0}, {63275, 4229}, {63107, 8457}, {62913, 12685}, {62685, 16913}, {62414, 21141}, {62085, 25369}, {61679, 29597}, {61165, 33825}, {60493, 38053}, {59577, 42281}, {58253, 46509}, {56172, 50737}, {52427, 54965}, {43689, 59193}, {0, 63421}, {0, 63421}, {43689, 59193}, {52427, 54965}, {56172, 50737}, {58253, 46509}, {59577, 42281}, {60493, 38053}, {61165, 33825}, {61679, 29597}, {62085, 25369}, {62414, 21141}, {62685, 16913}, {62913, 12685}, {63107, 8457}, {63275, 4229}, {63420, 0}],
    [{59192, 0}, {58755, 4229}, {58253, 8457}, {57670, 12685}, {56986, 16913}, {56172, 21141}, {55187, 25369}, {53969, 29597}, {52427, 33825}, {50411, 38053}, {47661, 42281}, {43689, 46509}, {37448, 50737}, {26213, 54965}, {0, 59193}, {43689, 59193}, {43689, 59193}, {0, 59193}, {26213, 54965}, {37448, 50737}, {43689, 46509}, {47661, 42281}, {50411, 38053}, {52427, 33825}, {53969, 29597}, {55187, 25369}, {56172, 21141}, {56986, 16913}, {57670, 12685}, {58253, 8457}, {58755, 4229}, {59192, 0}],
    [{54964, 0}, {54235, 4229}, {53398, 8457}, {52427, 12685}, {51288, 16913}, {49931, 21141}, {48288, 25369}, {46259, 29597}, {43689, 33825}, {40329, 38053}, {35746, 42281}, {29126, 46509}, {18724, 50737}, {0, 54965}, {26213, 54965}, {52427, 54965}, {52427, 54965}, {26213, 54965}, {0, 54965}, {18724, 50737}, {29126, 46509}, {35746, 42281}, {40329, 38053}, {43689, 33825}, {46259, 29597}, {48288, 25369}, {49931, 21141}, {51288, 16913}, {52427, 12685}, {53398, 8457}, {54235, 4229}, {54964, 0}],
    [{50736, 0}, {49716, 4229}, {48544, 8457}, {47185, 12685}, {45589, 16913}, {43689, 21141}, {41390, 25369}, {38549, 29597}, {34951, 33825}, {30246, 38053}, {23830, 42281}, {14563, 46509}, {0, 50737}, {18724, 50737}, {37448, 50737}, {56172, 50737}, {56172, 50737}, {37448, 50737}, {18724, 50737}, {0, 50737}, {14563, 46509}, {23830, 42281}, {30246, 38053}, {34951, 33825}, {38549, 29597}, {41390, 25369}, {43689, 21141}, {45589, 16913}, {47185, 12685}, {48544, 8457}, {49716, 4229}, {50736, 0}],
    [{46508, 0}, {45196, 4229}, {43689, 8457}, {41942, 12685}, {39890, 16913}, {37448, 21141}, {34492, 25369}, {30839, 29597}, {26213, 33825}, {20164, 38053}, {11915, 42281}, {0, 46509}, {14563, 46509}, {29126, 46509}, {43689, 46509}, {58253, 46509}, {58253, 46509}, {43689, 46509}, {29126, 46509}, {14563, 46509}, {0, 46509}, {11915, 42281}, {20164, 38053}, {26213, 33825}, {30839, 29597}, {34492, 25369}, {37448, 21141}, {39890, 16913}, {41942, 12685}, {43689, 8457}, {45196, 4229}, {46508, 0}],
    [{42280, 0}, {40676, 4229}, {38835, 8457}, {36699, 12685}, {34192, 16913}, {31207, 21141}, {27593, 25369}, {23129, 29597}, {17475, 33825}, {10082, 38053}, {0, 42281}, {11915, 42281}, {23830, 42281}, {35746, 42281}, {47661, 42281}, {59577, 42281}, {59577, 42281}, {47661, 42281}, {35746, 42281}, {23830, 42281}, {11915, 42281}, {0, 42281}, {10082, 38053}, {17475, 33825}, {23129, 29597}, {27593, 25369}, {31207, 21141}, {34192, 16913}, {36699, 12685}, {38835, 8457}, {40676, 4229}, {42280, 0}],
    [{38052, 0}, {36157, 4229}, {33981, 8457}, {31456, 12685}, {28493, 16913}, {24965, 21141}, {20695, 25369}, {15419, 29597}, {8737, 33825}, {0, 38053}, {10082, 38053}, {20164, 38053}, {30246, 38053}, {40329, 38053}, {50411, 38053}, {60493, 38053}, {60493, 38053}, {50411, 38053}, {40329, 38053}, {30246, 38053}, {20164, 38053}, {10082, 38053}, {0, 38053}, {8737, 33825}, {15419, 29597}, {20695, 25369}, {24965, 21141}, {28493, 16913}, {31456, 12685}, {33981, 8457}, {36157, 4229}, {38052, 0}],
    [{33824, 0}, {31637, 4229}, {29126, 8457}, {26213, 12685}, {22794, 16913}, {18724, 21141}, {13796, 25369}, {7709, 29597}, {0, 33825}, {8737, 33825}, {17475, 33825}, {26213, 33825}, {34951, 33825}, {43689, 33825}, {52427, 33825}, {61165, 33825}, {61165, 33825}, {52427, 33825}, {43689, 33825}, {34951, 33825}, {26213, 33825}, {17475, 33825}, {8737, 33825}, {0, 33825}, {7709, 29597}, {13796, 25369}, {18724, 21141}, {22794, 16913}, {26213, 12685}, {29126, 8457}, {31637, 4229}, {33824, 0}],
    [{29596, 0}, {27117, 4229}, {24272, 8457}, {20971, 12685}, {17096, 16913}, {12482, 21141}, {6898, 25369}, {0, 29597}, {7709, 29597}, {15419, 29597}, {23129, 29597}, {30839, 29597}, {38549, 29597}, {46259, 29597}, {53969, 29597}, {61679, 29597}, {61679, 29597}, {53969, 29597}, {46259, 29597}, {38549, 29597}, {30839, 29597}, {23129, 29597}, {15419, 29597}, {7709, 29597}, {0, 29597}, {6898, 25369}, {12482, 21141}, {17096, 16913}, {20971, 12685}, {24272, 8457}, {27117, 4229}, {29596, 0}],
    [{25368, 0}, {22598, 4229}, {19417, 8457}, {15728, 12685}, {11397, 16913}, {6241, 21141}, {0, 25369}, {6898, 25369}, {13796, 25369}, {20695, 25369}, {27593, 25369}, {34492, 25369}, {41390, 25369}, {48288, 25369}, {55187, 25369}, {62085, 25369}, {62085, 25369}, {55187, 25369}, {48288, 25369}, {41390, 25369}, {34492, 25369}, {27593, 25369}, {20695, 25369}, {13796, 25369}, {6898, 25369}, {0, 25369}, {6241, 21141}, {11397, 16913}, {15728, 12685}, {19417, 8457}, {22598, 4229}, {25368, 0}],
    [{21140, 0}, {18078, 4229}, {14563, 8457}, {10485, 12685}, {5698, 16913}, {0, 21141}, {6241, 21141}, {12482, 21141}, {18724, 21141}, {24965, 21141}, {31207, 21141}, {37448, 21141}, {43689, 21141}, {49931, 21141}, {56172, 21141}, {62414, 21141}, {62414, 21141}, {56172, 21141}, {49931, 21141}, {43689, 21141}, {37448, 21141}, {31207, 21141}, {24965, 21141}, {18724, 21141}, {12482, 21141}, {6241, 21141}, {0, 21141}, {5698, 16913}, {10485, 12685}, {14563, 8457}, {18078, 4229}, {21140, 0}],
    [{16912, 0}, {13558, 4229}, {9708, 8457}, {5242, 12685}, {0, 16913}, {5698, 16913}, {11397, 16913}, {17096, 16913}, {22794, 16913}, {28493, 16913}, {34192, 16913}, {39890, 16913}, {45589, 16913}, {51288, 16913}, {56986, 16913}, {62685, 16913}, {62685, 16913}, {56986, 16913}, {51288, 16913}, {45589, 16913}, {39890, 16913}, {34192, 16913}, {28493, 16913}, {22794, 16913}, {17096, 16913}, {11397, 16913}, {5698, 16913}, {0, 16913}, {5242, 12685}, {9708, 8457}, {13558, 4229}, {16912, 0}],
    [{12684, 0}, {9039, 4229}, {4854, 8457}, {0, 12685}, {5242, 12685}, {10485, 12685}, {15728, 12685}, {20971, 12685}, {26213, 12685}, {31456, 12685}, {36699, 12685}, {41942, 12685}, {47185, 12685}, {52427, 12685}, {57670, 12685}, {62913, 12685}, {62913, 12685}, {57670, 12685}, {52427, 12685}, {47185, 12685}, {41942, 12685}, {36699, 12685}, {31456, 12685}, {26213, 12685}, {20971, 12685}, {15728, 12685}, {10485, 12685}, {5242, 12685}, {0, 12685}, {4854, 8457}, {9039, 4229}, {12684, 0}],
    [{8456, 0}, {4519, 4229}, {0, 8457}, {4854, 8457}, {9708, 8457}, {14563, 8457}, {19417, 8457}, {24272, 8457}, {29126, 8457}, {33981, 8457}, {38835, 8457}, {43689, 8457}, {48544, 8457}, {53398, 8457}, {58253, 8457}, {63107, 8457}, {63107, 8457}, {58253, 8457}, {53398, 8457}, {48544, 8457}, {43689, 8457}, {38835, 8457}, {33981, 8457}, {29126, 8457}, {24272, 8457}, {19417, 8457}, {14563, 8457}, {9708, 8457}, {4854, 8457}, {0, 8457}, {4519, 4229}, {8456, 0}],
    [{4228, 0}, {0, 4229}, {4519, 4229}, {9039, 4229}, {13558, 4229}, {18078, 4229}, {22598, 4229}, {27117, 4229}, {31637, 4229}, {36157, 4229}, {40676, 4229}, {45196, 4229}, {49716, 4229}, {54235, 4229}, {58755, 4229}, {63275, 4229}, {63275, 4229}, {58755, 4229}, {54235, 4229}, {49716, 4229}, {45196, 4229}, {40676, 4229}, {36157, 4229}, {31637, 4229}, {27117, 4229}, {22598, 4229}, {18078, 4229}, {13558, 4229}, {9039, 4229}, {4519, 4229}, {0, 4229}, {4228, 0}],
    [{0, 0}, {4228, 0}, {8456, 0}, {12684, 0}, {16912, 0}, {21140, 0}, {25368, 0}, {29596, 0}, {33824, 0}, {38052, 0}, {42280, 0}, {46508, 0}, {50736, 0}, {54964, 0}, {59192, 0}, {63420, 0}, {63420, 0}, {59192, 0}, {54964, 0}, {50736, 0}, {46508, 0}, {42280, 0}, {38052, 0}, {33824, 0}, {29596, 0}, {25368, 0}, {21140, 0}, {16912, 0}, {12684, 0}, {8456, 0}, {4228, 0}, {0, 0}]
  ]
  test "16 bit grayscale with alpha channel" do
    {:ok, image} = Imagineer.load(@test_path <> "basn4a16.png")

    assert image.height == 32
    assert image.width == 32

    assert image.color_format == :grayscale_alpha16
    assert image.compression == :zlib
    assert image.color_type == 4
    assert image.interlace_method == 0
    assert image.gamma == 1.0
    assert image.bit_depth == 16
    assert image.mask == nil
    assert image.format == :png
    assert image.mime_type == "image/png"
    assert image.palette == []

    assert_pixels_match(image.pixels, @actual_pixels)

    :ok = Imagineer.write(image, @tmp_path <> "basn4a16_test.png")
    {:ok, image} = Imagineer.load(@tmp_path <> "basn4a16_test.png")

    assert image.height == 32
    assert image.width == 32

    assert image.color_format == :grayscale_alpha16
    assert image.compression == :zlib
    assert image.color_type == 4
    assert image.interlace_method == 0
    assert image.gamma == 1.0
    assert image.bit_depth == 16
    assert image.mask == nil
    assert image.format == :png
    assert image.mime_type == "image/png"
    assert image.palette == []

    assert_pixels_match(image.pixels, @actual_pixels)
  end

  defp assert_pixels_match(parsed_pixels, actual_pixels) do
    Enum.zip(parsed_pixels, actual_pixels)
    |> Enum.with_index
    |> Enum.each(fn
      ({{parsed, actual}, index}) ->
        assert(actual == parsed, """
          row #{index + 1} is fucked
          \texpected: #{inspect actual}
          \tgot: #{inspect parsed}
        """)
    end)
  end
end