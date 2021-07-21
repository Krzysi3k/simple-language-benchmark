function silnia($n) {
    if($n -gt 1) {
        $result = silnia($n-1)
        return $result * $n
    }
    return 1
}

function main() {
    for($i=1; $i -lt 10001; $i++){
        silnia(15) | Out-Null
        for ($x=1; $x -lt 10001; $x++) {
            if($x -eq 9876) {
                break
            }
        }
    }
}

"finished in: $((Measure-Command -Expression {main}).TotalMilliseconds)ms"