import 'dart:collection';

import 'package:dartz/dartz.dart';
import 'package:photo_editor/services/timeline/timeline.dart';
import 'package:test/test.dart';

void main() {
  group('elements', () {
    test('Should return the elements in the timeline correctly.', () {
      Timeline<int> t1 = Timeline(maxSize: 3);
      Timeline<int> t2 = Timeline(maxSize: 3);
      t1.push(1);
      t1.push(2);
      t1.push(3);
      expect(t1.elements, UnmodifiableListView([1, 2, 3]));
      expect(t2.elements, UnmodifiableListView([]));
    });
  });
  group('maxSize', () {
    test('Should return the maxSize correctly', () {
      Timeline<int> t = Timeline(maxSize: 3);
      expect(t.maxSize, 3);
    });
    test('Should have the correct default maxSize', () {
      Timeline<int> t = Timeline();
      expect(t.maxSize, 30);
    });
  });
  group('length', () {
    test('Should return the length of the timeline correctly.', () {
      Timeline<int> t1 = Timeline(maxSize: 3);
      Timeline<int> t2 = Timeline(maxSize: 3);
      t1.push(1);
      t1.push(2);
      t1.push(3);
      expect(t1.length, 3);
      expect(t2.length, 0);
    });
  });
  group('isEmpty', () {
    test('Should return if timeline is empty.', () {
      Timeline<int> t1 = Timeline(maxSize: 3);
      Timeline<int> t2 = Timeline(maxSize: 3);
      t1.push(1);
      t1.push(2);
      t1.push(3);
      expect(t1.isEmpty, false);
      expect(t2.isEmpty, true);
    });
  });
  group('isNotEmpty', () {
    test('Should return if timeline is not empty.', () {
      Timeline<int> t1 = Timeline(maxSize: 3);
      Timeline<int> t2 = Timeline(maxSize: 3);
      t1.push(1);
      t1.push(2);
      t1.push(3);
      expect(t1.isNotEmpty, true);
      expect(t2.isNotEmpty, false);
    });
  });
  group('hasNext', () {
    test('Should return if timeline has next element.', () {
      Timeline<int> t1 = Timeline(maxSize: 3);

      // t2 is empty
      Timeline<int> t2 = Timeline(maxSize: 3);
      expect(t2.current, none());

      Timeline<int> t3 = Timeline(maxSize: 3);

      // t1's position is at the end
      t1.push(1);
      t1.push(2);
      t1.push(3);
      expect(t1.current, some(3));

      // t3's position is 1 position before the end
      t3.push(1);
      t3.push(2);
      t3.push(3);
      t3.previous;
      expect(t3.current, some(2));

      expect(t1.hasNext, false);
      expect(t2.hasNext, false);
      expect(t3.hasNext, true);
    });
  });
  group('hasPrevious', () {
    test('Should return if timeline has previous element.', () {
      Timeline<int> t1 = Timeline(maxSize: 3);

      // t2 is empty
      Timeline<int> t2 = Timeline(maxSize: 3);
      expect(t2.current, none());

      Timeline<int> t3 = Timeline(maxSize: 3);

      // t1's position is at the beginning
      t1.push(1);
      t1.push(2);
      t1.push(3);
      t1.previous;
      t1.previous;
      t1.previous;
      expect(t1.current, some(1));

      // t3's position is 1 position before the beginning
      t3.push(1);
      t3.push(2);
      t3.push(3);
      t3.previous;
      expect(t3.current, some(2));

      expect(t1.hasPrevious, false);
      expect(t2.hasPrevious, false);
      expect(t3.hasPrevious, true);
    });
  });
  group('push', () {
    test('Should push items correctly.', () {
      Timeline<int> timeline = Timeline(maxSize: 3);
      timeline.push(1);
      timeline.push(2);
      timeline.push(3);
      expect(timeline.elements, UnmodifiableListView([1, 2, 3]));
    });
    test('Should replace oldest item correctly when timeline is full.', () {
      Timeline<int> timeline = Timeline(maxSize: 3);
      timeline.push(1);
      timeline.push(2);
      timeline.push(3);
      timeline.push(4);
      expect(timeline.elements, UnmodifiableListView([2, 3, 4]));
    });
  });
  group('clear', () {
    test('Should clear the timeline.', () {
      Timeline<int> t1 = Timeline(maxSize: 3);
      Timeline<int> t2 = Timeline(maxSize: 3);
      t1.push(1);
      t1.push(2);
      t1.push(3);

      t1.clear();
      t2.clear();

      expect(t1.isEmpty, true);
      expect(t1.elements, UnmodifiableListView([]));
      expect(t2.isEmpty, true);
      expect(t2.elements, UnmodifiableListView([]));
    });
  });
  group('next', () {
    test('Should return element at next position.', () {
      Timeline<int> timeline = Timeline(maxSize: 3);
      timeline.push(1);
      timeline.push(2);
      timeline.push(3);

      expect(timeline.current, some(3));

      // if there is no next, position stays where it is and
      // timeline.current returns the value at that position
      expect(timeline.next, some(3));

      // return position to the beginning
      timeline.toTheBeginning();
      expect(timeline.current, some(1));

      // return position to the end
      timeline.toTheEnd();

      // check that correct value is returned when there is no next
      expect(timeline.next, some(3));
    });
  });
  group('current', () {
    test('Should return newest added element after push has been called.', () {
      Timeline<int> timeline = Timeline(maxSize: 3);
      timeline.push(1);
      expect(timeline.current, some(1));

      timeline.push(2);
      expect(timeline.current, some(2));

      timeline.push(3);
      expect(timeline.current, some(3));

      // return position to beginning
      timeline.toTheBeginning();

      // push a new element
      timeline.push(4);

      // check that current position returned to the end automatically
      expect(timeline.current, some(4));

      // make sure again that the timeline is correct and oldest element has
      // been removed since the timeline was full
      expect(timeline.elements, UnmodifiableListView([2, 3, 4]));
    });

    test('Should return element at current position.', () {
      Timeline<int> timeline = Timeline(maxSize: 3);
      timeline.push(1);
      timeline.push(2);
      timeline.push(3);

      expect(timeline.current, some(3));

      timeline.previous;
      expect(timeline.current, some(2));

      timeline.previous;
      expect(timeline.current, some(1));

      // if there is no previous, position stays where it is and
      // timeline.current returns the value at that position
      timeline.previous;
      expect(timeline.current, some(1));
    });
  });
  group('previous', () {
    test('Should return element at previous position.', () {
      Timeline<int> timeline = Timeline(maxSize: 3);
      timeline.push(1);
      timeline.push(2);
      timeline.push(3);

      expect(timeline.current, some(3));

      expect(timeline.previous, some(2));
      expect(timeline.previous, some(1));

      // check that correct value is returned when there is no previous
      expect(timeline.previous, some(1));
    });
  });
  group('top', () {
    test('Should return element at the top of the timeline if it exists.', () {
      Timeline<int> h1 = Timeline(maxSize: 3);
      h1.push(1);
      h1.push(2);
      h1.push(3);

      expect(h1.top, some(3));

      expect(h1.current, some(3));

      expect(h1.previous, some(2));
      expect(h1.previous, some(1));

      expect(h1.top, some(3));

      // clear t1
      h1.clear();

      expect(h1.top, none());
    });
  });

  group('toTheBeginning', () {
    test(
        'Should move the position to the first element of the timeline if it exists.',
        () {
      Timeline<int> t1 = Timeline(maxSize: 3);
      t1.push(1);
      t1.push(2);
      t1.push(3);

      expect(t1.current, some(3));

      // return position to the beginning
      t1.toTheBeginning();

      expect(t1.current, some(1));
    });
    test('Does nothing if timeline is empty.', () {
      Timeline<int> t = Timeline(maxSize: 3);
      t.toTheBeginning();
      expect(t.isEmpty, true);
    });
  });

  group('toTheEnd', () {
    test(
        'Should move the position to the last element of the timeline if it exists.',
        () {
      Timeline<int> t1 = Timeline(maxSize: 3);
      t1.push(1);
      t1.push(2);
      t1.push(3);

      expect(t1.current, some(3));

      // return position to the beginning
      t1.toTheBeginning();
      expect(t1.current, some(1));

      // return position to the end
      t1.toTheEnd();
      expect(t1.current, some(3));
    });
    test('Does nothing if timeline is empty.', () {
      Timeline<int> t = Timeline(maxSize: 3);
      t.toTheEnd();
      expect(t.isEmpty, true);
    });
  });
}
