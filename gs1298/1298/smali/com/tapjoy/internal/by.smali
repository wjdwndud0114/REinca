.class public final Lcom/tapjoy/internal/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final a:Ljava/io/Writer;

.field private final b:Ljava/util/List;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    .line 143
    iget-object v0, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    sget-object v1, Lcom/tapjoy/internal/bv;->f:Lcom/tapjoy/internal/bv;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v0, ":"

    iput-object v0, p0, Lcom/tapjoy/internal/by;->d:Ljava/lang/String;

    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iput-object p1, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    .line 169
    return-void
.end method

.method private a(Lcom/tapjoy/internal/bv;Lcom/tapjoy/internal/bv;Ljava/lang/String;)Lcom/tapjoy/internal/by;
    .locals 3

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->e()Lcom/tapjoy/internal/bv;

    move-result-object v0

    .line 268
    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nesting problem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 273
    if-ne v0, p2, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->g()V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 277
    return-object p0
.end method

.method private a(Lcom/tapjoy/internal/bv;Ljava/lang/String;)Lcom/tapjoy/internal/by;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/by;->a(Z)V

    .line 256
    iget-object v0, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 258
    return-object p0
.end method

.method private a([Ljava/lang/Object;)Lcom/tapjoy/internal/by;
    .locals 3

    .prologue
    .line 592
    if-nez p1, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->f()Lcom/tapjoy/internal/by;

    move-result-object p0

    .line 600
    :goto_0
    return-object p0

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/by;->a()Lcom/tapjoy/internal/by;

    .line 596
    array-length v1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 597
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/by;->a(Ljava/lang/Object;)Lcom/tapjoy/internal/by;

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 599
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/by;->b()Lcom/tapjoy/internal/by;

    goto :goto_0
.end method

.method private a(Lcom/tapjoy/internal/bv;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 521
    sget-object v0, Lcom/tapjoy/internal/by$1;->a:[I

    invoke-direct {p0}, Lcom/tapjoy/internal/by;->e()Lcom/tapjoy/internal/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/bv;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 548
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nesting problem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :pswitch_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/by;->e:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 524
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/bv;->g:Lcom/tapjoy/internal/bv;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/by;->a(Lcom/tapjoy/internal/bv;)V

    .line 542
    :goto_0
    return-void

    .line 530
    :pswitch_1
    sget-object v0, Lcom/tapjoy/internal/bv;->b:Lcom/tapjoy/internal/bv;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/by;->a(Lcom/tapjoy/internal/bv;)V

    .line 531
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->g()V

    goto :goto_0

    .line 535
    :pswitch_2
    iget-object v0, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 536
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->g()V

    goto :goto_0

    .line 540
    :pswitch_3
    iget-object v0, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    iget-object v1, p0, Lcom/tapjoy/internal/by;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 541
    sget-object v0, Lcom/tapjoy/internal/bv;->e:Lcom/tapjoy/internal/bv;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/by;->a(Lcom/tapjoy/internal/bv;)V

    goto :goto_0

    .line 545
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 440
    sparse-switch v3, :sswitch_data_0

    .line 473
    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 474
    iget-object v4, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const-string v5, "\\u%04x"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 426
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :sswitch_0
    iget-object v4, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 476
    :cond_0
    iget-object v4, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 448
    :sswitch_1
    iget-object v3, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const-string v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 452
    :sswitch_2
    iget-object v3, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 456
    :sswitch_3
    iget-object v3, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 460
    :sswitch_4
    iget-object v3, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 464
    :sswitch_5
    iget-object v3, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const-string v4, "\\f"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 469
    :sswitch_6
    iget-object v4, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const-string v5, "\\u%04x"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 483
    return-void

    .line 440
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xc -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_0
        0x5c -> :sswitch_0
        0x2028 -> :sswitch_6
        0x2029 -> :sswitch_6
    .end sparse-switch
.end method

.method private e()Lcom/tapjoy/internal/bv;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/bv;

    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/by;
    .locals 2

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/by;->a(Z)V

    .line 333
    iget-object v0, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 334
    return-object p0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/tapjoy/internal/by;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 494
    :cond_0
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    iget-object v2, p0, Lcom/tapjoy/internal/by;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/by;
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/tapjoy/internal/bv;->a:Lcom/tapjoy/internal/bv;

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/by;->a(Lcom/tapjoy/internal/bv;Ljava/lang/String;)Lcom/tapjoy/internal/by;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/tapjoy/internal/by;
    .locals 3

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/by;->a(Z)V

    .line 373
    iget-object v0, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 374
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/bq;)Lcom/tapjoy/internal/by;
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/by;->a(Z)V

    .line 605
    iget-object v0, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    invoke-interface {p1, v0}, Lcom/tapjoy/internal/bq;->a(Ljava/io/Writer;)V

    .line 606
    return-object p0
.end method

.method public final a(Ljava/lang/Number;)Lcom/tapjoy/internal/by;
    .locals 3

    .prologue
    .line 387
    if-nez p1, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->f()Lcom/tapjoy/internal/by;

    move-result-object p0

    .line 398
    :goto_0
    return-object p0

    .line 391
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-boolean v1, p0, Lcom/tapjoy/internal/by;->e:Z

    if-nez v1, :cond_2

    const-string v1, "-Infinity"

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric values must be finite, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/by;->a(Z)V

    .line 397
    iget-object v1, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Lcom/tapjoy/internal/by;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 554
    if-nez p1, :cond_1

    .line 555
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->f()Lcom/tapjoy/internal/by;

    move-result-object p0

    .line 2642
    :cond_0
    :goto_0
    return-object p0

    .line 556
    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/bw;

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 559
    iget-object v1, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 560
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".writeToJson(JsonWriter) wrote incomplete value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 565
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2343
    invoke-direct {p0, v3}, Lcom/tapjoy/internal/by;->a(Z)V

    .line 2344
    iget-object v1, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    if-eqz v0, :cond_3

    const-string v0, "true"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "false"

    goto :goto_1

    .line 566
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_9

    .line 567
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 568
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/by;->a(J)Lcom/tapjoy/internal/by;

    move-result-object p0

    goto :goto_0

    .line 569
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 570
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 2358
    iget-boolean v2, p0, Lcom/tapjoy/internal/by;->e:Z

    if-nez v2, :cond_7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2359
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Numeric values must be finite, but was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2361
    :cond_7
    invoke-direct {p0, v3}, Lcom/tapjoy/internal/by;->a(Z)V

    .line 2362
    iget-object v2, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_0

    .line 572
    :cond_8
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/by;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/by;

    move-result-object p0

    goto/16 :goto_0

    .line 574
    :cond_9
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 575
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/by;->b(Ljava/lang/String;)Lcom/tapjoy/internal/by;

    move-result-object p0

    goto/16 :goto_0

    .line 576
    :cond_a
    instance-of v0, p1, Lcom/tapjoy/internal/bq;

    if-eqz v0, :cond_b

    .line 577
    check-cast p1, Lcom/tapjoy/internal/bq;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/by;->a(Lcom/tapjoy/internal/bq;)Lcom/tapjoy/internal/by;

    move-result-object p0

    goto/16 :goto_0

    .line 578
    :cond_b
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_c

    .line 579
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/by;->a(Ljava/util/Collection;)Lcom/tapjoy/internal/by;

    move-result-object p0

    goto/16 :goto_0

    .line 580
    :cond_c
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 581
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/by;->a(Ljava/util/Map;)Lcom/tapjoy/internal/by;

    move-result-object p0

    goto/16 :goto_0

    .line 582
    :cond_d
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_f

    .line 583
    check-cast p1, Ljava/util/Date;

    .line 2641
    if-nez p1, :cond_e

    .line 2642
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->f()Lcom/tapjoy/internal/by;

    move-result-object p0

    goto/16 :goto_0

    .line 2644
    :cond_e
    invoke-static {p1}, Lcom/tapjoy/internal/z;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/by;->b(Ljava/lang/String;)Lcom/tapjoy/internal/by;

    move-result-object p0

    goto/16 :goto_0

    .line 584
    :cond_f
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 585
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/by;->a([Ljava/lang/Object;)Lcom/tapjoy/internal/by;

    move-result-object p0

    goto/16 :goto_0

    .line 587
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/by;
    .locals 3

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1501
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->e()Lcom/tapjoy/internal/bv;

    move-result-object v0

    .line 1502
    sget-object v1, Lcom/tapjoy/internal/bv;->e:Lcom/tapjoy/internal/bv;

    if-ne v0, v1, :cond_2

    .line 1503
    iget-object v0, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1507
    :cond_1
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->g()V

    .line 1508
    sget-object v0, Lcom/tapjoy/internal/bv;->d:Lcom/tapjoy/internal/bv;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/by;->a(Lcom/tapjoy/internal/bv;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/by;->c(Ljava/lang/String;)V

    .line 307
    return-object p0

    .line 1504
    :cond_2
    sget-object v1, Lcom/tapjoy/internal/bv;->c:Lcom/tapjoy/internal/bv;

    if-eq v0, v1, :cond_1

    .line 1505
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nesting problem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/by;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/util/Collection;)Lcom/tapjoy/internal/by;
    .locals 2

    .prologue
    .line 611
    if-nez p1, :cond_0

    .line 612
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->f()Lcom/tapjoy/internal/by;

    move-result-object p0

    .line 619
    :goto_0
    return-object p0

    .line 614
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/by;->a()Lcom/tapjoy/internal/by;

    .line 615
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 616
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/by;->a(Ljava/lang/Object;)Lcom/tapjoy/internal/by;

    goto :goto_1

    .line 618
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/by;->b()Lcom/tapjoy/internal/by;

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)Lcom/tapjoy/internal/by;
    .locals 3

    .prologue
    .line 624
    .line 3628
    if-nez p1, :cond_0

    .line 3629
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->f()Lcom/tapjoy/internal/by;

    move-result-object p0

    :goto_0
    return-object p0

    .line 3631
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/by;->c()Lcom/tapjoy/internal/by;

    .line 3632
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3633
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/by;->a(Ljava/lang/String;)Lcom/tapjoy/internal/by;

    .line 3634
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/by;->a(Ljava/lang/Object;)Lcom/tapjoy/internal/by;

    goto :goto_1

    .line 3636
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/by;->d()Lcom/tapjoy/internal/by;

    goto :goto_0
.end method

.method public final b()Lcom/tapjoy/internal/by;
    .locals 3

    .prologue
    .line 228
    sget-object v0, Lcom/tapjoy/internal/bv;->a:Lcom/tapjoy/internal/bv;

    sget-object v1, Lcom/tapjoy/internal/bv;->b:Lcom/tapjoy/internal/bv;

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/tapjoy/internal/by;->a(Lcom/tapjoy/internal/bv;Lcom/tapjoy/internal/bv;Ljava/lang/String;)Lcom/tapjoy/internal/by;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/by;
    .locals 1

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->f()Lcom/tapjoy/internal/by;

    move-result-object p0

    .line 323
    :goto_0
    return-object p0

    .line 321
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/by;->a(Z)V

    .line 322
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/by;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()Lcom/tapjoy/internal/by;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/tapjoy/internal/bv;->c:Lcom/tapjoy/internal/bv;

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/by;->a(Lcom/tapjoy/internal/bv;Ljava/lang/String;)Lcom/tapjoy/internal/by;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/tapjoy/internal/by;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 419
    invoke-direct {p0}, Lcom/tapjoy/internal/by;->e()Lcom/tapjoy/internal/bv;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bv;->g:Lcom/tapjoy/internal/bv;

    if-eq v0, v1, :cond_0

    .line 420
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    return-void
.end method

.method public final d()Lcom/tapjoy/internal/by;
    .locals 3

    .prologue
    .line 247
    sget-object v0, Lcom/tapjoy/internal/bv;->c:Lcom/tapjoy/internal/bv;

    sget-object v1, Lcom/tapjoy/internal/bv;->e:Lcom/tapjoy/internal/bv;

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/tapjoy/internal/by;->a(Lcom/tapjoy/internal/bv;Lcom/tapjoy/internal/bv;Ljava/lang/String;)Lcom/tapjoy/internal/by;

    move-result-object v0

    return-object v0
.end method
