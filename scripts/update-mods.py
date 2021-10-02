#!/usr/bin/env python3

import click
import yaml
import re
import pprint

try:
    from yaml import CLoader as Loader, CDumper as Dumper
except ImportError:
    from yaml import Loader, Dumper


pp = pprint.PrettyPrinter(indent=2)

modRE = re.compile(r"https://www.curseforge.com/minecraft/mc-mods/([\w-]+)")
resourceRE = re.compile(r"https://www.curseforge.com/minecraft/texture-packs/([\w-]+)")

@click.command()
@click.option('-i', '--input', default="mods.md", help='Input file')
@click.option('-u', '--update', default="packmaker.yml", help='The packmaker yaml file to update')
def update(input, update):
  with open(input, 'r', encoding="utf-8") as i_file:
    content = i_file.read()
    mods = set(modRE.findall(content))
    resourcepacks = set(resourceRE.findall(content))

  #pp.pprint(mods)
  #pp.pprint(resourcepacks)

  with open(update, 'r', encoding="utf-8") as u_file:
    manifest = yaml.load(u_file.read(), Loader=Loader)

  #pp.pprint(manifest)

  old_mods = {}
  for mod_entry in manifest['mods']:
    for (name, opts) in mod_entry.items():
      if name in mods:
        old_mods[name] = opts
      else:
        print(f"filtering out mod {name}")

  # pp.pprint(old_mods)

  for m in mods:
    if m not in old_mods:
      old_mods[m] = {}
      print(f"added mod {m}")

  manifest['mods'] = [{k: v} for (k, v) in old_mods.items()]
  manifest['resourcepacks'] = [{r: {}} for r in resourcepacks]

  # pp.pprint(manifest)

  with open(update, 'w') as u_file:
    yaml.dump(
      manifest,
      u_file,
      Dumper=Dumper,
      explicit_start=True,
      width=100,
      indent=2,
    )
  

if __name__ == '__main__':
    update()
