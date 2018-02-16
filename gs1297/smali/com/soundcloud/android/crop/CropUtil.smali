.class Lcom/soundcloud/android/crop/CropUtil;
.super Ljava/lang/Object;
.source "CropUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;
    }
.end annotation


# static fields
.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_FILE:Ljava/lang/String; = "file"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copyExifRotation(Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 77
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v3

    .line 79
    :cond_1
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "exifSource":Landroid/media/ExifInterface;
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "exifDest":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const-string v5, "Orientation"

    invoke-virtual {v2, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const/4 v3, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "exifDest":Landroid/media/ExifInterface;
    .end local v2    # "exifSource":Landroid/media/ExifInterface;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Error copying Exif data"

    invoke-static {v4, v0}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getExifRotation(Ljava/io/File;)I
    .locals 5
    .param p0, "imageFile"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 56
    if-nez p0, :cond_0

    .line 72
    :goto_0
    return v2

    .line 58
    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 64
    :pswitch_1
    const/16 v2, 0xb4

    goto :goto_0

    .line 62
    :pswitch_2
    const/16 v2, 0x5a

    goto :goto_0

    .line 66
    :pswitch_3
    const/16 v2, 0x10e

    goto :goto_0

    .line 70
    .end local v1    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Error getting Exif data"

    invoke-static {v3, v0}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 92
    if-nez p2, :cond_1

    move-object v0, v10

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :cond_1
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_display_name"

    aput-object v1, v2, v0

    .line 98
    .local v2, "filePathColumn":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 100
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 101
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.google.android.gallery3d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_display_name"

    .line 103
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 106
    .local v6, "columnIndex":I
    :goto_1
    const/4 v0, -0x1

    if-eq v6, v0, :cond_4

    .line 107
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, "filePath":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 103
    .end local v6    # "columnIndex":I
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v0, "_data"

    .line 104
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    goto :goto_1

    .line 119
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_5
    :goto_2
    move-object v0, v10

    .line 122
    goto :goto_0

    .line 113
    .restart local v2    # "filePathColumn":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 115
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-static {p0, p1, p2}, Lcom/soundcloud/android/crop/CropUtil;->getFromMediaUriPfd(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 119
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 116
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 119
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private static getFromMediaUriPfd(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 133
    if-nez p2, :cond_0

    .line 157
    :goto_0
    return-object v9

    .line 135
    :cond_0
    const/4 v2, 0x0

    .line 136
    .local v2, "input":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 138
    .local v4, "output":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v10, "r"

    invoke-virtual {p1, p2, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 139
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 140
    .local v1, "fd":Ljava/io/FileDescriptor;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .end local v2    # "input":Ljava/io/FileInputStream;
    .local v3, "input":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {p0}, Lcom/soundcloud/android/crop/CropUtil;->getTempFilename(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "tempFilename":Ljava/lang/String;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .local v5, "output":Ljava/io/FileOutputStream;
    const/16 v10, 0x1000

    :try_start_2
    new-array v0, v10, [B

    .line 147
    .local v0, "bytes":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    .line 148
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 151
    .end local v0    # "bytes":[B
    .end local v7    # "read":I
    :catch_0
    move-exception v10

    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 154
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "tempFilename":Ljava/lang/String;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    :goto_2
    invoke-static {v2}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 155
    invoke-static {v4}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 150
    .end local v2    # "input":Ljava/io/FileInputStream;
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "bytes":[B
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v7    # "read":I
    .restart local v8    # "tempFilename":Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 154
    invoke-static {v3}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 155
    invoke-static {v5}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v9, v10

    .line 150
    goto :goto_0

    .line 154
    .end local v0    # "bytes":[B
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "read":I
    .end local v8    # "tempFilename":Ljava/lang/String;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-static {v2}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 155
    invoke-static {v4}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 154
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "input":Ljava/io/FileInputStream;
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "tempFilename":Ljava/lang/String;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .line 151
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "tempFilename":Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_2

    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v10

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static getTempFilename(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 127
    .local v0, "outputDir":Ljava/io/File;
    const-string v2, "image"

    const-string v3, "tmp"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 128
    .local v1, "outputFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static startBackgroundJob(Lcom/soundcloud/android/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 3
    .param p0, "activity"    # Lcom/soundcloud/android/crop/MonitoredActivity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "job"    # Ljava/lang/Runnable;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 164
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 166
    .local v0, "dialog":Landroid/app/ProgressDialog;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;

    invoke-direct {v2, p0, p3, v0, p4}, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;-><init>(Lcom/soundcloud/android/crop/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 167
    return-void
.end method
