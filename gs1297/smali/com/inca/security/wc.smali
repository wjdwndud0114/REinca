.class public Lcom/inca/security/wc;
.super Ljava/lang/Thread;
.source "nc"


# instance fields
.field private synthetic IIIIiiIiII:Ljava/lang/String;

.field private synthetic IIIiiiiIII:I

.field private synthetic IiIiIIIiIi:Landroid/content/Context;

.field private synthetic IiIiIiiIii:Ljava/lang/String;

.field private final synthetic IiiIiiiIiI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[BLjava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "http://error.appguard.co.kr/LogServer3/el.do"

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 0
    iput-object v0, p0, Lcom/inca/security/wc;->IiiIiiiIiI:Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/inca/security/wc;->IiIiIIIiIi:Landroid/content/Context;

    .line 58
    iput p2, p0, Lcom/inca/security/wc;->IIIiiiiIII:I

    .line 117
    iput-object p4, p0, Lcom/inca/security/wc;->IIIIiiIiII:Ljava/lang/String;

    .line 22
    if-eqz p3, :cond_0

    .line 97
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/inca/security/wc;->IiIiIiiIii:Ljava/lang/String;

    .line 120
    :cond_0
    return-void
.end method

.method private synthetic IiiiIIIIii([Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p1, "arg0"    # [Ljava/io/File;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 71
    const/16 v0, 0x400

    new-array v4, v0, [B

    .line 171
    const/4 v1, 0x0

    .line 193
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    array-length v5, p1

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, p1, v3

    .line 111
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 129
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 122
    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 177
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    move-object v1, v2

    goto :goto_1

    .line 137
    :cond_0
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v3, v1

    .line 37
    goto :goto_0

    .line 74
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 64
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    :goto_2
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 88
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 74
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 64
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 84
    :catch_2
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 57
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 74
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 64
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 84
    :catch_4
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 90
    :catchall_0
    move-exception v0

    .line 74
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 64
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 169
    :goto_6
    throw v0

    .line 84
    :catch_5
    move-exception v1

    .line 154
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 90
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    .line 57
    :catch_6
    move-exception v1

    goto :goto_4

    .line 88
    :catch_7
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0xc350

    const/4 v0, 0x0

    .line 123
    iget v1, p0, Lcom/inca/security/wc;->IIIiiiiIII:I

    const/16 v2, 0x270f

    if-ne v1, v2, :cond_2

    .line 166
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/inca/security/wc;->IiIiIIIiIi:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "l/,$"

    invoke-static {v2}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    const-string v2, "-#\'u{~m1z"

    invoke-static {v2}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inca/security/wc;->IiIiIIIiIi:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 112
    array-length v1, v3

    if-eqz v1, :cond_1

    .line 176
    invoke-direct {p0, v3, v2}, Lcom/inca/security/wc;->IiiiIIIIii([Ljava/io/File;Ljava/lang/String;)V

    .line 141
    new-instance v1, Lcom/inca/security/ka;

    invoke-direct {v1}, Lcom/inca/security/ka;-><init>()V

    const-string v4, "http://error.appguard.co.kr/LogServer3/el.do"

    .line 48
    invoke-virtual {v1, v4}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v1

    const-string v4, "$*\'"

    invoke-static {v4}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/inca/security/wc;->IiIiIIIiIi:Landroid/content/Context;

    .line 205
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v1

    const-string v4, "3g4m"

    invoke-static {v4}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/inca/security/wc;->IIIiiiiIII:I

    add-int/2addr v5, v8

    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v1

    const-string v4, "&1/%*/&"

    invoke-static {v4}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1, v4, v5}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/io/File;)Lcom/inca/security/ka;

    move-result-object v1

    const/16 v4, 0x1388

    .line 40
    invoke-virtual {v1, v4}, Lcom/inca/security/ka;->IiiiIIIIii(I)Lcom/inca/security/ka;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/inca/security/ka;->IiiiIIIIii()Lcom/inca/security/xa;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/inca/security/xa;->IiiiIIIIii()Ljava/util/Map;

    .line 152
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v1

    add-int/lit8 v0, v1, 0x1

    .line 119
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move v1, v0

    .line 152
    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 199
    :cond_1
    :goto_1
    return-void

    .line 12
    :cond_2
    iget v1, p0, Lcom/inca/security/wc;->IIIiiiiIII:I

    const/16 v2, 0x2706

    if-ne v1, v2, :cond_4

    .line 100
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/inca/security/wc;->IiIiIIIiIi:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u007fd?o\u000fm(k5x$a?f"

    invoke-static {v2}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "f0lf0m&\"1"

    invoke-static {v2}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inca/security/wc;->IiIiIIIiIi:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 104
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 204
    array-length v1, v3

    if-eqz v1, :cond_1

    .line 66
    invoke-direct {p0, v3, v2}, Lcom/inca/security/wc;->IiiiIIIIii([Ljava/io/File;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/inca/security/ka;

    invoke-direct {v1}, Lcom/inca/security/ka;-><init>()V

    const-string v4, "http://error.appguard.co.kr/LogServer3/el.do"

    .line 133
    invoke-virtual {v1, v4}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v1

    const-string v4, "o9l"

    invoke-static {v4}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/inca/security/wc;->IiIiIIIiIi:Landroid/content/Context;

    .line 170
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v1

    const-string v4, " ,\'&"

    invoke-static {v4}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/inca/security/wc;->IIIiiiiIII:I

    add-int/2addr v5, v8

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v1

    const-string v4, "m\"d6a<m"

    invoke-static {v4}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1, v4, v5}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/io/File;)Lcom/inca/security/ka;

    move-result-object v1

    const/16 v4, 0x1388

    .line 92
    invoke-virtual {v1, v4}, Lcom/inca/security/ka;->IiiiIIIIii(I)Lcom/inca/security/ka;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/inca/security/ka;->IiiiIIIIii()Lcom/inca/security/xa;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/inca/security/xa;->IiiiIIIIii()Ljava/util/Map;

    .line 108
    array-length v4, v3

    move v1, v0

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v1

    add-int/lit8 v0, v1, 0x1

    .line 125
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move v1, v0

    .line 108
    goto :goto_2

    .line 103
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_1

    .line 167
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 109
    :cond_4
    iget v0, p0, Lcom/inca/security/wc;->IIIiiiiIII:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 156
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/inca/security/wc;->IiIiIIIiIi:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "&11,1m/,$"

    invoke-static {v2}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 173
    new-instance v2, Lcom/inca/security/e;

    invoke-direct {v2, v1}, Lcom/inca/security/e;-><init>(Ljava/io/Writer;)V

    .line 135
    const-string v1, "\r\n"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "M\"z?z\u0013g4mj("

    invoke-static {v5}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/inca/security/wc;->IIIiiiiIII:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inca/security/e;->println(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2, v1}, Lcom/inca/security/e;->println(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/inca/security/wc;->IiIiIiiIii:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "\u0006; &37*,-yc"

    invoke-static {v4}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/inca/security/wc;->IiIiIiiIii:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/inca/security/e;->println(Ljava/lang/String;)V

    .line 70
    :cond_5
    const-string v1, "\r\n"

    invoke-virtual {v2, v1}, Lcom/inca/security/e;->println(Ljava/lang/String;)V

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "^5z#a?fj("

    invoke-static {v4}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/inca/security/wc;->IIIIiiIiII:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/inca/security/e;->println(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Lcom/inca/security/e;->close()V

    .line 28
    new-instance v1, Lcom/inca/security/ka;

    invoke-direct {v1}, Lcom/inca/security/ka;-><init>()V

    const-string v2, "http://error.appguard.co.kr/LogServer3/el.do"

    .line 143
    invoke-virtual {v1, v2}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v1

    const-string v2, "$*\'"

    invoke-static {v2}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inca/security/wc;->IiIiIIIiIi:Landroid/content/Context;

    .line 200
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v1

    const-string v2, "3g4m"

    invoke-static {v2}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/inca/security/wc;->IIIiiiiIII:I

    add-int/2addr v3, v8

    .line 184
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v1

    const-string v2, "&1/%*/&"

    invoke-static {v2}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v1, v2, v0}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/io/File;)Lcom/inca/security/ka;

    move-result-object v0

    const/16 v1, 0x1388

    .line 1
    invoke-virtual {v0, v1}, Lcom/inca/security/ka;->IiiiIIIIii(I)Lcom/inca/security/ka;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/inca/security/ka;->IiiiIIIIii()Lcom/inca/security/xa;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/inca/security/xa;->IiiiIIIIii()Ljava/util/Map;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 9
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 83
    :cond_6
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/inca/security/wc;->IiIiIIIiIi:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "m\"z?z~d?o"

    invoke-static {v2}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 136
    const-string v2, "\r\n"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "\u000611,1\u0000,\'&yc"

    invoke-static {v5}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/inca/security/wc;->IIIiiiiIII:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "^5z#a?fj("

    invoke-static {v4}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inca/security/wc;->IIIIiiIiII:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 38
    new-instance v1, Lcom/inca/security/ka;

    invoke-direct {v1}, Lcom/inca/security/ka;-><init>()V

    const-string v2, "http://error.appguard.co.kr/LogServer3/el.do"

    .line 89
    invoke-virtual {v1, v2}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v1

    const-string v2, "$*\'"

    invoke-static {v2}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inca/security/wc;->IiIiIIIiIi:Landroid/content/Context;

    .line 142
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v1

    const-string v2, "3g4m"

    invoke-static {v2}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/inca/security/wc;->IIIiiiiIII:I

    add-int/2addr v3, v8

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v1

    const-string v2, "&1/%*/&"

    invoke-static {v2}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v1, v2, v0}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/io/File;)Lcom/inca/security/ka;

    move-result-object v0

    const/16 v1, 0x1388

    .line 116
    invoke-virtual {v0, v1}, Lcom/inca/security/ka;->IiiiIIIIii(I)Lcom/inca/security/ka;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/inca/security/ka;->IiiiIIIIii()Lcom/inca/security/xa;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/inca/security/xa;->IiiiIIIIii()Ljava/util/Map;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 148
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 101
    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 76
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 192
    :catch_5
    move-exception v0

    goto/16 :goto_1

    .line 8
    :catch_6
    move-exception v0

    goto/16 :goto_1

    .line 139
    :catch_7
    move-exception v0

    goto/16 :goto_1
.end method
