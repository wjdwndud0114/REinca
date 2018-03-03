.class public Lnet/supercat/StoreImage;
.super Ljava/lang/Object;
.source "StoreImage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveImageToGallery(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 19
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .local v18, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v2, "_display_name"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v2, "description"

    const-string v6, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v2, "mime_type"

    const-string v6, "image/jpeg"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 36
    .local v14, "millis":J
    const-string v2, "date_added"

    const-wide/16 v6, 0x3e8

    div-long v6, v14, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    const-string v2, "date_modified"

    const-wide/16 v6, 0x3e8

    div-long v6, v14, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    const-string v2, "datetaken"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 40
    const/16 v17, 0x0

    .line 43
    .local v17, "url":Landroid/net/Uri;
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 45
    if-eqz p1, :cond_2

    .line 46
    const/16 v9, 0x400

    .line 48
    .local v9, "BUFFER_SIZE":I
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v12, "fileStream":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    .line 52
    .local v13, "imageOut":Ljava/io/OutputStream;
    const/16 v2, 0x400

    :try_start_2
    new-array v10, v2, [B

    .line 54
    .local v10, "buffer":[B
    :goto_0
    invoke-virtual {v12, v10}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    .line 55
    .local v16, "numBytesRead":I
    if-gtz v16, :cond_1

    .line 61
    :try_start_3
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 67
    invoke-static/range {v17 .. v17}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 69
    .local v4, "id":J
    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v2, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 71
    .local v3, "miniThumb":Landroid/graphics/Bitmap;
    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x42480000    # 50.0f

    const/4 v8, 0x3

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lnet/supercat/StoreImage;->storeThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    .end local v3    # "miniThumb":Landroid/graphics/Bitmap;
    .end local v4    # "id":J
    .end local v9    # "BUFFER_SIZE":I
    .end local v10    # "buffer":[B
    .end local v12    # "fileStream":Ljava/io/FileInputStream;
    .end local v13    # "imageOut":Ljava/io/OutputStream;
    .end local v16    # "numBytesRead":I
    :cond_0
    :goto_1
    return-object v17

    .line 58
    .restart local v9    # "BUFFER_SIZE":I
    .restart local v10    # "buffer":[B
    .restart local v12    # "fileStream":Ljava/io/FileInputStream;
    .restart local v13    # "imageOut":Ljava/io/OutputStream;
    .restart local v16    # "numBytesRead":I
    :cond_1
    const/4 v2, 0x0

    :try_start_5
    move/from16 v0, v16

    invoke-virtual {v13, v10, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 61
    .end local v10    # "buffer":[B
    .end local v16    # "numBytesRead":I
    :catchall_0
    move-exception v2

    :try_start_6
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 64
    .end local v13    # "imageOut":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 76
    .end local v9    # "BUFFER_SIZE":I
    .end local v12    # "fileStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v11

    .line 77
    .local v11, "e":Ljava/lang/Exception;
    if-eqz v17, :cond_0

    .line 78
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    const/16 v17, 0x0

    goto :goto_1

    .line 73
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 74
    const/16 v17, 0x0

    goto :goto_1
.end method

.method private static storeThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "id"    # J
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "kind"    # I

    .prologue
    .line 101
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 103
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v10, p4, v2

    .line 104
    .local v10, "scaleX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v11, p5, v2

    .line 106
    .local v11, "scaleY":F
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 108
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p1

    .line 108
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 114
    .local v12, "thumb":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v15, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 115
    .local v15, "values":Landroid/content/ContentValues;
    const-string v2, "kind"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v2, "image_id"

    move-wide/from16 v0, p2

    long-to-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v2, "height"

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v2, "width"

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    sget-object v2, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 123
    .local v14, "url":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v13

    .line 124
    .local v13, "thumbOut":Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v12, v2, v3, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 125
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    .end local v12    # "thumb":Landroid/graphics/Bitmap;
    .end local v13    # "thumbOut":Ljava/io/OutputStream;
    :goto_0
    return-object v12

    .line 127
    .restart local v12    # "thumb":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 128
    .local v9, "ex":Ljava/io/FileNotFoundException;
    const/4 v12, 0x0

    goto :goto_0

    .line 129
    .end local v9    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 130
    .local v9, "ex":Ljava/io/IOException;
    const/4 v12, 0x0

    goto :goto_0
.end method
