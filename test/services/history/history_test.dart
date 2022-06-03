import 'dart:collection';

import 'package:dartz/dartz.dart';
import 'package:photo_editor/services/history/history.dart';
import 'package:test/test.dart';

void main() {
  group('elements', () {
    test('Should return the elements in the history correctly.', () {
      History<int> h1 = History(maxSize: 3);
      History<int> h2 = History(maxSize: 3);
      h1.push(1);
      h1.push(2);
      h1.push(3);
      expect(h1.elements, UnmodifiableListView([1, 2, 3]));
      expect(h2.elements, UnmodifiableListView([]));
    });
  });
  group('maxSize', () {
    test('Should return the maxSize correctly', () {
      History<int> h = History(maxSize: 3);
      expect(h.maxSize, 3);
    });
  });
  group('length', () {
    test('Should return the length of the history correctly.', () {
      History<int> h1 = History(maxSize: 3);
      History<int> h2 = History(maxSize: 3);
      h1.push(1);
      h1.push(2);
      h1.push(3);
      expect(h1.length, 3);
      expect(h2.length, 0);
    });
  });
  group('isEmpty', () {
    test('Should return if history is empty.', () {
      History<int> h1 = History(maxSize: 3);
      History<int> h2 = History(maxSize: 3);
      h1.push(1);
      h1.push(2);
      h1.push(3);
      expect(h1.isEmpty, false);
      expect(h2.isEmpty, true);
    });
  });
  group('isNotEmpty', () {
    test('Should return if history is not empty.', () {
      History<int> h1 = History(maxSize: 3);
      History<int> h2 = History(maxSize: 3);
      h1.push(1);
      h1.push(2);
      h1.push(3);
      expect(h1.isNotEmpty, true);
      expect(h2.isNotEmpty, false);
    });
  });
  group('hasNext', () {
    test('Should return if history has next element.', () {
      History<int> h1 = History(maxSize: 3);

      // h2 is empty
      History<int> h2 = History(maxSize: 3);

      History<int> h3 = History(maxSize: 3);

      // h1's iterator is at the end
      h1.push(1);
      h1.push(2);
      h1.push(3);
      expect(h1.current, some(3));

      // h3's iterator is 1 position before the end
      h3.push(1);
      h3.push(2);
      h3.push(3);
      h3.previous;
      expect(h3.current, some(2));

      expect(h1.hasNext, false);
      expect(h2.hasNext, false);
      expect(h3.hasNext, true);
    });
  });
  group('hasPrevious', () {
    test('Should return if history has previous element.', () {
      History<int> h1 = History(maxSize: 3);

      // h2 is empty
      History<int> h2 = History(maxSize: 3);

      History<int> h3 = History(maxSize: 3);

      // h1's iterator is at the beginning
      h1.push(1);
      h1.push(2);
      h1.push(3);
      h1.previous;
      h1.previous;
      h1.previous;
      expect(h1.current, some(1));

      // h3's iterator is 1 position before the end
      h3.push(1);
      h3.push(2);
      h3.push(3);
      h3.previous;
      expect(h3.current, some(2));

      expect(h1.hasPrevious, false);
      expect(h2.hasPrevious, false);
      expect(h3.hasPrevious, true);
    });
  });
  group('clear', () {
    test('Should clear the history.', () {
      History<int> h1 = History(maxSize: 3);
      History<int> h2 = History(maxSize: 3);
      h1.push(1);
      h1.push(2);
      h1.push(3);

      h1.clear();
      h2.clear();

      expect(h1.isEmpty, true);
      expect(h2.isEmpty, true);
    });
  });
  group('push', () {
    test('Should push items correctly.', () {
      History<int> history = History(maxSize: 3);
      history.push(1);
      history.push(2);
      history.push(3);
      expect(history.elements, UnmodifiableListView([1, 2, 3]));
    });
    test('Should replace oldest item correctly when history is full.', () {
      History<int> history = History(maxSize: 3);
      history.push(1);
      history.push(2);
      history.push(3);
      history.push(4);
      expect(history.elements, UnmodifiableListView([2, 3, 4]));
    });
  });
  group('current', () {
    test('Should return newest added element after push.', () {
      History<int> history = History(maxSize: 3);
      history.push(1);
      expect(history.current, some(1));

      history.push(2);
      expect(history.current, some(2));

      history.push(3);
      expect(history.current, some(3));
    });

    test('Should return element at iterator position.', () {
      History<int> history = History(maxSize: 3);
      history.push(1);
      history.push(2);
      history.push(3);

      expect(history.current, some(3));

      history.previous;
      expect(history.current, some(2));

      history.previous;
      expect(history.current, some(1));

      // if there is no previous, iterator stays where it is and
      // history.current returns the value at that position
      history.previous;
      expect(history.current, some(1));
    });
  });
  group('next', () {
    test('Should return element at next iterator position.', () {
      History<int> history = History(maxSize: 3);
      history.push(1);
      history.push(2);
      history.push(3);

      expect(history.current, some(3));

      // if there is no next, iterator stays where it is and
      // history.current returns the value at that position
      expect(history.next, some(3));

      // return iterator to the beginning
      history.previous;
      history.previous;
      expect(history.current, some(1));

      expect(history.next, some(2));
      expect(history.next, some(3));

      // check that correct value is returned when there is no next
      expect(history.next, some(3));
    });
  });
  group('previous', () {
    test('Should return element at previous iterator position.', () {
      History<int> history = History(maxSize: 3);
      history.push(1);
      history.push(2);
      history.push(3);

      expect(history.current, some(3));

      expect(history.previous, some(2));
      expect(history.previous, some(1));

      // check that correct value is returned when there is no previous
      expect(history.previous, some(1));
    });
  });
  group('top', () {
    test('Should return element at the top of the history if it exists.', () {
      History<int> h1 = History(maxSize: 3);
      h1.push(1);
      h1.push(2);
      h1.push(3);

      expect(h1.current, some(3));

      expect(h1.previous, some(2));
      expect(h1.previous, some(1));

      expect(h1.top, some(3));

      // clear h1
      h1.clear();

      expect(h1.top, none());
    });
  });

  group('resetIterator', () {
    test(
        'Should move the iterator to the last element of the history if it exists.',
        () {
      History<int> h1 = History(maxSize: 3);
      h1.push(1);
      h1.push(2);
      h1.push(3);

      expect(h1.current, some(3));

      // return iterator to the beginning
      expect(h1.previous, some(2));
      expect(h1.previous, some(1));

      h1.resetIterator();
      expect(h1.current, some(3));
    });
    test('Does nothing if history is empty.', () {
      History<int> h = History(maxSize: 3);
      h.resetIterator();
      expect(h.isEmpty, true);
    });
  });
}
