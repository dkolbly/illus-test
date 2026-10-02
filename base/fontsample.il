package base;

import (
   "gitlab.com/donovan4/fufoo/sys/illus/std/path"
   "gitlab.com/donovan4/fufoo/sys/illus/std/font"
   "gitlab.com/donovan4/fufoo/sys/illus/std/text"
)

/// FontSample: one line of text in the named font family and weight,
/// for checking which font a server renders with (installed, Google,
/// or the Go fallback).
/// @component
module FontSample(family="MF Verify Mono", weight=400, label="Hamburgefonstiv 0123", size=8mm) {
  text.Typeset(label) {
    font.Family(family);
    font.Weight(weight);
    font.Size(size);
    path.Fill("black");
  }
}
