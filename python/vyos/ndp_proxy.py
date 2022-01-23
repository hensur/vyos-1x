#!/usr/bin/env python3
#
# Copyright (C) 2022 VyOS maintainers and contributors
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 or later as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

import sys
import yaml
import os
import glob
from vyos.template import render

def generate_ndppd_object(config_file_path):
    gen_yaml = {}
    current_path = os.getcwd()
    os.chdir(config_file_path)
    for file_name in glob.glob("*.yaml"):
        print(f'Configuration file named {file_name} detected and ready to parse')
        with open(file_name) as f:
            yaml_object = yaml.load(f, Loader=yaml.FullLoader)
            for key in yaml_object.keys():
                if key not in gen_yaml:
                    gen_yaml.update({key: yaml_object[key]})
                else:
                    key_value = yaml_object[key]
                    for add_i in range(0, len(key_value)):
                        append = True
                        for i in range(0, len(gen_yaml[key])):
                            if gen_yaml[key][i]['prefix'] == key_value[add_i]['prefix']:
                                append = False
                        if append:
                            gen_yaml[key].append(key_value[add_i])

    os.chdir(config_file_path)
    return gen_yaml

def generate_ndppd_config(config_file_path, config_file, template):
    yaml_object = generate_ndppd_object(config_file_path)
    render(config_file, template, yaml_object)
    return None
