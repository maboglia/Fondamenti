# Esempi RegEx 

Regex|Matches any string that
---|---
`hello`|contains {hello}
`gray\|grey`|contains {gray, grey}
`gr(a\|e)y`|contains {gray, grey}
`gr[ae]y`|contains {gray, grey}
`b[aeiou]bble`|contains {babble, bebble, bibble, bobble, bubble}
`[b-chm-pP]at\|ot`|contains {bat, cat, hat, mat, nat, oat, pat, Pat, ot}
`colou?r`|contains {color, colour}
`rege(x(es)?`|xps?)|contains {regex, regexes, regexp, regexps}
`go*gle`|contains {ggle, gogle, google, gooogle, goooogle, ...}
`go+gle`|contains {gogle, google, gooogle, goooogle, ...}
`g(oog)+le`|contains {google, googoogle, googoogoogle, googoogoogoogle, ...}
`z{3}`|contains {zzz}
`z{3,6}`|contains {zzz, zzzz, zzzzz, zzzzzz}
`z{3,}`|contains {zzz, zzzz, zzzzz, ...}
`[Bb]rainf\*\*k`|contains `{Brainf**k, brainf**k}`
`\d`|contains {0,1,2,3,4,5,6,7,8,9}
`\d{5}(-\d{4})?`|contains a United States zip code
`1\d{10}`|contains an 11-digit string starting with a 1
`[2-9]`|[12]\d|3[0-6]|contains an integer in the range 2..36 inclusive
`Hello\nworld`|contains Hello followed by a newline followed by world
`mi.....ft`|contains a nine-character (sub)string beginning with mi and ending with ft (Note: depending on context, the dot stands either for “any character at all” or “any character except a newline”.) Each dot is allowed to match a different character, so both microsoft and minecraft will match.
`\d+(\.\d\d)?`|contains a positive integer or a floating point number with exactly two characters after the decimal point.
`[^i*&2@]`|contains any character other than an i, asterisk, ampersand, 2, or at-sign.
`//[^\r\n]*[\r\n]`|contains a Java or C# slash-slash comment
`^dog`|begins with "dog"
`dog$`|ends with "dog"
`^dog$`|is exactly "dog"