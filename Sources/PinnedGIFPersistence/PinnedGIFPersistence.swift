//
//  File.swift
//  
//
//  Created by USER on 2023/06/08.
//

import Foundation
import GIFPediaService
import SHPersistenceServiceInterface

public final class PinnedGIFPersistence: GIFPersistence {
    private let pinnedGifsKey = "PinnedGifs"

    private let persistenceService: SHPersistenceServiceInterface

    public init(persistenceService: SHPersistenceServiceInterface) {
        self.persistenceService = persistenceService
    }

    public func load() -> [GIFEntity] {
        persistenceService.load(key: pinnedGifsKey)
    }

    public func save(gifs: [GIFEntity]) -> [GIFEntity] {
        let _ = persistenceService.save(key: pinnedGifsKey, objects: gifs)
        return load()
    }
}
