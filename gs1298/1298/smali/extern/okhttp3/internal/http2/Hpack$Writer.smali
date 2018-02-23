.class final Lextern/okhttp3/internal/http2/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# static fields
.field private static final SETTINGS_HEADER_TABLE_SIZE:I = 0x1000

.field private static final SETTINGS_HEADER_TABLE_SIZE_LIMIT:I = 0x4000


# instance fields
.field dynamicTable:[Lextern/okhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerCount:I

.field headerTableSizeSetting:I

.field maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final out:Lextern/okio/Buffer;

.field private smallestHeaderTableSizeSetting:I

.field private final useCompression:Z


# direct methods
.method constructor <init>(IZLextern/okio/Buffer;)V
    .locals 2
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "useCompression"    # Z
    .param p3, "out"    # Lextern/okio/Buffer;

    .prologue
    const/4 v1, 0x0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const v0, 0x7fffffff

    iput v0, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 387
    const/16 v0, 0x8

    new-array v0, v0, [Lextern/okhttp3/internal/http2/Header;

    iput-object v0, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    .line 389
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 390
    iput v1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 391
    iput v1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 398
    iput p1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    .line 399
    iput p1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 400
    iput-boolean p2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    .line 401
    iput-object p3, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->out:Lextern/okio/Buffer;

    .line 402
    return-void
.end method

.method constructor <init>(Lextern/okio/Buffer;)V
    .locals 2
    .param p1, "out"    # Lextern/okio/Buffer;

    .prologue
    .line 394
    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lextern/okhttp3/internal/http2/Hpack$Writer;-><init>(IZLextern/okio/Buffer;)V

    .line 395
    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    .prologue
    .line 545
    iget v0, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    iget v1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_0

    .line 546
    iget v0, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-nez v0, :cond_1

    .line 547
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget v0, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    iget v1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lextern/okhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    goto :goto_0
.end method

.method private clearDynamicTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 405
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 407
    iput v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 408
    iput v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 409
    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 7
    .param p1, "bytesToRecover"    # I

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 416
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 417
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lextern/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 418
    iget v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    iget-object v3, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lextern/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 419
    iget v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 420
    add-int/lit8 v0, v0, 0x1

    .line 416
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 422
    :cond_0
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    iget v3, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    iget v5, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    iget v6, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    iget v3, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 425
    iget v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 427
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method private insertIntoDynamicTable(Lextern/okhttp3/internal/http2/Header;)V
    .locals 8
    .param p1, "entry"    # Lextern/okhttp3/internal/http2/Header;

    .prologue
    .line 431
    iget v1, p1, Lextern/okhttp3/internal/http2/Header;->hpackSize:I

    .line 434
    .local v1, "delta":I
    iget v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v1, v4, :cond_0

    .line 435
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    .line 453
    :goto_0
    return-void

    .line 440
    :cond_0
    iget v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v4, v1

    iget v5, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int v0, v4, v5

    .line 441
    .local v0, "bytesToRecover":I
    invoke-direct {p0, v0}, Lextern/okhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 443
    iget v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v5, v5

    if-le v4, v5, :cond_1

    .line 444
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Lextern/okhttp3/internal/http2/Header;

    .line 445
    .local v2, "doubled":[Lextern/okhttp3/internal/http2/Header;
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    const/4 v5, 0x0

    iget-object v6, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v6, v6

    iget-object v7, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 447
    iput-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    .line 449
    .end local v2    # "doubled":[Lextern/okhttp3/internal/http2/Header;
    :cond_1
    iget v3, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 450
    .local v3, "index":I
    iget-object v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    aput-object p1, v4, v3

    .line 451
    iget v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 452
    iget v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    goto :goto_0
.end method


# virtual methods
.method setHeaderTableSizeSetting(I)V
    .locals 2
    .param p1, "headerTableSizeSetting"    # I

    .prologue
    .line 529
    iput p1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    .line 530
    const/16 v1, 0x4000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 533
    .local v0, "effectiveHeaderTableSize":I
    iget v1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ne v1, v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 535
    :cond_0
    iget v1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ge v0, v1, :cond_1

    .line 536
    iget v1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 539
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 540
    iput v0, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 541
    invoke-direct {p0}, Lextern/okhttp3/internal/http2/Hpack$Writer;->adjustDynamicTableByteCount()V

    goto :goto_0
.end method

.method writeByteString(Lextern/okio/ByteString;)V
    .locals 5
    .param p1, "data"    # Lextern/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7f

    .line 516
    iget-boolean v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lextern/okhttp3/internal/http2/Huffman;->get()Lextern/okhttp3/internal/http2/Huffman;

    move-result-object v2

    invoke-virtual {v2, p1}, Lextern/okhttp3/internal/http2/Huffman;->encodedLength(Lextern/okio/ByteString;)I

    move-result v2

    invoke-virtual {p1}, Lextern/okio/ByteString;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 517
    new-instance v0, Lextern/okio/Buffer;

    invoke-direct {v0}, Lextern/okio/Buffer;-><init>()V

    .line 518
    .local v0, "huffmanBuffer":Lextern/okio/Buffer;
    invoke-static {}, Lextern/okhttp3/internal/http2/Huffman;->get()Lextern/okhttp3/internal/http2/Huffman;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lextern/okhttp3/internal/http2/Huffman;->encode(Lextern/okio/ByteString;Lextern/okio/BufferedSink;)V

    .line 519
    invoke-virtual {v0}, Lextern/okio/Buffer;->readByteString()Lextern/okio/ByteString;

    move-result-object v1

    .line 520
    .local v1, "huffmanBytes":Lextern/okio/ByteString;
    invoke-virtual {v1}, Lextern/okio/ByteString;->size()I

    move-result v2

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v4, v3}, Lextern/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 521
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->out:Lextern/okio/Buffer;

    invoke-virtual {v2, v1}, Lextern/okio/Buffer;->write(Lextern/okio/ByteString;)Lextern/okio/Buffer;

    .line 526
    .end local v0    # "huffmanBuffer":Lextern/okio/Buffer;
    .end local v1    # "huffmanBytes":Lextern/okio/ByteString;
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-virtual {p1}, Lextern/okio/ByteString;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lextern/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 524
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->out:Lextern/okio/Buffer;

    invoke-virtual {v2, p1}, Lextern/okio/Buffer;->write(Lextern/okio/ByteString;)Lextern/okio/Buffer;

    goto :goto_0
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/internal/http2/Header;>;"
    const/16 v11, 0x20

    const/16 v9, 0x1f

    const/4 v10, 0x0

    .line 458
    iget-boolean v7, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    if-eqz v7, :cond_1

    .line 459
    iget v7, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v8, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ge v7, v8, :cond_0

    .line 461
    iget v7, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-virtual {p0, v7, v9, v11}, Lextern/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 463
    :cond_0
    iput-boolean v10, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 464
    const v7, 0x7fffffff

    iput v7, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 465
    iget v7, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-virtual {p0, v7, v9, v11}, Lextern/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 468
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 469
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lextern/okhttp3/internal/http2/Header;

    .line 470
    .local v1, "header":Lextern/okhttp3/internal/http2/Header;
    iget-object v7, v1, Lextern/okhttp3/internal/http2/Header;->name:Lextern/okio/ByteString;

    invoke-virtual {v7}, Lextern/okio/ByteString;->toAsciiLowercase()Lextern/okio/ByteString;

    move-result-object v3

    .line 471
    .local v3, "name":Lextern/okio/ByteString;
    iget-object v6, v1, Lextern/okhttp3/internal/http2/Header;->value:Lextern/okio/ByteString;

    .line 472
    .local v6, "value":Lextern/okio/ByteString;
    # getter for: Lextern/okhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;
    invoke-static {}, Lextern/okhttp3/internal/http2/Hpack;->access$200()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 473
    .local v5, "staticIndex":Ljava/lang/Integer;
    if-eqz v5, :cond_2

    .line 475
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0xf

    invoke-virtual {p0, v7, v8, v10}, Lextern/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 476
    invoke-virtual {p0, v6}, Lextern/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Lextern/okio/ByteString;)V

    .line 468
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    :cond_2
    iget-object v7, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lextern/okhttp3/internal/http2/Header;

    invoke-static {v7, v1}, Lextern/okhttp3/internal/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 479
    .local v0, "dynamicIndex":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    .line 481
    iget v7, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int v7, v0, v7

    # getter for: Lextern/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lextern/okhttp3/internal/http2/Header;
    invoke-static {}, Lextern/okhttp3/internal/http2/Hpack;->access$000()[Lextern/okhttp3/internal/http2/Header;

    move-result-object v8

    array-length v8, v8

    add-int/2addr v7, v8

    const/16 v8, 0x7f

    const/16 v9, 0x80

    invoke-virtual {p0, v7, v8, v9}, Lextern/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    goto :goto_1

    .line 485
    :cond_3
    iget-object v7, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->out:Lextern/okio/Buffer;

    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Lextern/okio/Buffer;->writeByte(I)Lextern/okio/Buffer;

    .line 486
    invoke-virtual {p0, v3}, Lextern/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Lextern/okio/ByteString;)V

    .line 487
    invoke-virtual {p0, v6}, Lextern/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Lextern/okio/ByteString;)V

    .line 488
    invoke-direct {p0, v1}, Lextern/okhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lextern/okhttp3/internal/http2/Header;)V

    goto :goto_1

    .line 492
    .end local v0    # "dynamicIndex":I
    .end local v1    # "header":Lextern/okhttp3/internal/http2/Header;
    .end local v3    # "name":Lextern/okio/ByteString;
    .end local v5    # "staticIndex":Ljava/lang/Integer;
    .end local v6    # "value":Lextern/okio/ByteString;
    :cond_4
    return-void
.end method

.method writeInt(III)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I

    .prologue
    .line 497
    if-ge p1, p2, :cond_0

    .line 498
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->out:Lextern/okio/Buffer;

    or-int v2, p3, p1

    invoke-virtual {v1, v2}, Lextern/okio/Buffer;->writeByte(I)Lextern/okio/Buffer;

    .line 513
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->out:Lextern/okio/Buffer;

    or-int v2, p3, p2

    invoke-virtual {v1, v2}, Lextern/okio/Buffer;->writeByte(I)Lextern/okio/Buffer;

    .line 504
    sub-int/2addr p1, p2

    .line 507
    :goto_1
    const/16 v1, 0x80

    if-lt p1, v1, :cond_1

    .line 508
    and-int/lit8 v0, p1, 0x7f

    .line 509
    .local v0, "b":I
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->out:Lextern/okio/Buffer;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lextern/okio/Buffer;->writeByte(I)Lextern/okio/Buffer;

    .line 510
    ushr-int/lit8 p1, p1, 0x7

    .line 511
    goto :goto_1

    .line 512
    .end local v0    # "b":I
    :cond_1
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Hpack$Writer;->out:Lextern/okio/Buffer;

    invoke-virtual {v1, p1}, Lextern/okio/Buffer;->writeByte(I)Lextern/okio/Buffer;

    goto :goto_0
.end method
