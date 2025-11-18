from PIL import Image, ImageDraw, ImageFont
import os

def create_custom_image(width, height, text, output_path):
    # إنشاء صورة جديدة بنفس الأبعاد
    img = Image.new('RGB', (width, height), color='#f0f0f0')
    draw = ImageDraw.Draw(img)
    
    # إضافة نص وصفي (اختياري)
    try:
        font = ImageFont.truetype("arial.ttf", 40)
    except:
        font = ImageFont.load_default()
    
    # إضافة نص يصف الصورة
    text = f"{width}×{height}\n{text}"
    bbox = draw.textbbox((0, 0), text, font=font)
    text_width = bbox[2] - bbox[0]
    text_height = bbox[3] - bbox[1]
    
    x = (width - text_width) // 2
    y = (height - text_height) // 2
    
    draw.text((x, y), text, fill='#333333', font=font)
    
    # حفظ الصورة
    img.save(output_path, 'PNG')
    print(f"تم إنشاء: {output_path}")

# استخدام الدالة
create_custom_image(917, 917, "صورة توثيق", "auth-img.png")