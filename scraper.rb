#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

sparq = 'SELECT DISTINCT ?item WHERE { ?item p:P39 [ ps:P39 wd:Q56235896 ; pq:P2937 wd:Q56235901 ] }'
ids = EveryPolitician::Wikidata.sparql(sparq)

EveryPolitician::Wikidata.scrape_wikidata(ids: ids)
