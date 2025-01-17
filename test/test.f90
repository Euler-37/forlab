!! `fpm test` or `fpm test test`
program main
    block
        use forlab, only: empty, disp, operator(.x.)
        real, dimension(:, :), allocatable :: x_sp, y_sp
        real(8), dimension(:, :), allocatable :: x_dp, y_dp
        real(16), dimension(:, :), allocatable :: x_qp, y_qp

        x_sp = empty(2, 2); x_dp = empty(2, 2); x_qp = empty(2, 2)
        y_sp = empty(2, 2); y_dp = empty(2, 2); y_qp = empty(2, 2)

        x_sp = 1.; x_dp = 1.; x_qp = 1.
        y_sp = 2.; y_dp = 2.; y_qp = 2.

        call disp('----------------------------')
        call disp(x_sp.x.y_sp, 'x .x. y SP✨:')
        call disp(x_dp.x.y_dp, 'x .x. y DP✨:')
        call disp(x_qp.x.y_qp, 'x .x. y QP✨:')
    end block

    block
        use forlab, only: operator(.i.), disp
        ! test inv and solve equation Ax=b, A^(-1) * b
        real :: a(2, 2) = reshape([1, 2, 3, 1], [2, 2])
        real :: b(2) = [1, 1]
        call disp("Test Inv and solve equation Ax=b")
        call disp('A=')
        call disp(a)
        call disp("b=")
        call disp(b)
        call disp("x=")
        call disp(matmul(.i.a, b))
    end block

    block
        use forlab, only: acosd, tand, disp
        ! test degrees circular function
        call disp('Test degrees circular function')
        call disp("acosd(1.d0)=")
        call disp(acosd(1.d0))
        call disp("tand([45.0,60.0,0.0])")
        call disp(tand([45.0, 60.0, 0.0]))
    end block
end program
