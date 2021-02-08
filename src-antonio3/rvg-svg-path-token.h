#ifndef RVG_SVG_PATH_TOKEN_H
#define RVG_SVG_PATH_TOKEN_H

#include <iosfwd>
#include <type_traits>
#include <iterator>

#include "rvg-floatint.h"

namespace rvg {

struct svg_path_token {

    enum class e_type { command, number, underflow, overflow, error, end };

    bool is_command(void) const { return type == e_type::command; }
    bool is_number(void) const { return type == e_type::number; }

    svg_path_token(svg_path_token::e_type t, rvgf f): type(t), value(f) { ; }

    svg_path_token(svg_path_token::e_type t, rvgi i): type(t), value(i) { ; }

    svg_path_token(): type(e_type::error), value(rvgi(0)) { ; }

    // automatic convertion from float to svg_path_token
    svg_path_token(rvgf f): type(e_type::number), value(f) { ; }

    e_type type;

    floatint value;
};

std::ostream &operator<<(std::ostream &out, const svg_path_token &token);

template <typename IT>
using is_an_svg_path_token_iterator = std::integral_constant<bool,
    std::is_base_of<std::input_iterator_tag, typename std::iterator_traits<IT>::iterator_category>::value &&
    std::is_same<typename std::iterator_traits<IT>::value_type, svg_path_token>::value>;

} // namespace rvg

#endif
