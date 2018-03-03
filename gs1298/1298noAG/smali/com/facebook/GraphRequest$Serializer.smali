.class Lcom/facebook/GraphRequest$Serializer;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$KeyValueSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation


# instance fields
.field private firstWrite:Z

.field private final logger:Lcom/facebook/internal/Logger;

.field private final outputStream:Ljava/io/OutputStream;

.field private useUrlEncode:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;Z)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "logger"    # Lcom/facebook/internal/Logger;
    .param p3, "useUrlEncode"    # Z

    .prologue
    .line 2074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2071
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->firstWrite:Z

    .line 2072
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    .line 2075
    iput-object p1, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    .line 2076
    iput-object p2, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    .line 2077
    iput-boolean p3, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    .line 2078
    return-void
.end method

.method private getInvalidTypeError()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 2113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a supported type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public varargs write(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2266
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    if-nez v0, :cond_1

    .line 2267
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->firstWrite:Z

    if-eqz v0, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2270
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2271
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->firstWrite:Z

    .line 2274
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2280
    :goto_0
    return-void

    .line 2276
    :cond_1
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2278
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 2277
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2278
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2276
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2156
    const-string v0, "image/png"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2159
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2160
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2161
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Image>"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2164
    :cond_0
    return-void
.end method

.method public writeBytes(Ljava/lang/String;[B)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2167
    const-string v0, "content/unknown"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 2169
    const-string v0, ""

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2170
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2171
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_0

    .line 2172
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "<Data: %d>"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p2

    .line 2174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2172
    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2176
    :cond_0
    return-void
.end method

.method public writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2250
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    if-nez v0, :cond_2

    .line 2251
    const-string v0, "Content-Disposition: form-data; name=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2252
    if-eqz p2, :cond_0

    .line 2253
    const-string v0, "; filename=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2255
    :cond_0
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2256
    if-eqz p3, :cond_1

    .line 2257
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Content-Type"

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2259
    :cond_1
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2263
    :goto_0
    return-void

    .line 2261
    :cond_2
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "%s="

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public writeContentUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2180
    if-nez p3, :cond_0

    .line 2181
    const-string p3, "content/unknown"

    .line 2183
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    const/4 v3, 0x0

    .line 2186
    .local v3, "totalBytes":I
    iget-object v4, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v4, v4, Lcom/facebook/ProgressNoopOutputStream;

    if-eqz v4, :cond_2

    .line 2188
    invoke-static {p2}, Lcom/facebook/internal/Utility;->getContentSize(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2190
    .local v0, "contentSize":J
    iget-object v4, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast v4, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {v4, v0, v1}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    .line 2199
    .end local v0    # "contentSize":J
    :goto_0
    const-string v4, ""

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2200
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2201
    iget-object v4, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v4, :cond_1

    .line 2202
    iget-object v4, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "<Data: %d>"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 2204
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2202
    invoke-virtual {v4, v5, v6}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2206
    :cond_1
    return-void

    .line 2193
    :cond_2
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 2194
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2195
    invoke-virtual {v4, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 2196
    .local v2, "inputStream":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {v2, v4}, Lcom/facebook/internal/Utility;->copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "descriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2213
    if-nez p3, :cond_0

    .line 2214
    const-string p3, "content/unknown"

    .line 2216
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    const/4 v1, 0x0

    .line 2220
    .local v1, "totalBytes":I
    iget-object v2, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v2, v2, Lcom/facebook/ProgressNoopOutputStream;

    if-eqz v2, :cond_2

    .line 2222
    iget-object v2, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast v2, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    .line 2228
    :goto_0
    const-string v2, ""

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2229
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2230
    iget-object v2, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v2, :cond_1

    .line 2231
    iget-object v2, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "<Data: %d>"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 2233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2231
    invoke-virtual {v2, v3, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2235
    :cond_1
    return-void

    .line 2224
    :cond_2
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2226
    .local v0, "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    iget-object v2, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0, v2}, Lcom/facebook/internal/Utility;->copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public varargs writeLine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2283
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2284
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    if-nez v0, :cond_0

    .line 2285
    const-string v0, "\r\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2287
    :cond_0
    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "request"    # Lcom/facebook/GraphRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2081
    iget-object v3, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v3, v3, Lcom/facebook/RequestOutputStream;

    if-eqz v3, :cond_0

    .line 2082
    iget-object v3, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast v3, Lcom/facebook/RequestOutputStream;

    invoke-interface {v3, p3}, Lcom/facebook/RequestOutputStream;->setCurrentRequest(Lcom/facebook/GraphRequest;)V

    .line 2085
    :cond_0
    # invokes: Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z
    invoke-static {p2}, Lcom/facebook/GraphRequest;->access$000(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2086
    # invokes: Lcom/facebook/GraphRequest;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {p2}, Lcom/facebook/GraphRequest;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 2087
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, p2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 2088
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2089
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, p2, [B

    if-eqz v3, :cond_3

    .line 2090
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$Serializer;->writeBytes(Ljava/lang/String;[B)V

    goto :goto_0

    .line 2091
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v3, p2, Landroid/net/Uri;

    if-eqz v3, :cond_4

    .line 2092
    check-cast p2, Landroid/net/Uri;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, v4}, Lcom/facebook/GraphRequest$Serializer;->writeContentUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 2093
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v3, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_5

    .line 2094
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, v4}, Lcom/facebook/GraphRequest$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2095
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v3, p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz v3, :cond_8

    move-object v2, p2

    .line 2096
    check-cast v2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    .line 2098
    .local v2, "resourceWithMimeType":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;
    invoke-virtual {v2}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->getResource()Landroid/os/Parcelable;

    move-result-object v1

    .line 2099
    .local v1, "resource":Landroid/os/Parcelable;
    invoke-virtual {v2}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 2100
    .local v0, "mimeType":Ljava/lang/String;
    instance-of v3, v1, Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_6

    .line 2101
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .end local v1    # "resource":Landroid/os/Parcelable;
    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2102
    .restart local v1    # "resource":Landroid/os/Parcelable;
    :cond_6
    instance-of v3, v1, Landroid/net/Uri;

    if-eqz v3, :cond_7

    .line 2103
    check-cast v1, Landroid/net/Uri;

    .end local v1    # "resource":Landroid/os/Parcelable;
    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/GraphRequest$Serializer;->writeContentUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 2105
    .restart local v1    # "resource":Landroid/os/Parcelable;
    :cond_7
    invoke-direct {p0}, Lcom/facebook/GraphRequest$Serializer;->getInvalidTypeError()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2108
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v1    # "resource":Landroid/os/Parcelable;
    .end local v2    # "resourceWithMimeType":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;
    :cond_8
    invoke-direct {p0}, Lcom/facebook/GraphRequest$Serializer;->getInvalidTypeError()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public writeRecordBoundary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2238
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$Serializer;->useUrlEncode:Z

    if-nez v0, :cond_0

    .line 2239
    const-string v0, "--%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2243
    :goto_0
    return-void

    .line 2241
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    const-string v1, "&"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requestJsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p3, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2121
    iget-object v4, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    instance-of v4, v4, Lcom/facebook/RequestOutputStream;

    if-nez v4, :cond_1

    .line 2122
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    :cond_0
    :goto_0
    return-void

    .line 2126
    :cond_1
    iget-object v3, p0, Lcom/facebook/GraphRequest$Serializer;->outputStream:Ljava/io/OutputStream;

    check-cast v3, Lcom/facebook/RequestOutputStream;

    .line 2127
    .local v3, "requestOutputStream":Lcom/facebook/RequestOutputStream;
    invoke-virtual {p0, p1, v5, v5}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    const-string v4, "["

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2129
    const/4 v0, 0x0

    .line 2130
    .local v0, "i":I
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 2131
    .local v1, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2132
    .local v2, "requestJson":Lorg/json/JSONObject;
    invoke-interface {v3, v1}, Lcom/facebook/RequestOutputStream;->setCurrentRequest(Lcom/facebook/GraphRequest;)V

    .line 2133
    if-lez v0, :cond_2

    .line 2134
    const-string v5, ",%s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2138
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 2139
    goto :goto_1

    .line 2136
    :cond_2
    const-string v5, "%s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2140
    .end local v1    # "request":Lcom/facebook/GraphRequest;
    .end local v2    # "requestJson":Lorg/json/JSONObject;
    :cond_3
    const-string v4, "]"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/GraphRequest$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2141
    iget-object v4, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v4, :cond_0

    .line 2142
    iget-object v4, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2147
    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/GraphRequest$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2149
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$Serializer;->writeRecordBoundary()V

    .line 2150
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/facebook/GraphRequest$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2153
    :cond_0
    return-void
.end method
