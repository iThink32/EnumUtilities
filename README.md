# EnumUtilities
A class that allows enum's elements to be counted , all its cases returned as well as its corresponding string values

Usage:-

```
public enum DriverInformationType: Int,Countable {
    case number
    case state
    case date
    case yearsOfExperience
}
```
now if you write:-

```
print(DriverInformation.count)
```

prints the count of cases that is 4

```
    func types() -> [String] {
        guard let arrInstances = DriverInformationType.allCases() as? [DriverInformationType] else{
            return [String]()
        }
        let arrStrings = arrInstances.map { (type) -> String in
            return "\(type)".capitalized
        }
        return arrStrings
    }
```    
prints ["Number","State","Date","YearsofExperience"]

the fun stringValue just prints its string representative
