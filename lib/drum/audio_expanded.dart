  import 'package:flutter/material.dart';

import 'butonlar.dart';

Expanded AudioExpanded(Color renk1, Color renk2) {
    return Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Butonlar(renk1),
                ),
                Expanded(
                  child: Butonlar(renk2),
                ),
              ],
            ),
          );
  }