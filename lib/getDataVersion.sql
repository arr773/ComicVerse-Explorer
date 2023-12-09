SELECT * from ComicCharacters c
where {{!Searchbar2.value}} or version ilike ({{Searchbar2.value}});

