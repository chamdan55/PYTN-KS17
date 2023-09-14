Summary – Numpy
    Creating NumPy Array
        np.array()
        np.zeros()
        np.ones()
        np.arange()
        np.empty()
    Append, Remove, Sort
        np.append(arr, val)
        np.delete(arr, pos)
        np.sort(arr)
    Shape & Size
        arr.ndim
        arr.size
        arr.shape

        arr.reshape : 1x6 -> 3x2

    Convert 1D to 2D
        np.newaxis
        np.expand_dims

    Indexing & Slicing
        arr[0]
        arr[0:2]
        arr[2:]
        arr[-3:]

        arr[arr > 5]
        arr[(arr > 5) & (arr < 15)]

    Array from Existing Data
        Slicing : arr2 = arr[ arr % 2 == 1 ]
        
        np.vstack()
        np.hstack()
        
        np.vsplit()
        np.hsplit()

    Copy & View
        arr2 = arr.view() # Shallow Copy

        arr3 = arr.copy() # Deep Copy
    
    Basic Array Operation
        arr.sum()
        
        arr + arr2 # - * / % **
        Note : hanya mengoperasikan dengan index yang sama
        
        # Broadcasting
        arr + 10 # - * / % **

        # Aggregate
        arr.min()
        arr.max()
        arr.mean()
    
        arr.min(axis=0) # melihat nilai terkecil dalam 1 BARIS yang sama
        arr.min(axis=1) # melihat nilai terkecil dalam 1 KOLOM yang sama

    Matrices
        penjumlahan dan pengurangan sama seperti yang sebelumnya
        
        tapi untuk perkalian matrix harus menggunakan np.dot()
        np.dot(mat, mat2)
        Note : Aturan perkalian matrix berlaku

        Slicing pada Matrix
            mat[0]      # mengambil semua baris pertama
            mat[0,1]    # mengambil elemen pada baris pertama kolom kedua
            mat[1:]     # mengambil semua baris kedua sampai akhir
            mat[:, 2]   # mengambil semua nilai pada kolom ketiga
        
        Aggregate pada Matrix
            mat.sum()   # menjumlahkan semua elemen
            mat.min()   # mencari nilai terkecil pada matrix
            mat.max()   # mencari nilai terbesar pada matrix

            mat.max(axis=0)   # mencari nilai terbesar pada matrix per BARIS nya
            mat.max(axis=1)   # mencari nilai terbesar pada matrix per KOLOM nya
        
        Transpose & reshape
            mat.T               : 3x2 -> 2x3
            mat.reshape((m,n))  : n x m -> m x n 

        Flatten N-dimensional Array
            np.flatten()
            np.ravel()