// SPDX-License-Identifier: MIT
// Copyright (c) 2026 VinSOC Cyber

/**
 * @name Extract all function/method definitions
 * @description Extracts function name, file, start line, end line for context lookup
 * @kind table
 * @id py/tool-functions
 */

import python

from Function f
select
  f.getName() as name,
  f.getLocation().getFile().getRelativePath() as file,
  f.getLocation().getStartLine() as start_line,
   f.getLastStatement().getLocation().getEndLine() as end_line,
  f.getScope().toString() as scope
