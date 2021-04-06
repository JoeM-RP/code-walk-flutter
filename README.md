# code-walk-flutter

Code Walk demo repository based on [FlutterCasts](https://github.com/StephenGrider/FlutterCasts)
from [Dart and Flutter: The Complete Developer's Guide](https://www.udemy.com/course/dart-and-flutter-the-complete-developers-guide/)

## What is a Code Walk?

A Code Walk is a group exercise in which a project team reviews a portion of code, step by step and offers constructive feedback on choices made and patterns implemented. Code Walks are an opportunity for a team to familiarize themselves with common practices & architectural patterns, deepen domain knowledge, and build comradarie.

In a Code Walk, a team member will volunteer to walk the rest of the team through a new bit of code, a refactor, or WIP feature. Starting at the "entry point" the leader will guide the rest of the team through each step of the process and point out notable features, landmarks, and pitfalls. During this time, the remaining team members will inquire about choices made, "edge cases", and look out for any missteps, similar to a standard Pull Request review. During the Code Walk, the leader should take notes, add comments/TODOs inline, or make edits on the fly for later review and refactor as needed.

## Things to look for on a Code Walk

Team members being lead on a Code Walk should keep an eye out for things the leader may have missed, while being mindful of their own understanding. During a Code Walk, team members may ask about error cases that may not be handled, patterns or concepts they are unfamiliar with, missing requirements or duplicated functionality.

- Pattern adherence (or anti-patterns)
- Duplicated logic or functionality (utils, etc)
- Non-linted conventions (class naming, organization, etc)
- Logic gaps & missing requirements

## Exercise

For this Code Walk, I have implemented a rudimentary Login Screen using the Bloc Pattern in Flutter. I'll guide the team through the work completed, and explain/defend my choice of the Bloc Pattern and call out any interting implementation choices made. As an aid, I have a [Feature Request](https://github.com/JoeM-RP/code-walk-flutter/issues/1) and a [Pull Request](https://github.com/JoeM-RP/code-walk-flutter/pull/2) open to help facillitate review, though a Code Walk would normall be done in an IDE. While not comprehensive, a list of possible "solutions" (i.e - feedback) is available for review [here](https://github.com/JoeM-RP/code-walk-flutter/pull/3)
