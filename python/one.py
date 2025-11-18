from PIL import Image
import os

def rename_images_with_size(folder_path):
    for filename in os.listdir(folder_path):
        if filename.lower().endswith('.png'):
            file_path = os.path.join(folder_path, filename)
            
            try:
                with Image.open(file_path) as img:
                    width, height = img.size
                    
                    # إنشاء اسم جديد يحتوي على الأبعاد
                    new_name = f"image_{width}x{height}_{filename}"
                    new_path = os.path.join(folder_path, new_name)
                    
                    os.rename(file_path, new_path)
                    print(f"تم تغيير اسم: {filename} إلى {new_name}")
                    
            except Exception as e:
                print(f"خطأ في معالجة {filename}: {str(e)}")

# استدعاء الدالة مع المسار الصحيح
rename_images_with_size("C:/Users/SaLeeM/Desktop/مخارش تلكم/WowDash-mainAyman/assets/images/auth")