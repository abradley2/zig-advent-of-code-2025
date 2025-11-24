for (( i=1; i<=12; i++ )); do
    day_num=$(printf "%02d" $i)
    day_dir="src/day_$day_num"
    mkdir -p "$day_dir"
    cp "src/template/day_00.zig" "$day_dir/day_$day_num.zig"
done

for d in src/day_*/ ; do
    touch "$d/input.txt"
done