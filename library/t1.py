#!/usr/bin/env python
# -*- coding: utf-8 -*-
#

import datetime
from ansible.module_utils.basic import AnsibleModule

 
def main():
    date = str(datetime.datetime.now())
    module = AnsibleModule(argument_spec={})
    response = {'time': date}
    module.exit_json(changed=False, meta=response)
 
 
if __name__ == '__main__':  
    main()
