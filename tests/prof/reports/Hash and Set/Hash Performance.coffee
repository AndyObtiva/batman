helpers = require 'sha_summarizer'

keys = ['hash performance: object-key setting', 'hash performance: object-key retrieval', 'hash performance: string-key setting', 'hash performance: string-key retrieval']
shas = helpers.getAvailableShas(keys)

header "Setting Speed (milliseconds)"
barchart helpers.reportKeysAcrossShas([keys[0], keys[2]], shas)

header "Getting Speed (milliseconds)"
barchart helpers.reportKeysAcrossShas([keys[1], keys[3]], shas)
