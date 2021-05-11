program main
    use forlab, only: operator(.i.), RPRE, disp
    real(RPRE) :: x(2, 2)

    x = 0.0
    x(1, 1) = 0.5
    x(2, 2) = 1.0

    call disp(x, 'x matrix:')
    call disp((.i.x), 'inv of "x":')
    call disp(matmul(.i.x, x), 'check:')

end program