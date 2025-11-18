from PIL import Image, ImageDraw, ImageFont
import os

def process_all_images(folder_path):
    for filename in os.listdir(folder_path):
        if filename.lower().endswith('.png'):
            file_path = os.path.join(folder_path, filename)
            
            try:
                # فتح الصورة لمعرفة أبعادها
                with Image.open(file_path) as img:
                    width, height = img.size
                
                # إنشاء صورة جديدة بنفس الأبعاد
                new_img = Image.new('RGB', (width, height), color='#f0f0f0')
                draw = ImageDraw.Draw(new_img)
                
                # إضافة نص
                try:
                    font = ImageFont.truetype("arial.ttf", 40)
                except:
                    font = ImageFont.load_default()
                
                text = f"{width}×{height}\nNew Image AYMAN MAKARSH"
                bbox = draw.textbbox((0, 0), text, font=font)
                text_width = bbox[2] - bbox[0]
                text_height = bbox[3] - bbox[1]
                
                x = (width - text_width) // 2
                y = (height - text_height) // 2
                
                draw.text((x, y), text, fill='#333333', font=font)
                
                # حفظ الصورة الجديدة مكان القديمة
                new_img.save(file_path, 'PNG')
                print(f"تم معالجة: {filename}")
                
            except Exception as e:
                print(f"خطأ في {filename}: {str(e)}")

# استخدم المسار الصحيح لمجلدك
process_all_images("C:/Users/SaLeeM/Desktop/مخارش تلكم/WowDash-mainAyman/assets/images/auth")
