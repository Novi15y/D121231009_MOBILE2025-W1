def hitung_faktorial_while(angka):
    """
    Fungsi ini menghitung faktorial menggunakan perulangan while.
    """
    if not isinstance(angka, int) or angka < 0:
        return "Input harus bilangan bulat non-negatif."
    if angka == 0:
        return 1
    hasil = 1
    i = 1
    
    while i <= angka:
        hasil *= i
        i += 1  
    
    return hasil

while True:
    try:
        bilangan = int(input("Masukkan bilangan bulat non-negatif (atau ketik -1 untuk keluar): "))

        if bilangan == -1: 
            print("Program selesai. Terima kasih!")
            break

        faktorial = hitung_faktorial_while(bilangan)
        print(f"Faktorial dari {bilangan} adalah: {faktorial}")

    except ValueError:
        print("Input tidak valid. Harap masukkan bilangan bulat.")
