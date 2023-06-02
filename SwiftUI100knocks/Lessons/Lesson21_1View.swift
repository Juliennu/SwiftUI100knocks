//
//  Lesson21_1View.swift
//  SwiftUI100knocks
//
//  Created by Juri Ohto on 2023/05/23.
//

import SwiftUI

struct Lesson21_1View: View {
    private let pokemonThemeLyrics = """
    I wanna be the very best
    Like no one ever was
    To catch them is my real test
    To train them is my cause
    I will travel across the land
    Searching far and wide
    Teach Pokémon to understand
    The power that's inside

    [Chorus]
    (Pokémon
    Gotta catch 'em all) It's you and me
    I know it's my destiny (Pokémon)
    Oh, you're my best friend
    In a world we must defend (Pokémon
    Gotta catch 'em all) A heart so true
    Our courage will pull us through
    You teach me and I'll teach you (Ooh, ooh)
    Pokémon! (Gotta catch 'em all)
    Gotta catch 'em all
    Yeah

    [Verse 2]
    Every challenge along the way
    With courage, I will face
    I will battle every day
    To claim my rightful place
    Come with me, the time is right
    There's no better team
    Arm in arm, we'll win the fight
    It's always been our dream

    [Chorus]
    (Pokémon
    Gotta catch 'em all) It's you and me
    I know it's my destiny (Pokémon)
    Oh, you're my best friend
    In a world we must defend (Pokémon
    Gotta catch 'em all) A heart so true
    Our courage will pull us through
    You teach me and I'll teach you (Ooh, ooh)
    Pokémon! (Gotta catch 'em all)
    Gotta catch 'em all

    [Bridge]
    Gotta catch 'em all
    Gotta catch 'em all
    Gotta catch 'em all
    Yeah

    [Guitar Solo]

    [Chorus]
    (Pokémon
    Gotta catch 'em all) It's you and me
    I know it's my destiny (Pokémon)
    Oh, you're my best friend
    In a world we must defend (Pokémon
    Gotta catch 'em all) A heart so true
    Our courage will pull us through
    You teach me and I'll teach you (Ooh, ooh)
    Pokémon! (Gotta catch 'em all)
    Gotta catch 'em all (Pokémon)
    """
    
    var body: some View {
        ScrollView{
            VStack {
                Text("Pokemon Theme Lyrics")
                    .font(.title)
                Lesson21_2View(text: pokemonThemeLyrics)
            }
        }
    }
}

struct Lesson21View_Previews: PreviewProvider {
    static var previews: some View {
        Lesson21_1View()
    }
}
