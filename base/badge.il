package base;

import (
   "gitlab.com/donovan4/fufoo/sys/illus/std/path"
   "gitlab.com/donovan4/fufoo/sys/illus/std/font"
   "gitlab.com/donovan4/fufoo/sys/illus/std/text"
)

// Inset is the margin between a tile's edge and a badge placed on it.
function Inset(size) = size/10;

// Badge: a round badge with a short label, drawn in its own frame,
// rect(0, 0, size, size).  The disc is filled with `tint`.
module Badge(size=8mm, label="!", tint="#d13212") {
  path.Path() {
    path.Stroke("white");
    path.Fill(tint);
    path.MoveTo(0, size/2);
    path.ArcTo(size, size/2, radius=[size/2, size/2]);
    path.ArcTo(0, size/2, radius=[size/2, size/2]);
    path.Close();
  }

  path.Translate(size/2, size*0.22) {
    text.Typeset(label, align="center") {
      font.Family("Go");
      font.Size(size/2);
      path.Fill("white");
    }
  }

  // an outline only, no named points, so a component drawing a Badge
  // on itself keeps its own n/e/s/w
  path.ConnectionSurface() {
    path.MoveTo(0, size/2);
    path.ArcTo(size, size/2, radius=[size/2, size/2]);
    path.ArcTo(0, size/2, radius=[size/2, size/2]);
    path.Close();
  }
}
