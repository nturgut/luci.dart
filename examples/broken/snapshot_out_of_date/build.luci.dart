// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart = 2.6
import 'package:luci/build.dart';

// A simple build graph. Contents not important as long as it's valid.
void main(List<String> args) => build(args, () {
  target(
    name: 'foo',
    agentProfiles: kLinuxAgent,
    runner: NoopRunner(),
    dependencies: [
      ':bar',
    ]
  );

  target(
    name: 'bar',
    agentProfiles: kLinuxAgent,
    runner: NoopRunner(),
  );
});

class NoopRunner implements TargetRunner {
  @override
  Future<void> run(Target target) async {}
}
