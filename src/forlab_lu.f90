submodule(forlab) forlab_lu
    !! Version: experimental
    !!
    !! Discussion:
    !! ----
    !! https://fortran-lang.discourse.group/t/fortran-function-return-value-polymorphism/1350/5
    use forlab_kinds
    implicit none
    
contains
    module subroutine lu_sp (A, L, U)
        real(sp), dimension(:, :), intent(in) :: A
        real(sp), dimension(:, :), allocatable, intent(out) :: L, U
        integer :: i, j, k, m
        real(sp) :: flag

        if (issquare(A)) then
            m = size(A, 1)
            if (.not. allocated(L)) L = eye(m, flag)
            if (.not. allocated(U)) U = zeros(m, m, flag)

            do i = 1, m
                do j = 1, m
                    U(i, j) = A(i, j)
                    do k = 1, i - 1
                        U(i, j) = U(i, j) - L(i, k)*U(k, j)
                    end do
                end do
                do j = i + 1, m
                    L(j, i) = A(j, i)
                    do k = 1, i - 1
                        L(j, i) = L(j, i) - L(j, k)*U(k, i)
                    end do
                    L(j, i) = L(j, i)/U(i, i)
                end do
            end do
        else
            stop "Error: in A = LU, A should be square."
        end if
        return
    end subroutine

    module subroutine lu_dp (A, L, U)
        real(dp), dimension(:, :), intent(in) :: A
        real(dp), dimension(:, :), allocatable, intent(out) :: L, U
        integer :: i, j, k, m
        real(dp) :: flag

        if (issquare(A)) then
            m = size(A, 1)
            if (.not. allocated(L)) L = eye(m, flag)
            if (.not. allocated(U)) U = zeros(m, m, flag)

            do i = 1, m
                do j = 1, m
                    U(i, j) = A(i, j)
                    do k = 1, i - 1
                        U(i, j) = U(i, j) - L(i, k)*U(k, j)
                    end do
                end do
                do j = i + 1, m
                    L(j, i) = A(j, i)
                    do k = 1, i - 1
                        L(j, i) = L(j, i) - L(j, k)*U(k, i)
                    end do
                    L(j, i) = L(j, i)/U(i, i)
                end do
            end do
        else
            stop "Error: in A = LU, A should be square."
        end if
        return
    end subroutine

    module subroutine lu_qp (A, L, U)
        real(qp), dimension(:, :), intent(in) :: A
        real(qp), dimension(:, :), allocatable, intent(out) :: L, U
        integer :: i, j, k, m
        real(qp) :: flag

        if (issquare(A)) then
            m = size(A, 1)
            if (.not. allocated(L)) L = eye(m, flag)
            if (.not. allocated(U)) U = zeros(m, m, flag)

            do i = 1, m
                do j = 1, m
                    U(i, j) = A(i, j)
                    do k = 1, i - 1
                        U(i, j) = U(i, j) - L(i, k)*U(k, j)
                    end do
                end do
                do j = i + 1, m
                    L(j, i) = A(j, i)
                    do k = 1, i - 1
                        L(j, i) = L(j, i) - L(j, k)*U(k, i)
                    end do
                    L(j, i) = L(j, i)/U(i, i)
                end do
            end do
        else
            stop "Error: in A = LU, A should be square."
        end if
        return
    end subroutine

end submodule
