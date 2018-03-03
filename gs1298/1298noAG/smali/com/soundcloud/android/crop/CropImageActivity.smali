.class public Lcom/soundcloud/android/crop/CropImageActivity;
.super Lcom/soundcloud/android/crop/MonitoredActivity;
.source "CropImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/CropImageActivity$Cropper;
    }
.end annotation


# static fields
.field private static final SIZE_DEFAULT:I = 0x800

.field private static final SIZE_LIMIT:I = 0x1000


# instance fields
.field private aspectX:I

.field private aspectY:I

.field private cropView:Lcom/soundcloud/android/crop/HighlightView;

.field private exifRotation:I

.field private final handler:Landroid/os/Handler;

.field private imageView:Lcom/soundcloud/android/crop/CropImageView;

.field private isSaving:Z

.field private maxX:I

.field private maxY:I

.field private rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

.field private sampleSize:I

.field private saveUri:Landroid/net/Uri;

.field private sourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/soundcloud/android/crop/MonitoredActivity;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/soundcloud/android/crop/CropImageActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;
    .locals 1
    .param p0, "x0"    # Lcom/soundcloud/android/crop/CropImageActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/soundcloud/android/crop/CropImageActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/soundcloud/android/crop/CropImageActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/RotateBitmap;
    .locals 1
    .param p0, "x0"    # Lcom/soundcloud/android/crop/CropImageActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/soundcloud/android/crop/CropImageActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectX:I

    return v0
.end method

.method static synthetic access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/soundcloud/android/crop/CropImageActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectY:I

    return v0
.end method

.method static synthetic access$800(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/HighlightView;
    .locals 1
    .param p0, "x0"    # Lcom/soundcloud/android/crop/CropImageActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/HighlightView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/soundcloud/android/crop/CropImageActivity;Lcom/soundcloud/android/crop/HighlightView;)Lcom/soundcloud/android/crop/HighlightView;
    .locals 0
    .param p0, "x0"    # Lcom/soundcloud/android/crop/CropImageActivity;
    .param p1, "x1"    # Lcom/soundcloud/android/crop/HighlightView;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/HighlightView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/soundcloud/android/crop/CropImageActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private calculateBitmapSampleSize(Landroid/net/Uri;)I
    .locals 5
    .param p1, "bitmapUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "is":Ljava/io/InputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 157
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 160
    const/4 v4, 0x0

    invoke-static {v0, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-static {v0}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 165
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getMaxImageSize()I

    move-result v1

    .line 166
    .local v1, "maxSize":I
    const/4 v3, 0x1

    .line 167
    .local v3, "sampleSize":I
    :goto_0
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-gt v4, v1, :cond_0

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-le v4, v1, :cond_1

    .line 168
    :cond_0
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "maxSize":I
    .end local v3    # "sampleSize":I
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .line 170
    .restart local v1    # "maxSize":I
    .restart local v3    # "sampleSize":I
    :cond_1
    return v3
.end method

.method private clearImageView()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->clear()V

    .line 372
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/RotateBitmap;->recycle()V

    .line 375
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 376
    return-void
.end method

.method private decodeRegionCrop(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->clearImageView()V

    .line 324
    const/4 v12, 0x0

    .line 325
    .local v12, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 327
    .local v1, "croppedImage":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 328
    const/4 v2, 0x0

    invoke-static {v12, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v9

    .line 329
    .local v9, "decoder":Landroid/graphics/BitmapRegionDecoder;
    invoke-virtual {v9}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v14

    .line 330
    .local v14, "width":I
    invoke-virtual {v9}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v11

    .line 332
    .local v11, "height":I
    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    if-eqz v2, :cond_0

    .line 334
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 335
    .local v6, "matrix":Landroid/graphics/Matrix;
    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 337
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 338
    .local v8, "adjusted":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v8, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 341
    iget v2, v8, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    int-to-float v2, v14

    move v3, v2

    :goto_0
    iget v2, v8, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    int-to-float v2, v11

    :goto_1
    invoke-virtual {v8, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 342
    new-instance v13, Landroid/graphics/Rect;

    iget v2, v8, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v8, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v8, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v13, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "rect":Landroid/graphics/Rect;
    .local v13, "rect":Landroid/graphics/Rect;
    move-object/from16 p1, v13

    .line 346
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "adjusted":Landroid/graphics/RectF;
    .end local v13    # "rect":Landroid/graphics/Rect;
    .restart local p1    # "rect":Landroid/graphics/Rect;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    move/from16 v0, p2

    if-gt v2, v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    move/from16 v0, p3

    if-le v2, v0, :cond_2

    .line 348
    :cond_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 349
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    move/from16 v0, p2

    int-to-float v2, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move/from16 v0, p3

    int-to-float v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 350
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 365
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    invoke-static {v12}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 367
    .end local v9    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v11    # "height":I
    .end local v14    # "width":I
    :goto_2
    return-object v1

    .line 341
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    .restart local v8    # "adjusted":Landroid/graphics/RectF;
    .restart local v9    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v11    # "height":I
    .restart local v14    # "width":I
    :cond_3
    const/4 v2, 0x0

    move v3, v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 352
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "adjusted":Landroid/graphics/RectF;
    :catch_0
    move-exception v10

    .line 354
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rectangle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is outside of the image ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    .end local v9    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "height":I
    .end local v14    # "width":I
    :catch_1
    move-exception v10

    .line 359
    .local v10, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error cropping image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    invoke-direct {p0, v10}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    invoke-static {v12}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .line 361
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 362
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OOM cropping image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    invoke-direct {p0, v10}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 365
    invoke-static {v12}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_2

    .end local v10    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    invoke-static {v12}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method private getMaxImageSize()I
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getMaxTextureSize()I

    move-result v0

    .line 175
    .local v0, "textureLimit":I
    if-nez v0, :cond_0

    .line 176
    const/16 v1, 0x800

    .line 178
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private getMaxTextureSize()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 185
    .local v0, "maxSize":[I
    const/16 v1, 0xd33

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 186
    aget v1, v0, v2

    return v1
.end method

.method private loadInput()V
    .locals 8

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 121
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 123
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 124
    const-string v5, "aspect_x"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectX:I

    .line 125
    const-string v5, "aspect_y"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectY:I

    .line 126
    const-string v5, "max_x"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    .line 127
    const-string v5, "max_y"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    .line 128
    const-string v5, "output"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    .line 131
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    .line 132
    iget-object v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    if-eqz v5, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-static {p0, v5, v6}, Lcom/soundcloud/android/crop/CropUtil;->getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/soundcloud/android/crop/CropUtil;->getExifRotation(Ljava/io/File;)I

    move-result v5

    iput v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    .line 135
    const/4 v3, 0x0

    .line 137
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-direct {p0, v5}, Lcom/soundcloud/android/crop/CropImageActivity;->calculateBitmapSampleSize(Landroid/net/Uri;)I

    move-result v5

    iput v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sampleSize:I

    .line 138
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 139
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 140
    .local v4, "option":Landroid/graphics/BitmapFactory$Options;
    iget v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sampleSize:I

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 141
    new-instance v5, Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget v7, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-direct {v5, v6, v7}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-static {v3}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 152
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "option":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-void

    .line 142
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-static {v3}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OOM reading image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    invoke-static {v3}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    invoke-static {v3}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v5
.end method

.method private onSaveClicked()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    .line 266
    iget-object v8, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/HighlightView;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving:Z

    if-eqz v8, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iput-boolean v11, p0, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving:Z

    .line 272
    iget-object v8, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/HighlightView;

    iget v9, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sampleSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/soundcloud/android/crop/HighlightView;->getScaledCropRect(F)Landroid/graphics/Rect;

    move-result-object v5

    .line 273
    .local v5, "r":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 274
    .local v7, "width":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 276
    .local v2, "height":I
    move v4, v7

    .line 277
    .local v4, "outWidth":I
    move v3, v2

    .line 278
    .local v3, "outHeight":I
    iget v8, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    if-lez v8, :cond_3

    iget v8, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    if-lez v8, :cond_3

    iget v8, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    if-gt v7, v8, :cond_2

    iget v8, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    if-le v2, v8, :cond_3

    .line 279
    :cond_2
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v6, v8, v9

    .line 280
    .local v6, "ratio":F
    iget v8, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    int-to-float v8, v8

    iget v9, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    cmpl-float v8, v8, v6

    if-lez v8, :cond_5

    .line 281
    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    .line 282
    iget v8, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v4, v8

    .line 290
    .end local v6    # "ratio":F
    :cond_3
    :goto_1
    :try_start_0
    invoke-direct {p0, v5, v4, v3}, Lcom/soundcloud/android/crop/CropImageActivity;->decodeRegionCrop(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 297
    .local v0, "croppedImage":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 298
    iget-object v8, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    new-instance v9, Lcom/soundcloud/android/crop/RotateBitmap;

    iget v10, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-direct {v9, v0, v10}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v8, v9, v11}, Lcom/soundcloud/android/crop/CropImageView;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    .line 299
    iget-object v8, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v8}, Lcom/soundcloud/android/crop/CropImageView;->center()V

    .line 300
    iget-object v8, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    iget-object v8, v8, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 302
    :cond_4
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->saveImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 284
    .end local v0    # "croppedImage":Landroid/graphics/Bitmap;
    .restart local v6    # "ratio":F
    :cond_5
    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    .line 285
    iget v8, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v3, v8

    goto :goto_1

    .line 291
    .end local v6    # "ratio":F
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V

    .line 293
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    goto :goto_0
.end method

.method private saveImage(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "croppedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 307
    move-object v0, p1

    .line 308
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "crop__saving"

    const-string v5, "string"

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/soundcloud/android/crop/CropImageActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity$5;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/soundcloud/android/crop/CropUtil;->startBackgroundJob(Lcom/soundcloud/android/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 318
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    goto :goto_0
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "croppedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 379
    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 380
    const/4 v2, 0x0

    .line 382
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 383
    if-eqz v2, :cond_0

    .line 384
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_0
    invoke-static {v2}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 394
    :goto_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-static {p0, v3, v4}, Lcom/soundcloud/android/crop/CropUtil;->getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    .line 395
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-static {p0, v4, v5}, Lcom/soundcloud/android/crop/CropUtil;->getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v4

    .line 393
    invoke-static {v3, v4}, Lcom/soundcloud/android/crop/CropUtil;->copyExifRotation(Ljava/io/File;Ljava/io/File;)Z

    .line 398
    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultUri(Landroid/net/Uri;)V

    .line 401
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    move-object v0, p1

    .line 402
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/soundcloud/android/crop/CropImageActivity$6;

    invoke-direct {v4, p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity$6;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    .line 410
    return-void

    .line 386
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    invoke-static {v2}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method private setResultException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 434
    const/16 v0, 0x194

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 435
    return-void
.end method

.method private setResultUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 430
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "output"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 431
    return-void
.end method

.method private setupViews()V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "crop__activity_crop"

    const-string v2, "layout"

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "crop_image"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/CropImageView;

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    .line 96
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    iput-object p0, v0, Lcom/soundcloud/android/crop/CropImageView;->context:Landroid/content/Context;

    .line 97
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$1;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$1;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/CropImageView;->setRecycler(Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;)V

    .line 105
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "btn_cancel"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$2;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$2;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "btn_done"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$3;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$3;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method private setupWindowFlags()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->requestWindowFeature(I)Z

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 90
    :cond_0
    return-void
.end method

.method private startCrop()V
    .locals 6

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/soundcloud/android/crop/CropImageView;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "crop__wait"

    const-string v4, "string"

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/CropImageActivity$4;

    invoke-direct {v2, p0}, Lcom/soundcloud/android/crop/CropImageActivity$4;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/soundcloud/android/crop/CropUtil;->startBackgroundJob(Lcom/soundcloud/android/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic addLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/MonitoredActivity;->addLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V

    return-void
.end method

.method public isSaving()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->setupWindowFlags()V

    .line 74
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->setupViews()V

    .line 76
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->loadInput()V

    .line 77
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->startCrop()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 414
    invoke-super {p0}, Lcom/soundcloud/android/crop/MonitoredActivity;->onDestroy()V

    .line 415
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/RotateBitmap;->recycle()V

    .line 418
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic removeLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/MonitoredActivity;->removeLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V

    return-void
.end method
