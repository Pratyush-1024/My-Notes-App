class CloudStorageException implements Exception {
  const CloudStorageException();
}

class CouldNotCreateNoteException implements CloudStorageException {}

class CouldNotGetAllNotesException implements CloudStorageException {}

class CouldNotUpdateNoteExcpetion implements CloudStorageException {}

class CouldNotDeleteNoteException implements CloudStorageException {}
