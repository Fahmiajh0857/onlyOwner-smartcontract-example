#### **RestrictedAccess Contract**

**Deskripsi**:  
Kontrak ini memberikan contoh bagaimana membatasi akses ke fungsi tertentu sehingga hanya pemilik kontrak yang dapat memodifikasi data sensitif.

#### **Cara Deploy Kontrak**
1. Salin kode Solidity ke file `.sol` (contoh: `RestrictedAccess.sol`).
2. Deploy kontrak menggunakan platform seperti [Remix IDE](https://remix.ethereum.org/) atau alat pengembangan blockchain lainnya.
3. Pemilik kontrak secara otomatis diatur ke alamat yang melakukan deploy.

#### **Fungsi Utama**
- **`updateSensitiveData(string memory newData)`**  
  Fungsi ini hanya dapat dipanggil oleh pemilik kontrak untuk memperbarui data sensitif.
  
- **`viewSensitiveData()`**  
  Fungsi ini memungkinkan siapa saja untuk melihat data sensitif yang disimpan.

#### **Contoh Penggunaan**
1. **Deploy Kontrak**  
   Deploy kontrak di jaringan Ethereum atau jaringan uji seperti Goerli/Testnet.

2. **Memperbarui Data Sensitif**  
   Sebagai pemilik kontrak, panggil fungsi `updateSensitiveData` dengan parameter data baru:
   ```solidity
   contractInstance.updateSensitiveData("Data baru");
   ```

3. **Melihat Data Sensitif**  
   Siapa saja dapat memanggil fungsi `viewSensitiveData` untuk melihat data saat ini:
   ```solidity
   string data = contractInstance.viewSensitiveData();
   ```

#### **Keamanan**
- Hanya pemilik kontrak (`owner`) yang dapat memperbarui data sensitif.
- Modifier `onlyOwner` memastikan bahwa fungsi tertentu tidak dapat diakses oleh pihak lain.

#### **Lisensi**
Kontrak ini dirilis di bawah lisensi MIT. Silakan gunakan dan modifikasi sesuai kebutuhan.
