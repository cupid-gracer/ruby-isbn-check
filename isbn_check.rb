
def valid_isbn(isbn)
    if isbn.size != 12
        puts('The length of ISBN is not correct.')
    else
        puts("The original ISBN is: ", isbn)
        sum = 0
        isbn.chars.each_with_index do |item, index|
            sum += Integer(item) * (index % 2 ==1 ? 3 : 1)
        end
        check_sum = 10 - sum % 10
        sum += check_sum
        puts('The complete ISBN is: ', isbn+String(check_sum))
    end
end

valid_isbn('978014300723')