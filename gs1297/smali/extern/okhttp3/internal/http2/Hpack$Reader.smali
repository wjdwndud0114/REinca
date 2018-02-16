.class final Lextern/okhttp3/internal/http2/Hpack$Reader;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field dynamicTable:[Lextern/okhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field headerCount:I

.field private final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final source:Lextern/okio/BufferedSource;


# direct methods
.method constructor <init>(IILextern/okio/Source;)V
    .locals 2
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "maxDynamicTableByteCount"    # I
    .param p3, "source"    # Lextern/okio/Source;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    .line 125
    const/16 v0, 0x8

    new-array v0, v0, [Lextern/okhttp3/internal/http2/Header;

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    .line 127
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 128
    iput v1, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 129
    iput v1, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 136
    iput p1, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    .line 137
    iput p2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 138
    invoke-static {p3}, Lextern/okio/Okio;->buffer(Lextern/okio/Source;)Lextern/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->source:Lextern/okio/BufferedSource;

    .line 139
    return-void
.end method

.method constructor <init>(ILextern/okio/Source;)V
    .locals 0
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "source"    # Lextern/okio/Source;

    .prologue
    .line 132
    invoke-direct {p0, p1, p1, p2}, Lextern/okhttp3/internal/http2/Hpack$Reader;-><init>(IILextern/okio/Source;)V

    .line 133
    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v1, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_0

    .line 147
    iget v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-nez v0, :cond_1

    .line 148
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    iget v1, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    goto :goto_0
.end method

.method private clearDynamicTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 159
    iput v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 160
    iput v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 161
    return-void
.end method

.method private dynamicTableIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 235
    iget v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private evictToRecoverBytes(I)I
    .locals 7
    .param p1, "bytesToRecover"    # I

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 168
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 169
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lextern/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 170
    iget v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    iget-object v3, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lextern/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 171
    iget v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 168
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 174
    :cond_0
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    iget v3, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    iget v5, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    iget v6, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 178
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method private getName(I)Lextern/okio/ByteString;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    # getter for: Lextern/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lextern/okhttp3/internal/http2/Header;
    invoke-static {}, Lextern/okhttp3/internal/http2/Hpack;->access$000()[Lextern/okhttp3/internal/http2/Header;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lextern/okhttp3/internal/http2/Header;->name:Lextern/okio/ByteString;

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    # getter for: Lextern/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lextern/okhttp3/internal/http2/Header;
    invoke-static {}, Lextern/okhttp3/internal/http2/Hpack;->access$000()[Lextern/okhttp3/internal/http2/Header;

    move-result-object v1

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lextern/okhttp3/internal/http2/Header;->name:Lextern/okio/ByteString;

    goto :goto_0
.end method

.method private insertIntoDynamicTable(ILextern/okhttp3/internal/http2/Header;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "entry"    # Lextern/okhttp3/internal/http2/Header;

    .prologue
    const/4 v6, -0x1

    .line 277
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget v1, p2, Lextern/okhttp3/internal/http2/Header;->hpackSize:I

    .line 280
    .local v1, "delta":I
    if-eq p1, v6, :cond_0

    .line 281
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v5

    aget-object v4, v4, v5

    iget v4, v4, Lextern/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v1, v4

    .line 285
    :cond_0
    iget v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-le v1, v4, :cond_1

    .line 286
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    .line 309
    :goto_0
    return-void

    .line 291
    :cond_1
    iget v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v4, v1

    iget v5, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    sub-int v0, v4, v5

    .line 292
    .local v0, "bytesToRecover":I
    invoke-direct {p0, v0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v3

    .line 294
    .local v3, "entriesEvicted":I
    if-ne p1, v6, :cond_3

    .line 295
    iget v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v5, v5

    if-le v4, v5, :cond_2

    .line 296
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Lextern/okhttp3/internal/http2/Header;

    .line 297
    .local v2, "doubled":[Lextern/okhttp3/internal/http2/Header;
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    const/4 v5, 0x0

    iget-object v6, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v6, v6

    iget-object v7, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 299
    iput-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    .line 301
    .end local v2    # "doubled":[Lextern/okhttp3/internal/http2/Header;
    :cond_2
    iget p1, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .end local p1    # "index":I
    add-int/lit8 v4, p1, -0x1

    iput v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 302
    .restart local p1    # "index":I
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    aput-object p2, v4, p1

    .line 303
    iget v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 308
    :goto_1
    iget v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    goto :goto_0

    .line 305
    :cond_3
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr p1, v4

    .line 306
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    aput-object p2, v4, p1

    goto :goto_1
.end method

.method private isStaticHeader(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 272
    if-ltz p1, :cond_0

    # getter for: Lextern/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lextern/okhttp3/internal/http2/Header;
    invoke-static {}, Lextern/okhttp3/internal/http2/Hpack;->access$000()[Lextern/okhttp3/internal/http2/Header;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v0}, Lextern/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    # getter for: Lextern/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lextern/okhttp3/internal/http2/Header;
    invoke-static {}, Lextern/okhttp3/internal/http2/Hpack;->access$000()[Lextern/okhttp3/internal/http2/Header;

    move-result-object v2

    aget-object v1, v2, p1

    .line 223
    .local v1, "staticEntry":Lextern/okhttp3/internal/http2/Header;
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v1    # "staticEntry":Lextern/okhttp3/internal/http2/Header;
    :goto_0
    return-void

    .line 225
    :cond_0
    # getter for: Lextern/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lextern/okhttp3/internal/http2/Header;
    invoke-static {}, Lextern/okhttp3/internal/http2/Hpack;->access$000()[Lextern/okhttp3/internal/http2/Header;

    move-result-object v2

    array-length v2, v2

    sub-int v2, p1, v2

    invoke-direct {p0, v2}, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    .line 226
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_1

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_2

    .line 227
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Header index too large "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_2
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    iget-object v3, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .locals 4
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http2/Hpack$Reader;->getName(I)Lextern/okio/ByteString;

    move-result-object v0

    .line 253
    .local v0, "name":Lextern/okio/ByteString;
    invoke-virtual {p0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readByteString()Lextern/okio/ByteString;

    move-result-object v1

    .line 254
    .local v1, "value":Lextern/okio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lextern/okhttp3/internal/http2/Header;

    invoke-direct {v3, v0, v1}, Lextern/okhttp3/internal/http2/Header;-><init>(Lextern/okio/ByteString;Lextern/okio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lextern/okhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILextern/okhttp3/internal/http2/Header;)V

    .line 255
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readByteString()Lextern/okio/ByteString;

    move-result-object v2

    # invokes: Lextern/okhttp3/internal/http2/Hpack;->checkLowercase(Lextern/okio/ByteString;)Lextern/okio/ByteString;
    invoke-static {v2}, Lextern/okhttp3/internal/http2/Hpack;->access$100(Lextern/okio/ByteString;)Lextern/okio/ByteString;

    move-result-object v0

    .line 259
    .local v0, "name":Lextern/okio/ByteString;
    invoke-virtual {p0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readByteString()Lextern/okio/ByteString;

    move-result-object v1

    .line 260
    .local v1, "value":Lextern/okio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lextern/okhttp3/internal/http2/Header;

    invoke-direct {v3, v0, v1}, Lextern/okhttp3/internal/http2/Header;-><init>(Lextern/okio/ByteString;Lextern/okio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lextern/okhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILextern/okhttp3/internal/http2/Header;)V

    .line 261
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http2/Hpack$Reader;->getName(I)Lextern/okio/ByteString;

    move-result-object v0

    .line 240
    .local v0, "name":Lextern/okio/ByteString;
    invoke-virtual {p0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readByteString()Lextern/okio/ByteString;

    move-result-object v1

    .line 241
    .local v1, "value":Lextern/okio/ByteString;
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lextern/okhttp3/internal/http2/Header;

    invoke-direct {v3, v0, v1}, Lextern/okhttp3/internal/http2/Header;-><init>(Lextern/okio/ByteString;Lextern/okio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readByteString()Lextern/okio/ByteString;

    move-result-object v2

    # invokes: Lextern/okhttp3/internal/http2/Hpack;->checkLowercase(Lextern/okio/ByteString;)Lextern/okio/ByteString;
    invoke-static {v2}, Lextern/okhttp3/internal/http2/Hpack;->access$100(Lextern/okio/ByteString;)Lextern/okio/ByteString;

    move-result-object v0

    .line 246
    .local v0, "name":Lextern/okio/ByteString;
    invoke-virtual {p0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readByteString()Lextern/okio/ByteString;

    move-result-object v1

    .line 247
    .local v1, "value":Lextern/okio/ByteString;
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lextern/okhttp3/internal/http2/Header;

    invoke-direct {v3, v0, v1}, Lextern/okhttp3/internal/http2/Header;-><init>(Lextern/okio/ByteString;Lextern/okio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method


# virtual methods
.method public getAndResetHeaderList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 216
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 217
    return-object v0
.end method

.method maxDynamicTableByteCount()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    return v0
.end method

.method readByteString()Lextern/okio/ByteString;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v0

    .line 340
    .local v0, "firstByte":I
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 341
    .local v1, "huffmanDecode":Z
    :goto_0
    const/16 v3, 0x7f

    invoke-virtual {p0, v0, v3}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v2

    .line 343
    .local v2, "length":I
    if-eqz v1, :cond_1

    .line 344
    invoke-static {}, Lextern/okhttp3/internal/http2/Huffman;->get()Lextern/okhttp3/internal/http2/Huffman;

    move-result-object v3

    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->source:Lextern/okio/BufferedSource;

    int-to-long v6, v2

    invoke-interface {v4, v6, v7}, Lextern/okio/BufferedSource;->readByteArray(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lextern/okhttp3/internal/http2/Huffman;->decode([B)[B

    move-result-object v3

    invoke-static {v3}, Lextern/okio/ByteString;->of([B)Lextern/okio/ByteString;

    move-result-object v3

    .line 346
    :goto_1
    return-object v3

    .line 340
    .end local v1    # "huffmanDecode":Z
    .end local v2    # "length":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 346
    .restart local v1    # "huffmanDecode":Z
    .restart local v2    # "length":I
    :cond_1
    iget-object v3, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->source:Lextern/okio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lextern/okio/BufferedSource;->readByteString(J)Lextern/okio/ByteString;

    move-result-object v3

    goto :goto_1
.end method

.method readHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0x40

    .line 186
    :goto_0
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v2}, Lextern/okio/BufferedSource;->exhausted()Z

    move-result v2

    if-nez v2, :cond_9

    .line 187
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->source:Lextern/okio/BufferedSource;

    invoke-interface {v2}, Lextern/okio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 188
    .local v0, "b":I
    if-ne v0, v5, :cond_0

    .line 189
    new-instance v2, Ljava/io/IOException;

    const-string v3, "index == 0"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_0
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v5, :cond_1

    .line 191
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 192
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readIndexedHeader(I)V

    goto :goto_0

    .line 193
    .end local v1    # "index":I
    :cond_1
    if-ne v0, v4, :cond_2

    .line 194
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_0

    .line 195
    :cond_2
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v4, :cond_3

    .line 196
    const/16 v2, 0x3f

    invoke-virtual {p0, v0, v2}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 197
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    goto :goto_0

    .line 198
    .end local v1    # "index":I
    :cond_3
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 199
    const/16 v2, 0x1f

    invoke-virtual {p0, v0, v2}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v2

    iput v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 200
    iget v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-ltz v2, :cond_4

    iget v2, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v3, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    if-le v2, v3, :cond_5

    .line 202
    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid dynamic table size update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lextern/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_5
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->adjustDynamicTableByteCount()V

    goto :goto_0

    .line 205
    :cond_6
    const/16 v2, 0x10

    if-eq v0, v2, :cond_7

    if-nez v0, :cond_8

    .line 206
    :cond_7
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto :goto_0

    .line 208
    :cond_8
    const/16 v2, 0xf

    invoke-virtual {p0, v0, v2}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 209
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto/16 :goto_0

    .line 212
    .end local v0    # "b":I
    .end local v1    # "index":I
    :cond_9
    return-void
.end method

.method readInt(II)I
    .locals 5
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    and-int v1, p1, p2

    .line 317
    .local v1, "prefix":I
    if-ge v1, p2, :cond_0

    .line 334
    .end local v1    # "prefix":I
    :goto_0
    return v1

    .line 322
    .restart local v1    # "prefix":I
    :cond_0
    move v2, p2

    .line 323
    .local v2, "result":I
    const/4 v3, 0x0

    .line 325
    .local v3, "shift":I
    :goto_1
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v0

    .line 326
    .local v0, "b":I
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1

    .line 327
    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 328
    add-int/lit8 v3, v3, 0x7

    goto :goto_1

    .line 330
    :cond_1
    shl-int v4, v0, v3

    add-int/2addr v2, v4

    move v1, v2

    .line 334
    goto :goto_0
.end method
