.class public Lcom/unity3d/ads/misc/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->Sha256([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Sha256([B)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B

    .prologue
    const/4 v2, 0x0

    .line 39
    if-nez p0, :cond_0

    .line 53
    :goto_0
    return-object v2

    .line 45
    :cond_0
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    .local v1, "m":Ljava/security/MessageDigest;
    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v1, p0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 53
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/misc/Utilities;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 46
    .end local v1    # "m":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "SHA-256 algorithm not found"

    invoke-static {v3, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "fileToRead"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 108
    if-nez p0, :cond_1

    move-object v3, v7

    .line 153
    :cond_0
    :goto_0
    return-object v3

    .line 112
    :cond_1
    const-string v3, ""

    .line 113
    .local v3, "fileContent":Ljava/lang/String;
    const/4 v0, 0x0

    .line 114
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 116
    .local v4, "fr":Ljava/io/FileReader;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 118
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 122
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 123
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .line 131
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v0, :cond_3

    .line 132
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 139
    :cond_3
    :goto_3
    if-eqz v4, :cond_0

    .line 140
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "Couldn\'t close FileReader"

    invoke-static {v7, v2}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 127
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_4
    const-string v7, "Problem reading file"

    invoke-static {v7, v2}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 128
    const/4 v3, 0x0

    goto :goto_2

    .line 135
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 136
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v7, "Couldn\'t close BufferedReader"

    invoke-static {v7, v2}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 150
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v8, "File did not exist or couldn\'t be read"

    invoke-static {v8}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    move-object v3, v7

    .line 153
    goto :goto_0

    .line 126
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public static readFileBytes(Ljava/io/File;)[B
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    if-nez p0, :cond_0

    .line 158
    const/4 v4, 0x0

    .line 173
    :goto_0
    return-object v4

    .line 161
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 163
    .local v1, "inputStream":Ljava/io/InputStream;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 166
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "read":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 167
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 170
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 171
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 173
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 21
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;J)V

    .line 22
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;J)V
    .locals 5
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .local v0, "handler":Landroid/os/Handler;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 28
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "array"    # [B

    .prologue
    .line 57
    const-string v1, ""

    .line 58
    .local v1, "output":Ljava/lang/String;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v2, p0, v3

    .line 60
    .local v2, "rawByte":B
    and-int/lit16 v0, v2, 0xff

    .line 63
    .local v0, "b":I
    const/16 v5, 0xf

    if-gt v0, v5, :cond_0

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "b":I
    .end local v2    # "rawByte":B
    :cond_1
    return-object v1
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p0, "fileToWrite"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 74
    if-nez p0, :cond_1

    .line 75
    const/4 v3, 0x0

    .line 104
    :cond_0
    :goto_0
    return v3

    .line 78
    :cond_1
    const/4 v1, 0x0

    .line 79
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    .line 82
    .local v3, "success":Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 84
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    if-eqz v2, :cond_2

    .line 93
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v1, v2

    .line 100
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrote file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Error closing FileOutputStream"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 98
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 87
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v3, 0x0

    .line 88
    :try_start_3
    const-string v4, "Could not write file"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    if-eqz v1, :cond_3

    .line 93
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 95
    :catch_2
    move-exception v0

    .line 96
    const-string v4, "Error closing FileOutputStream"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 92
    :goto_3
    if-eqz v1, :cond_4

    .line 93
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 97
    :cond_4
    :goto_4
    throw v4

    .line 95
    :catch_3
    move-exception v0

    .line 96
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "Error closing FileOutputStream"

    invoke-static {v5, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 86
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
