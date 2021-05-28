
submodule(forlab) forlab_empty
    use forlab_kinds

contains
    module function empty1(dim1)
        real(dp), dimension(:), allocatable :: empty1
        integer, intent(in) :: dim1
        integer :: ierr

        allocate (empty1(dim1), stat=ierr)
        if (ierr .ne. 0) then
            print *, "ERROR: in empty, could not allocate array."
            stop
        end if
        return
    end function

    module function empty2(dim1, dim2)
        real(dp), dimension(:, :), allocatable :: empty2
        integer, intent(in) :: dim1, dim2
        integer :: ierr

        allocate (empty2(dim1, dim2), stat=ierr)
        if (ierr .ne. 0) then
            print *, "Error: in empty, could not allocate array."
            stop
        end if
        return
    end function

    module function empty3(dim1, dim2, dim3)
        real(dp), dimension(:, :, :), allocatable :: empty3
        integer, intent(in) :: dim1, dim2, dim3
        integer :: ierr

        allocate (empty3(dim1, dim2, dim3), stat=ierr)
        if (ierr .ne. 0) then
            print *, "Error: in empty, could not allocate array."
            stop
        end if
        return
    end function
end submodule
