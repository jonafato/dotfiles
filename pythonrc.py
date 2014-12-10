import atexit
import os
import readline
import rlcompleter

# Tab completion
if 'libedit' in readline.__doc__:
    readline.parse_and_bind('bind ^I rl_complete')
else:
    readline.parse_and_bind('tab: complete')

# History
history_file = os.path.expanduser('~/.python_history')
try:
    readline.read_history_file(history_file)
except IOError:
    pass

atexit.register(readline.write_history_file, history_file)
