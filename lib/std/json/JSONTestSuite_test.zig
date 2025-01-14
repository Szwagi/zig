// This file was generated by _generate_JSONTestSuite.zig
// These test cases are sourced from: https://github.com/nst/JSONTestSuite
const ok = @import("./test.zig").ok;
const err = @import("./test.zig").err;
const any = @import("./test.zig").any;

test "i_number_double_huge_neg_exp.json" {
    try any("[123.456e-789]");
}
test "i_number_huge_exp.json" {
    try any("[0.4e00669999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999969999999006]");
}
test "i_number_neg_int_huge_exp.json" {
    try any("[-1e+9999]");
}
test "i_number_pos_double_huge_exp.json" {
    try any("[1.5e+9999]");
}
test "i_number_real_neg_overflow.json" {
    try any("[-123123e100000]");
}
test "i_number_real_pos_overflow.json" {
    try any("[123123e100000]");
}
test "i_number_real_underflow.json" {
    try any("[123e-10000000]");
}
test "i_number_too_big_neg_int.json" {
    try any("[-123123123123123123123123123123]");
}
test "i_number_too_big_pos_int.json" {
    try any("[100000000000000000000]");
}
test "i_number_very_big_negative_int.json" {
    try any("[-237462374673276894279832749832423479823246327846]");
}
test "i_object_key_lone_2nd_surrogate.json" {
    try any("{\"\\uDFAA\":0}");
}
test "i_string_1st_surrogate_but_2nd_missing.json" {
    try any("[\"\\uDADA\"]");
}
test "i_string_1st_valid_surrogate_2nd_invalid.json" {
    try any("[\"\\uD888\\u1234\"]");
}
test "i_string_UTF-16LE_with_BOM.json" {
    try any("\xff\xfe[\x00\"\x00\xe9\x00\"\x00]\x00");
}
test "i_string_UTF-8_invalid_sequence.json" {
    try any("[\"\xe6\x97\xa5\xd1\x88\xfa\"]");
}
test "i_string_UTF8_surrogate_U+D800.json" {
    try any("[\"\xed\xa0\x80\"]");
}
test "i_string_incomplete_surrogate_and_escape_valid.json" {
    try any("[\"\\uD800\\n\"]");
}
test "i_string_incomplete_surrogate_pair.json" {
    try any("[\"\\uDd1ea\"]");
}
test "i_string_incomplete_surrogates_escape_valid.json" {
    try any("[\"\\uD800\\uD800\\n\"]");
}
test "i_string_invalid_lonely_surrogate.json" {
    try any("[\"\\ud800\"]");
}
test "i_string_invalid_surrogate.json" {
    try any("[\"\\ud800abc\"]");
}
test "i_string_invalid_utf-8.json" {
    try any("[\"\xff\"]");
}
test "i_string_inverted_surrogates_U+1D11E.json" {
    try any("[\"\\uDd1e\\uD834\"]");
}
test "i_string_iso_latin_1.json" {
    try any("[\"\xe9\"]");
}
test "i_string_lone_second_surrogate.json" {
    try any("[\"\\uDFAA\"]");
}
test "i_string_lone_utf8_continuation_byte.json" {
    try any("[\"\x81\"]");
}
test "i_string_not_in_unicode_range.json" {
    try any("[\"\xf4\xbf\xbf\xbf\"]");
}
test "i_string_overlong_sequence_2_bytes.json" {
    try any("[\"\xc0\xaf\"]");
}
test "i_string_overlong_sequence_6_bytes.json" {
    try any("[\"\xfc\x83\xbf\xbf\xbf\xbf\"]");
}
test "i_string_overlong_sequence_6_bytes_null.json" {
    try any("[\"\xfc\x80\x80\x80\x80\x80\"]");
}
test "i_string_truncated-utf-8.json" {
    try any("[\"\xe0\xff\"]");
}
test "i_string_utf16BE_no_BOM.json" {
    try any("\x00[\x00\"\x00\xe9\x00\"\x00]");
}
test "i_string_utf16LE_no_BOM.json" {
    try any("[\x00\"\x00\xe9\x00\"\x00]\x00");
}
test "i_structure_500_nested_arrays.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try any("[" ** 500 ++ "]" ** 500);
}
test "i_structure_UTF-8_BOM_empty_object.json" {
    try any("\xef\xbb\xbf{}");
}
test "n_array_1_true_without_comma.json" {
    try err("[1 true]");
}
test "n_array_a_invalid_utf8.json" {
    try err("[a\xe5]");
}
test "n_array_colon_instead_of_comma.json" {
    try err("[\"\": 1]");
}
test "n_array_comma_after_close.json" {
    try err("[\"\"],");
}
test "n_array_comma_and_number.json" {
    try err("[,1]");
}
test "n_array_double_comma.json" {
    try err("[1,,2]");
}
test "n_array_double_extra_comma.json" {
    try err("[\"x\",,]");
}
test "n_array_extra_close.json" {
    try err("[\"x\"]]");
}
test "n_array_extra_comma.json" {
    try err("[\"\",]");
}
test "n_array_incomplete.json" {
    try err("[\"x\"");
}
test "n_array_incomplete_invalid_value.json" {
    try err("[x");
}
test "n_array_inner_array_no_comma.json" {
    try err("[3[4]]");
}
test "n_array_invalid_utf8.json" {
    try err("[\xff]");
}
test "n_array_items_separated_by_semicolon.json" {
    try err("[1:2]");
}
test "n_array_just_comma.json" {
    try err("[,]");
}
test "n_array_just_minus.json" {
    try err("[-]");
}
test "n_array_missing_value.json" {
    try err("[   , \"\"]");
}
test "n_array_newlines_unclosed.json" {
    try err("[\"a\",\n4\n,1,");
}
test "n_array_number_and_comma.json" {
    try err("[1,]");
}
test "n_array_number_and_several_commas.json" {
    try err("[1,,]");
}
test "n_array_spaces_vertical_tab_formfeed.json" {
    try err("[\"\x0ba\"\\f]");
}
test "n_array_star_inside.json" {
    try err("[*]");
}
test "n_array_unclosed.json" {
    try err("[\"\"");
}
test "n_array_unclosed_trailing_comma.json" {
    try err("[1,");
}
test "n_array_unclosed_with_new_lines.json" {
    try err("[1,\n1\n,1");
}
test "n_array_unclosed_with_object_inside.json" {
    try err("[{}");
}
test "n_incomplete_false.json" {
    try err("[fals]");
}
test "n_incomplete_null.json" {
    try err("[nul]");
}
test "n_incomplete_true.json" {
    try err("[tru]");
}
test "n_multidigit_number_then_00.json" {
    try err("123\x00");
}
test "n_number_++.json" {
    try err("[++1234]");
}
test "n_number_+1.json" {
    try err("[+1]");
}
test "n_number_+Inf.json" {
    try err("[+Inf]");
}
test "n_number_-01.json" {
    try err("[-01]");
}
test "n_number_-1.0..json" {
    try err("[-1.0.]");
}
test "n_number_-2..json" {
    try err("[-2.]");
}
test "n_number_-NaN.json" {
    try err("[-NaN]");
}
test "n_number_.-1.json" {
    try err("[.-1]");
}
test "n_number_.2e-3.json" {
    try err("[.2e-3]");
}
test "n_number_0.1.2.json" {
    try err("[0.1.2]");
}
test "n_number_0.3e+.json" {
    try err("[0.3e+]");
}
test "n_number_0.3e.json" {
    try err("[0.3e]");
}
test "n_number_0.e1.json" {
    try err("[0.e1]");
}
test "n_number_0_capital_E+.json" {
    try err("[0E+]");
}
test "n_number_0_capital_E.json" {
    try err("[0E]");
}
test "n_number_0e+.json" {
    try err("[0e+]");
}
test "n_number_0e.json" {
    try err("[0e]");
}
test "n_number_1.0e+.json" {
    try err("[1.0e+]");
}
test "n_number_1.0e-.json" {
    try err("[1.0e-]");
}
test "n_number_1.0e.json" {
    try err("[1.0e]");
}
test "n_number_1_000.json" {
    try err("[1 000.0]");
}
test "n_number_1eE2.json" {
    try err("[1eE2]");
}
test "n_number_2.e+3.json" {
    try err("[2.e+3]");
}
test "n_number_2.e-3.json" {
    try err("[2.e-3]");
}
test "n_number_2.e3.json" {
    try err("[2.e3]");
}
test "n_number_9.e+.json" {
    try err("[9.e+]");
}
test "n_number_Inf.json" {
    try err("[Inf]");
}
test "n_number_NaN.json" {
    try err("[NaN]");
}
test "n_number_U+FF11_fullwidth_digit_one.json" {
    try err("[\xef\xbc\x91]");
}
test "n_number_expression.json" {
    try err("[1+2]");
}
test "n_number_hex_1_digit.json" {
    try err("[0x1]");
}
test "n_number_hex_2_digits.json" {
    try err("[0x42]");
}
test "n_number_infinity.json" {
    try err("[Infinity]");
}
test "n_number_invalid+-.json" {
    try err("[0e+-1]");
}
test "n_number_invalid-negative-real.json" {
    try err("[-123.123foo]");
}
test "n_number_invalid-utf-8-in-bigger-int.json" {
    try err("[123\xe5]");
}
test "n_number_invalid-utf-8-in-exponent.json" {
    try err("[1e1\xe5]");
}
test "n_number_invalid-utf-8-in-int.json" {
    try err("[0\xe5]\n");
}
test "n_number_minus_infinity.json" {
    try err("[-Infinity]");
}
test "n_number_minus_sign_with_trailing_garbage.json" {
    try err("[-foo]");
}
test "n_number_minus_space_1.json" {
    try err("[- 1]");
}
test "n_number_neg_int_starting_with_zero.json" {
    try err("[-012]");
}
test "n_number_neg_real_without_int_part.json" {
    try err("[-.123]");
}
test "n_number_neg_with_garbage_at_end.json" {
    try err("[-1x]");
}
test "n_number_real_garbage_after_e.json" {
    try err("[1ea]");
}
test "n_number_real_with_invalid_utf8_after_e.json" {
    try err("[1e\xe5]");
}
test "n_number_real_without_fractional_part.json" {
    try err("[1.]");
}
test "n_number_starting_with_dot.json" {
    try err("[.123]");
}
test "n_number_with_alpha.json" {
    try err("[1.2a-3]");
}
test "n_number_with_alpha_char.json" {
    try err("[1.8011670033376514H-308]");
}
test "n_number_with_leading_zero.json" {
    try err("[012]");
}
test "n_object_bad_value.json" {
    try err("[\"x\", truth]");
}
test "n_object_bracket_key.json" {
    try err("{[: \"x\"}\n");
}
test "n_object_comma_instead_of_colon.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"x\", null}");
}
test "n_object_double_colon.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"x\"::\"b\"}");
}
test "n_object_emoji.json" {
    try err("{\xf0\x9f\x87\xa8\xf0\x9f\x87\xad}");
}
test "n_object_garbage_at_end.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\":\"a\" 123}");
}
test "n_object_key_with_single_quotes.json" {
    try err("{key: 'value'}");
}
test "n_object_lone_continuation_byte_in_key_and_trailing_comma.json" {
    try err("{\"\xb9\":\"0\",}");
}
test "n_object_missing_colon.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\" b}");
}
test "n_object_missing_key.json" {
    try err("{:\"b\"}");
}
test "n_object_missing_semicolon.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\" \"b\"}");
}
test "n_object_missing_value.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\":");
}
test "n_object_no-colon.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\"");
}
test "n_object_non_string_key.json" {
    try err("{1:1}");
}
test "n_object_non_string_key_but_huge_number_instead.json" {
    try err("{9999E9999:1}");
}
test "n_object_repeated_null_null.json" {
    try err("{null:null,null:null}");
}
test "n_object_several_trailing_commas.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"id\":0,,,,,}");
}
test "n_object_single_quote.json" {
    try err("{'a':0}");
}
test "n_object_trailing_comma.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"id\":0,}");
}
test "n_object_trailing_comment.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\":\"b\"}/**/");
}
test "n_object_trailing_comment_open.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\":\"b\"}/**//");
}
test "n_object_trailing_comment_slash_open.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\":\"b\"}//");
}
test "n_object_trailing_comment_slash_open_incomplete.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\":\"b\"}/");
}
test "n_object_two_commas_in_a_row.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\":\"b\",,\"c\":\"d\"}");
}
test "n_object_unquoted_key.json" {
    try err("{a: \"b\"}");
}
test "n_object_unterminated-value.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\":\"a");
}
test "n_object_with_single_string.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{ \"foo\" : \"bar\", \"a\" }");
}
test "n_object_with_trailing_garbage.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\":\"b\"}#");
}
test "n_single_space.json" {
    try err(" ");
}
test "n_string_1_surrogate_then_escape.json" {
    try err("[\"\\uD800\\\"]");
}
test "n_string_1_surrogate_then_escape_u.json" {
    try err("[\"\\uD800\\u\"]");
}
test "n_string_1_surrogate_then_escape_u1.json" {
    try err("[\"\\uD800\\u1\"]");
}
test "n_string_1_surrogate_then_escape_u1x.json" {
    try err("[\"\\uD800\\u1x\"]");
}
test "n_string_accentuated_char_no_quotes.json" {
    try err("[\xc3\xa9]");
}
test "n_string_backslash_00.json" {
    try err("[\"\\\x00\"]");
}
test "n_string_escape_x.json" {
    try err("[\"\\x00\"]");
}
test "n_string_escaped_backslash_bad.json" {
    try err("[\"\\\\\\\"]");
}
test "n_string_escaped_ctrl_char_tab.json" {
    try err("[\"\\\x09\"]");
}
test "n_string_escaped_emoji.json" {
    try err("[\"\\\xf0\x9f\x8c\x80\"]");
}
test "n_string_incomplete_escape.json" {
    try err("[\"\\\"]");
}
test "n_string_incomplete_escaped_character.json" {
    try err("[\"\\u00A\"]");
}
test "n_string_incomplete_surrogate.json" {
    try err("[\"\\uD834\\uDd\"]");
}
test "n_string_incomplete_surrogate_escape_invalid.json" {
    try err("[\"\\uD800\\uD800\\x\"]");
}
test "n_string_invalid-utf-8-in-escape.json" {
    try err("[\"\\u\xe5\"]");
}
test "n_string_invalid_backslash_esc.json" {
    try err("[\"\\a\"]");
}
test "n_string_invalid_unicode_escape.json" {
    try err("[\"\\uqqqq\"]");
}
test "n_string_invalid_utf8_after_escape.json" {
    try err("[\"\\\xe5\"]");
}
test "n_string_leading_uescaped_thinspace.json" {
    try err("[\\u0020\"asd\"]");
}
test "n_string_no_quotes_with_bad_escape.json" {
    try err("[\\n]");
}
test "n_string_single_doublequote.json" {
    try err("\"");
}
test "n_string_single_quote.json" {
    try err("['single quote']");
}
test "n_string_single_string_no_double_quotes.json" {
    try err("abc");
}
test "n_string_start_escape_unclosed.json" {
    try err("[\"\\");
}
test "n_string_unescaped_ctrl_char.json" {
    try err("[\"a\x00a\"]");
}
test "n_string_unescaped_newline.json" {
    try err("[\"new\nline\"]");
}
test "n_string_unescaped_tab.json" {
    try err("[\"\x09\"]");
}
test "n_string_unicode_CapitalU.json" {
    try err("\"\\UA66D\"");
}
test "n_string_with_trailing_garbage.json" {
    try err("\"\"x");
}
test "n_structure_100000_opening_arrays.json" {
    try err("[" ** 100000);
}
test "n_structure_U+2060_word_joined.json" {
    try err("[\xe2\x81\xa0]");
}
test "n_structure_UTF8_BOM_no_data.json" {
    try err("\xef\xbb\xbf");
}
test "n_structure_angle_bracket_..json" {
    try err("<.>");
}
test "n_structure_angle_bracket_null.json" {
    try err("[<null>]");
}
test "n_structure_array_trailing_garbage.json" {
    try err("[1]x");
}
test "n_structure_array_with_extra_array_close.json" {
    try err("[1]]");
}
test "n_structure_array_with_unclosed_string.json" {
    try err("[\"asd]");
}
test "n_structure_ascii-unicode-identifier.json" {
    try err("a\xc3\xa5");
}
test "n_structure_capitalized_True.json" {
    try err("[True]");
}
test "n_structure_close_unopened_array.json" {
    try err("1]");
}
test "n_structure_comma_instead_of_closing_brace.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"x\": true,");
}
test "n_structure_double_array.json" {
    try err("[][]");
}
test "n_structure_end_array.json" {
    try err("]");
}
test "n_structure_incomplete_UTF8_BOM.json" {
    try err("\xef\xbb{}");
}
test "n_structure_lone-invalid-utf-8.json" {
    try err("\xe5");
}
test "n_structure_lone-open-bracket.json" {
    try err("[");
}
test "n_structure_no_data.json" {
    try err("");
}
test "n_structure_null-byte-outside-string.json" {
    try err("[\x00]");
}
test "n_structure_number_with_trailing_garbage.json" {
    try err("2@");
}
test "n_structure_object_followed_by_closing_object.json" {
    try err("{}}");
}
test "n_structure_object_unclosed_no_value.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"\":");
}
test "n_structure_object_with_comment.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\":/*comment*/\"b\"}");
}
test "n_structure_object_with_trailing_garbage.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\": true} \"x\"");
}
test "n_structure_open_array_apostrophe.json" {
    try err("['");
}
test "n_structure_open_array_comma.json" {
    try err("[,");
}
test "n_structure_open_array_object.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("[{\"\":" ** 50000 ++ "\n");
}
test "n_structure_open_array_open_object.json" {
    try err("[{");
}
test "n_structure_open_array_open_string.json" {
    try err("[\"a");
}
test "n_structure_open_array_string.json" {
    try err("[\"a\"");
}
test "n_structure_open_object.json" {
    try err("{");
}
test "n_structure_open_object_close_array.json" {
    try err("{]");
}
test "n_structure_open_object_comma.json" {
    try err("{,");
}
test "n_structure_open_object_open_array.json" {
    try err("{[");
}
test "n_structure_open_object_open_string.json" {
    try err("{\"a");
}
test "n_structure_open_object_string_with_apostrophes.json" {
    try err("{'a'");
}
test "n_structure_open_open.json" {
    try err("[\"\\{[\"\\{[\"\\{[\"\\{");
}
test "n_structure_single_eacute.json" {
    try err("\xe9");
}
test "n_structure_single_star.json" {
    try err("*");
}
test "n_structure_trailing_#.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"a\":\"b\"}#{}");
}
test "n_structure_uescaped_LF_before_string.json" {
    try err("[\\u000A\"\"]");
}
test "n_structure_unclosed_array.json" {
    try err("[1");
}
test "n_structure_unclosed_array_partial_null.json" {
    try err("[ false, nul");
}
test "n_structure_unclosed_array_unfinished_false.json" {
    try err("[ true, fals");
}
test "n_structure_unclosed_array_unfinished_true.json" {
    try err("[ false, tru");
}
test "n_structure_unclosed_object.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try err("{\"asd\":\"asd\"");
}
test "n_structure_unicode-identifier.json" {
    try err("\xc3\xa5");
}
test "n_structure_whitespace_U+2060_word_joiner.json" {
    try err("[\xe2\x81\xa0]");
}
test "n_structure_whitespace_formfeed.json" {
    try err("[\x0c]");
}
test "y_array_arraysWithSpaces.json" {
    try ok("[[]   ]");
}
test "y_array_empty-string.json" {
    try ok("[\"\"]");
}
test "y_array_empty.json" {
    try ok("[]");
}
test "y_array_ending_with_newline.json" {
    try ok("[\"a\"]");
}
test "y_array_false.json" {
    try ok("[false]");
}
test "y_array_heterogeneous.json" {
    try ok("[null, 1, \"1\", {}]");
}
test "y_array_null.json" {
    try ok("[null]");
}
test "y_array_with_1_and_newline.json" {
    try ok("[1\n]");
}
test "y_array_with_leading_space.json" {
    try ok(" [1]");
}
test "y_array_with_several_null.json" {
    try ok("[1,null,null,null,2]");
}
test "y_array_with_trailing_space.json" {
    try ok("[2] ");
}
test "y_number.json" {
    try ok("[123e65]");
}
test "y_number_0e+1.json" {
    try ok("[0e+1]");
}
test "y_number_0e1.json" {
    try ok("[0e1]");
}
test "y_number_after_space.json" {
    try ok("[ 4]");
}
test "y_number_double_close_to_zero.json" {
    try ok("[-0.000000000000000000000000000000000000000000000000000000000000000000000000000001]\n");
}
test "y_number_int_with_exp.json" {
    try ok("[20e1]");
}
test "y_number_minus_zero.json" {
    try ok("[-0]");
}
test "y_number_negative_int.json" {
    try ok("[-123]");
}
test "y_number_negative_one.json" {
    try ok("[-1]");
}
test "y_number_negative_zero.json" {
    try ok("[-0]");
}
test "y_number_real_capital_e.json" {
    try ok("[1E22]");
}
test "y_number_real_capital_e_neg_exp.json" {
    try ok("[1E-2]");
}
test "y_number_real_capital_e_pos_exp.json" {
    try ok("[1E+2]");
}
test "y_number_real_exponent.json" {
    try ok("[123e45]");
}
test "y_number_real_fraction_exponent.json" {
    try ok("[123.456e78]");
}
test "y_number_real_neg_exp.json" {
    try ok("[1e-2]");
}
test "y_number_real_pos_exponent.json" {
    try ok("[1e+2]");
}
test "y_number_simple_int.json" {
    try ok("[123]");
}
test "y_number_simple_real.json" {
    try ok("[123.456789]");
}
test "y_object.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try ok("{\"asd\":\"sdf\", \"dfg\":\"fgh\"}");
}
test "y_object_basic.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try ok("{\"asd\":\"sdf\"}");
}
test "y_object_duplicated_key.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try ok("{\"a\":\"b\",\"a\":\"c\"}");
}
test "y_object_duplicated_key_and_value.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try ok("{\"a\":\"b\",\"a\":\"b\"}");
}
test "y_object_empty.json" {
    try ok("{}");
}
test "y_object_empty_key.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try ok("{\"\":0}");
}
test "y_object_escaped_null_in_key.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try ok("{\"foo\\u0000bar\": 42}");
}
test "y_object_extreme_numbers.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try ok("{ \"min\": -1.0e+28, \"max\": 1.0e+28 }");
}
test "y_object_long_strings.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try ok("{\"x\":[{\"id\": \"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"}], \"id\": \"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"}");
}
test "y_object_simple.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try ok("{\"a\":[]}");
}
test "y_object_string_unicode.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try ok("{\"title\":\"\\u041f\\u043e\\u043b\\u0442\\u043e\\u0440\\u0430 \\u0417\\u0435\\u043c\\u043b\\u0435\\u043a\\u043e\\u043f\\u0430\" }");
}
test "y_object_with_newlines.json" {
    if (@import("builtin").zig_backend == .stage2_x86_64) return error.SkipZigTest;

    try ok("{\n\"a\": \"b\"\n}");
}
test "y_string_1_2_3_bytes_UTF-8_sequences.json" {
    try ok("[\"\\u0060\\u012a\\u12AB\"]");
}
test "y_string_accepted_surrogate_pair.json" {
    try ok("[\"\\uD801\\udc37\"]");
}
test "y_string_accepted_surrogate_pairs.json" {
    try ok("[\"\\ud83d\\ude39\\ud83d\\udc8d\"]");
}
test "y_string_allowed_escapes.json" {
    try ok("[\"\\\"\\\\\\/\\b\\f\\n\\r\\t\"]");
}
test "y_string_backslash_and_u_escaped_zero.json" {
    try ok("[\"\\\\u0000\"]");
}
test "y_string_backslash_doublequotes.json" {
    try ok("[\"\\\"\"]");
}
test "y_string_comments.json" {
    try ok("[\"a/*b*/c/*d//e\"]");
}
test "y_string_double_escape_a.json" {
    try ok("[\"\\\\a\"]");
}
test "y_string_double_escape_n.json" {
    try ok("[\"\\\\n\"]");
}
test "y_string_escaped_control_character.json" {
    try ok("[\"\\u0012\"]");
}
test "y_string_escaped_noncharacter.json" {
    try ok("[\"\\uFFFF\"]");
}
test "y_string_in_array.json" {
    try ok("[\"asd\"]");
}
test "y_string_in_array_with_leading_space.json" {
    try ok("[ \"asd\"]");
}
test "y_string_last_surrogates_1_and_2.json" {
    try ok("[\"\\uDBFF\\uDFFF\"]");
}
test "y_string_nbsp_uescaped.json" {
    try ok("[\"new\\u00A0line\"]");
}
test "y_string_nonCharacterInUTF-8_U+10FFFF.json" {
    try ok("[\"\xf4\x8f\xbf\xbf\"]");
}
test "y_string_nonCharacterInUTF-8_U+FFFF.json" {
    try ok("[\"\xef\xbf\xbf\"]");
}
test "y_string_null_escape.json" {
    try ok("[\"\\u0000\"]");
}
test "y_string_one-byte-utf-8.json" {
    try ok("[\"\\u002c\"]");
}
test "y_string_pi.json" {
    try ok("[\"\xcf\x80\"]");
}
test "y_string_reservedCharacterInUTF-8_U+1BFFF.json" {
    try ok("[\"\xf0\x9b\xbf\xbf\"]");
}
test "y_string_simple_ascii.json" {
    try ok("[\"asd \"]");
}
test "y_string_space.json" {
    try ok("\" \"");
}
test "y_string_surrogates_U+1D11E_MUSICAL_SYMBOL_G_CLEF.json" {
    try ok("[\"\\uD834\\uDd1e\"]");
}
test "y_string_three-byte-utf-8.json" {
    try ok("[\"\\u0821\"]");
}
test "y_string_two-byte-utf-8.json" {
    try ok("[\"\\u0123\"]");
}
test "y_string_u+2028_line_sep.json" {
    try ok("[\"\xe2\x80\xa8\"]");
}
test "y_string_u+2029_par_sep.json" {
    try ok("[\"\xe2\x80\xa9\"]");
}
test "y_string_uEscape.json" {
    try ok("[\"\\u0061\\u30af\\u30EA\\u30b9\"]");
}
test "y_string_uescaped_newline.json" {
    try ok("[\"new\\u000Aline\"]");
}
test "y_string_unescaped_char_delete.json" {
    try ok("[\"\x7f\"]");
}
test "y_string_unicode.json" {
    try ok("[\"\\uA66D\"]");
}
test "y_string_unicodeEscapedBackslash.json" {
    try ok("[\"\\u005C\"]");
}
test "y_string_unicode_2.json" {
    try ok("[\"\xe2\x8d\x82\xe3\x88\xb4\xe2\x8d\x82\"]");
}
test "y_string_unicode_U+10FFFE_nonchar.json" {
    try ok("[\"\\uDBFF\\uDFFE\"]");
}
test "y_string_unicode_U+1FFFE_nonchar.json" {
    try ok("[\"\\uD83F\\uDFFE\"]");
}
test "y_string_unicode_U+200B_ZERO_WIDTH_SPACE.json" {
    try ok("[\"\\u200B\"]");
}
test "y_string_unicode_U+2064_invisible_plus.json" {
    try ok("[\"\\u2064\"]");
}
test "y_string_unicode_U+FDD0_nonchar.json" {
    try ok("[\"\\uFDD0\"]");
}
test "y_string_unicode_U+FFFE_nonchar.json" {
    try ok("[\"\\uFFFE\"]");
}
test "y_string_unicode_escaped_double_quote.json" {
    try ok("[\"\\u0022\"]");
}
test "y_string_utf8.json" {
    try ok("[\"\xe2\x82\xac\xf0\x9d\x84\x9e\"]");
}
test "y_string_with_del_character.json" {
    try ok("[\"a\x7fa\"]");
}
test "y_structure_lonely_false.json" {
    try ok("false");
}
test "y_structure_lonely_int.json" {
    try ok("42");
}
test "y_structure_lonely_negative_real.json" {
    try ok("-0.1");
}
test "y_structure_lonely_null.json" {
    try ok("null");
}
test "y_structure_lonely_string.json" {
    try ok("\"asd\"");
}
test "y_structure_lonely_true.json" {
    try ok("true");
}
test "y_structure_string_empty.json" {
    try ok("\"\"");
}
test "y_structure_trailing_newline.json" {
    try ok("[\"a\"]\n");
}
test "y_structure_true_in_array.json" {
    try ok("[true]");
}
test "y_structure_whitespace_array.json" {
    try ok(" [] ");
}
