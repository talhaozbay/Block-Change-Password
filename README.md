----------------- TURKISH --------------------

🔒 Windows Hello, PIN, Picture Password ve Şifre Değiştirme Seçeneklerini Devre Dışı Bırakma / Etkinleştirme Scripti
Bu proje, Windows 10 ve 11 işletim sistemlerinde aşağıdaki oturum açma seçeneklerini toplu olarak devre dışı bırakmak veya yeniden etkinleştirmek için hazırlanmış .bat script dosyalarını içerir:

🚫 Devre Dışı Bırakılan Özellikler:
Windows Hello for Business

PIN ile oturum açma

Security Key (Güvenlik Anahtarı) ile oturum açma

Picture Password (Resimli Parola)

Kullanıcının şifresini değiştirme seçeneği (Ctrl+Alt+Del menüsünden)

✅ Yeniden Etkinleştirme:
Tüm bu ayarlar kolayca geri alınabilir. Proje içerisinde bulunan ikinci .bat dosyası, bu özellikleri varsayılan hallerine döndürür.

📁 İçerik:
disable_signin_options.bat – Tüm ilgili giriş yöntemlerini kapatır.

enable_signin_options.bat – Tüm ayarları eski haline getirir.

⚠️ Not:
Scriptlerin düzgün çalışabilmesi için yönetici (admin) yetkileriyle çalıştırılması gerekir.

Değişikliklerin tam olarak etkili olması için sistem yeniden başlatılmalıdır.


----------------- ENGLISH --------------------

🔒 Disable/Enable Windows Hello, PIN, Picture Password, and Password Change Options
This project provides .bat script files to quickly disable or re-enable various sign-in options in Windows 10 and 11. It's ideal for system administrators or power users who want to restrict alternative authentication methods.

🚫 Disabled Features:
Windows Hello for Business

Sign-in with PIN

Security Key (FIDO2) sign-in

Picture Password

"Change Password" option in the Ctrl+Alt+Del menu

✅ Re-Enable Support:
A separate script is included to fully restore all disabled sign-in options to their default state.

📁 Files Included:
disable_signin_options.bat – Disables all specified sign-in methods and password change.

enable_signin_options.bat – Re-enables all features and removes the applied restrictions.

⚠️ Notes:
These scripts must be run with administrator privileges.

A system restart is recommended after applying changes to ensure full effect.
