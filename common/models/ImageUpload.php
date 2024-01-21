<?php

/**
*  Team: lllg,NKU
*  Coding by 郭昱杰 2111066
*  实现了图像文件上传
 */

namespace common\models;

use Yii;
use yii\base\Model;
use yii\web\UploadedFile;

class ImageUpload extends Model
{
    public $image;

      public function rules() 
      {
        return [
            [['image'], 'file', 'skipOnEmpty' => false, 'extensions' => 'jpg, png'],
        ];
      }

    public function uploadFile(UploadedFile $file, $currentImage) 
    {
        $this->image=$file;  
        if($this->validate())
        {
            // 检查是否存在，如果存在删除文件，确保只有一个文件与对象相关联
            if($this->fileExists($currentImage))
            {
                unlink($this->getFolder() . $currentImage);
            }
        }
        // 生成新的文件名并保存
        $filename= $this->generateFilename();
        $this->image->saveAs('@frontend/web/uploads/' . $filename);
        return $filename;  
    }

    // 判断文件是否存在
    public function fileExists($currentImage)
    {
        if(!empty($currentImage) && $currentImage != null)
        {
            return file_exists($this->getFolder() . $currentImage);
        }
    }

    // 文件路径
    private function getFolder()
    {
        return Yii::getAlias('@frontend/web/uploads/');
    }

    private function generateFilename()
    {
        return strtolower(md5(uniqid($this->image->baseName)) . '.' . $this->image->extension);
    }

    public function deleteCurrentImage($currentImage)
    {
        // 存在该文件就进行删除
        if($this->fileExists($currentImage))
        {
            unlink($this->getFolder() . $currentImage);
        }
    }
}
