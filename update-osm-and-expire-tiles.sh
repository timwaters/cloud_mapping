#!/bin/sh

osmosis --read-replication-interval  --simplify-change --write-xml-change changes.osc.gz

osm2pgsql -d gis -S default.style -s -C 20000 -a changes.osc.gz -e10-19 -o expire-10-19.list

ruby expand_expire_list.rb expire-10-19.list > expanded-expire-10-19.list

tilestache-clean.py --config=tilestache.cfg --tile-list=expanded-expire-10-19.list --layer=ALL
