/**
 * Copyright (c) 2014-2015, Fabian Knorr
 *
 * This file is part of libgtkglcanvas.
 *
 * libgtkglcanvas is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * libgtkglcanvas is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with libgtkglcanvas. If not, see <http://www.gnu.org/licenses/>.
 */

#version 130

uniform mat4 projection;
uniform mat4 modelview;
in vec2 pos;
in vec3 color;

out vec3 var_color;

void main() {
    var_color = color;
    gl_Position = projection * modelview * vec4(pos, 0, 1);
}