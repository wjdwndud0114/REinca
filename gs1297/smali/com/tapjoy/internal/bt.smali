.class public final Lcom/tapjoy/internal/bt;
.super Lcom/tapjoy/internal/bs;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/bs$a;


# instance fields
.field private final b:Lcom/tapjoy/internal/co;

.field private final c:Ljava/io/Reader;

.field private d:Z

.field private final e:[C

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:Ljava/util/List;

.field private k:Lcom/tapjoy/internal/bx;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/tapjoy/internal/bt$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/bt$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/bt;->a:Lcom/tapjoy/internal/bs$a;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 260
    invoke-direct {p0}, Lcom/tapjoy/internal/bs;-><init>()V

    .line 208
    new-instance v0, Lcom/tapjoy/internal/co;

    invoke-direct {v0}, Lcom/tapjoy/internal/co;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->b:Lcom/tapjoy/internal/co;

    .line 214
    iput-boolean v1, p0, Lcom/tapjoy/internal/bt;->d:Z

    .line 222
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->e:[C

    .line 223
    iput v1, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 224
    iput v1, p0, Lcom/tapjoy/internal/bt;->g:I

    .line 229
    iput v2, p0, Lcom/tapjoy/internal/bt;->h:I

    .line 230
    iput v2, p0, Lcom/tapjoy/internal/bt;->i:I

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->j:Ljava/util/List;

    .line 234
    sget-object v0, Lcom/tapjoy/internal/bv;->f:Lcom/tapjoy/internal/bv;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bv;)V

    .line 255
    iput-boolean v1, p0, Lcom/tapjoy/internal/bt;->p:Z

    .line 261
    if-nez p1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    iput-object p1, p0, Lcom/tapjoy/internal/bt;->c:Ljava/io/Reader;

    .line 265
    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    .line 897
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    iget v1, p0, Lcom/tapjoy/internal/bt;->g:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tapjoy/internal/bt;->f:I

    aget-char v0, v0, v1

    .line 899
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 903
    :cond_2
    return-void
.end method

.method private a(Z)Lcom/tapjoy/internal/bx;
    .locals 1

    .prologue
    .line 637
    if-eqz p1, :cond_0

    .line 638
    sget-object v0, Lcom/tapjoy/internal/bv;->b:Lcom/tapjoy/internal/bv;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->b(Lcom/tapjoy/internal/bv;)V

    .line 654
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->y()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 669
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 670
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->v()Lcom/tapjoy/internal/bx;

    move-result-object v0

    :goto_1
    return-object v0

    .line 641
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->y()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 650
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 643
    :sswitch_1
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->u()Lcom/tapjoy/internal/bv;

    .line 644
    sget-object v0, Lcom/tapjoy/internal/bx;->b:Lcom/tapjoy/internal/bx;

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    goto :goto_1

    .line 646
    :sswitch_2
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->z()V

    goto :goto_0

    .line 656
    :sswitch_3
    if-eqz p1, :cond_1

    .line 657
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->u()Lcom/tapjoy/internal/bv;

    .line 658
    sget-object v0, Lcom/tapjoy/internal/bx;->b:Lcom/tapjoy/internal/bx;

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    goto :goto_1

    .line 664
    :cond_1
    :sswitch_4
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->z()V

    .line 665
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 666
    const-string v0, "null"

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    .line 667
    sget-object v0, Lcom/tapjoy/internal/bx;->i:Lcom/tapjoy/internal/bx;

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    goto :goto_1

    .line 654
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch

    .line 641
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method private a(C)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 929
    const/4 v0, 0x0

    .line 932
    :cond_0
    iget v1, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 933
    :goto_0
    iget v2, p0, Lcom/tapjoy/internal/bt;->f:I

    iget v3, p0, Lcom/tapjoy/internal/bt;->g:I

    if-ge v2, v3, :cond_7

    .line 934
    iget-object v2, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tapjoy/internal/bt;->f:I

    aget-char v2, v2, v3

    .line 936
    if-ne v2, p1, :cond_3

    .line 937
    iget-boolean v2, p0, Lcom/tapjoy/internal/bt;->p:Z

    if-eqz v2, :cond_1

    .line 938
    const-string v0, "skipped!"

    .line 943
    :goto_1
    return-object v0

    .line 939
    :cond_1
    if-nez v0, :cond_2

    .line 940
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->b:Lcom/tapjoy/internal/co;

    iget-object v2, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/tapjoy/internal/co;->a([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 942
    :cond_2
    iget-object v2, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 946
    :cond_3
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_9

    .line 947
    if-nez v0, :cond_4

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    :cond_4
    iget-object v2, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3063
    iget v1, p0, Lcom/tapjoy/internal/bt;->f:I

    iget v2, p0, Lcom/tapjoy/internal/bt;->g:I

    if-ne v1, v2, :cond_5

    invoke-direct {p0, v5}, Lcom/tapjoy/internal/bt;->a(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3064
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 3067
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tapjoy/internal/bt;->f:I

    aget-char v1, v1, v2

    .line 3068
    sparse-switch v1, :sswitch_data_0

    .line 951
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 952
    iget v1, p0, Lcom/tapjoy/internal/bt;->f:I

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_3
    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 954
    goto :goto_0

    .line 3070
    :sswitch_0
    iget v1, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/tapjoy/internal/bt;->g:I

    if-le v1, v2, :cond_6

    invoke-direct {p0, v6}, Lcom/tapjoy/internal/bt;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3071
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 3073
    :cond_6
    iget-object v1, p0, Lcom/tapjoy/internal/bt;->b:Lcom/tapjoy/internal/co;

    iget-object v2, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    invoke-virtual {v1, v2, v3, v6}, Lcom/tapjoy/internal/co;->a([CII)Ljava/lang/String;

    move-result-object v1

    .line 3074
    iget v2, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 3075
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    goto :goto_2

    .line 3078
    :sswitch_1
    const/16 v1, 0x9

    goto :goto_2

    .line 3081
    :sswitch_2
    const/16 v1, 0x8

    goto :goto_2

    .line 3084
    :sswitch_3
    const/16 v1, 0xa

    goto :goto_2

    .line 3087
    :sswitch_4
    const/16 v1, 0xd

    goto :goto_2

    .line 3090
    :sswitch_5
    const/16 v1, 0xc

    goto :goto_2

    .line 956
    :cond_7
    if-nez v0, :cond_8

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 959
    :cond_8
    iget-object v2, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 960
    invoke-direct {p0, v5}, Lcom/tapjoy/internal/bt;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 962
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_3

    .line 3068
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Lcom/tapjoy/internal/bv;)V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    return-void
.end method

.method private a(Lcom/tapjoy/internal/bx;)V
    .locals 3

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    .line 342
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    if-eq v0, p1, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->t()Lcom/tapjoy/internal/bx;

    .line 346
    return-void
.end method

.method private a(I)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 774
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    if-ge v0, v3, :cond_1

    .line 775
    iget-object v3, p0, Lcom/tapjoy/internal/bt;->e:[C

    aget-char v3, v3, v0

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 776
    iget v3, p0, Lcom/tapjoy/internal/bt;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tapjoy/internal/bt;->h:I

    .line 777
    iput v2, p0, Lcom/tapjoy/internal/bt;->i:I

    .line 774
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    :cond_0
    iget v3, p0, Lcom/tapjoy/internal/bt;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tapjoy/internal/bt;->i:I

    goto :goto_1

    .line 783
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/bt;->g:I

    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    if-eq v0, v3, :cond_5

    .line 784
    iget v0, p0, Lcom/tapjoy/internal/bt;->g:I

    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/tapjoy/internal/bt;->g:I

    .line 785
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    iget-object v4, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v5, p0, Lcom/tapjoy/internal/bt;->g:I

    invoke-static {v0, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 790
    :goto_2
    iput v1, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 792
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->c:Ljava/io/Reader;

    iget-object v3, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v4, p0, Lcom/tapjoy/internal/bt;->g:I

    iget-object v5, p0, Lcom/tapjoy/internal/bt;->e:[C

    array-length v5, v5

    iget v6, p0, Lcom/tapjoy/internal/bt;->g:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 793
    iget v3, p0, Lcom/tapjoy/internal/bt;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/tapjoy/internal/bt;->g:I

    .line 796
    iget v0, p0, Lcom/tapjoy/internal/bt;->h:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/tapjoy/internal/bt;->i:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/tapjoy/internal/bt;->g:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->e:[C

    aget-char v0, v0, v1

    const v3, 0xfeff

    if-ne v0, v3, :cond_3

    .line 797
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 798
    iget v0, p0, Lcom/tapjoy/internal/bt;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/bt;->i:I

    .line 801
    :cond_3
    iget v0, p0, Lcom/tapjoy/internal/bt;->g:I

    if-lt v0, p1, :cond_2

    move v1, v2

    .line 805
    :cond_4
    return v1

    .line 787
    :cond_5
    iput v1, p0, Lcom/tapjoy/internal/bt;->g:I

    goto :goto_2
.end method

.method private b(Z)Lcom/tapjoy/internal/bx;
    .locals 1

    .prologue
    .line 680
    if-eqz p1, :cond_0

    .line 682
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->y()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 687
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 703
    :sswitch_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->y()I

    move-result v0

    .line 704
    sparse-switch v0, :sswitch_data_0

    .line 711
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->z()V

    .line 712
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 713
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->c(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->l:Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 715
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 684
    :pswitch_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->u()Lcom/tapjoy/internal/bv;

    .line 685
    sget-object v0, Lcom/tapjoy/internal/bx;->d:Lcom/tapjoy/internal/bx;

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    .line 720
    :goto_0
    return-object v0

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->y()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 698
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 692
    :sswitch_1
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->u()Lcom/tapjoy/internal/bv;

    .line 693
    sget-object v0, Lcom/tapjoy/internal/bx;->d:Lcom/tapjoy/internal/bx;

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    goto :goto_0

    .line 706
    :sswitch_2
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->z()V

    .line 708
    :sswitch_3
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->l:Ljava/lang/String;

    .line 719
    :cond_1
    sget-object v0, Lcom/tapjoy/internal/bv;->d:Lcom/tapjoy/internal/bv;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->b(Lcom/tapjoy/internal/bv;)V

    .line 720
    sget-object v0, Lcom/tapjoy/internal/bx;->e:Lcom/tapjoy/internal/bx;

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    goto :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
    .end packed-switch

    .line 704
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch

    .line 690
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Lcom/tapjoy/internal/bv;)V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 634
    return-void
.end method

.method private c(Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 975
    .line 976
    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/bt;->n:I

    .line 977
    iput v2, p0, Lcom/tapjoy/internal/bt;->o:I

    move v1, v2

    move-object v0, v3

    .line 981
    :cond_0
    :goto_0
    iget v4, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/tapjoy/internal/bt;->g:I

    if-ge v4, v5, :cond_1

    .line 982
    iget-object v4, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v5, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 981
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 988
    :sswitch_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->z()V

    .line 1032
    :goto_1
    :sswitch_1
    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    .line 1033
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    iput v0, p0, Lcom/tapjoy/internal/bt;->n:I

    .line 1043
    :goto_2
    iget v0, p0, Lcom/tapjoy/internal/bt;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/bt;->o:I

    .line 1044
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 1045
    return-object v3

    .line 1009
    :cond_1
    iget-object v4, p0, Lcom/tapjoy/internal/bt;->e:[C

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 1010
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4}, Lcom/tapjoy/internal/bt;->a(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1013
    iget-object v4, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v5, p0, Lcom/tapjoy/internal/bt;->g:I

    aput-char v2, v4, v5

    goto :goto_1

    .line 1019
    :cond_2
    if-nez v0, :cond_3

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    :cond_3
    iget-object v4, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v5, p0, Lcom/tapjoy/internal/bt;->f:I

    invoke-virtual {v0, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1023
    iget v4, p0, Lcom/tapjoy/internal/bt;->o:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/tapjoy/internal/bt;->o:I

    .line 1024
    iget v4, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 1026
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/bt;->a(I)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_1

    .line 1035
    :cond_4
    iget-boolean v2, p0, Lcom/tapjoy/internal/bt;->p:Z

    if-eqz v2, :cond_5

    .line 1036
    const-string v3, "skipped!"

    goto :goto_2

    .line 1037
    :cond_5
    if-nez v0, :cond_6

    .line 1038
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->b:Lcom/tapjoy/internal/co;

    iget-object v2, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/tapjoy/internal/co;->a([CII)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1040
    :cond_6
    iget-object v2, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1041
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_0

    .line 982
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private d(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .prologue
    .line 1206
    new-instance v0, Lcom/tapjoy/internal/bz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1207
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->x()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/bz;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private t()Lcom/tapjoy/internal/bx;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    .line 407
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    .line 408
    iput-object v1, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    .line 409
    iput-object v1, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    .line 410
    iput-object v1, p0, Lcom/tapjoy/internal/bt;->l:Ljava/lang/String;

    .line 411
    return-object v0
.end method

.method private u()Lcom/tapjoy/internal/bv;
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/bv;

    return-object v0
.end method

.method private v()Lcom/tapjoy/internal/bx;
    .locals 11

    .prologue
    const/16 v9, 0x65

    const/16 v3, 0x4c

    const/16 v8, 0x45

    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 746
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->y()I

    move-result v0

    .line 747
    sparse-switch v0, :sswitch_data_0

    .line 763
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 2104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->c(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    .line 2105
    iget v0, p0, Lcom/tapjoy/internal/bt;->o:I

    if-nez v0, :cond_0

    .line 2106
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 749
    :sswitch_0
    sget-object v0, Lcom/tapjoy/internal/bv;->c:Lcom/tapjoy/internal/bv;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bv;)V

    .line 750
    sget-object v0, Lcom/tapjoy/internal/bx;->c:Lcom/tapjoy/internal/bx;

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    .line 764
    :goto_0
    return-object v0

    .line 753
    :sswitch_1
    sget-object v0, Lcom/tapjoy/internal/bv;->a:Lcom/tapjoy/internal/bv;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bv;)V

    .line 754
    sget-object v0, Lcom/tapjoy/internal/bx;->a:Lcom/tapjoy/internal/bx;

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    goto :goto_0

    .line 757
    :sswitch_2
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->z()V

    .line 759
    :sswitch_3
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    .line 760
    sget-object v0, Lcom/tapjoy/internal/bx;->f:Lcom/tapjoy/internal/bx;

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    goto :goto_0

    .line 2119
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/bt;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 2122
    iget v0, p0, Lcom/tapjoy/internal/bt;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    const/16 v0, 0x6e

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_1

    const/16 v0, 0x4e

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_6

    :cond_1
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_2

    const/16 v0, 0x55

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_6

    :cond_2
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6

    :cond_3
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6

    .line 2126
    :cond_4
    const-string v0, "null"

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    .line 2127
    sget-object v0, Lcom/tapjoy/internal/bx;->i:Lcom/tapjoy/internal/bx;

    .line 2108
    :goto_1
    iput-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    .line 2109
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->f:Lcom/tapjoy/internal/bx;

    if-ne v0, v1, :cond_5

    .line 2110
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->z()V

    .line 2112
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    goto/16 :goto_0

    .line 2128
    :cond_6
    iget v0, p0, Lcom/tapjoy/internal/bt;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/16 v0, 0x74

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_7

    const/16 v0, 0x54

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_b

    :cond_7
    const/16 v0, 0x72

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_8

    const/16 v0, 0x52

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_b

    :cond_8
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_9

    const/16 v0, 0x55

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v9, v0, :cond_a

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v8, v0, :cond_b

    .line 2132
    :cond_a
    const-string v0, "true"

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    .line 2133
    sget-object v0, Lcom/tapjoy/internal/bx;->h:Lcom/tapjoy/internal/bx;

    goto :goto_1

    .line 2134
    :cond_b
    iget v0, p0, Lcom/tapjoy/internal/bt;->o:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    const/16 v0, 0x66

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_c

    const/16 v0, 0x46

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_11

    :cond_c
    const/16 v0, 0x61

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_d

    const/16 v0, 0x41

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_11

    :cond_d
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_11

    :cond_e
    const/16 v0, 0x73

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_f

    const/16 v0, 0x53

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_11

    :cond_f
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-eq v9, v0, :cond_10

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bt;->n:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-ne v8, v0, :cond_11

    .line 2139
    :cond_10
    const-string v0, "false"

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    .line 2140
    sget-object v0, Lcom/tapjoy/internal/bx;->h:Lcom/tapjoy/internal/bx;

    goto/16 :goto_1

    .line 2142
    :cond_11
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->b:Lcom/tapjoy/internal/co;

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    iget v3, p0, Lcom/tapjoy/internal/bt;->o:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/co;->a([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    .line 2143
    iget-object v3, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v2, p0, Lcom/tapjoy/internal/bt;->n:I

    iget v4, p0, Lcom/tapjoy/internal/bt;->o:I

    .line 2155
    aget-char v0, v3, v2

    .line 2157
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1c

    .line 2158
    add-int/lit8 v1, v2, 0x1

    aget-char v0, v3, v1

    .line 2161
    :goto_2
    if-ne v0, v6, :cond_13

    .line 2162
    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    .line 2172
    :cond_12
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_15

    .line 2173
    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    .line 2174
    :goto_3
    if-lt v0, v6, :cond_15

    if-gt v0, v7, :cond_15

    .line 2175
    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    goto :goto_3

    .line 2163
    :cond_13
    const/16 v5, 0x31

    if-lt v0, v5, :cond_14

    if-gt v0, v7, :cond_14

    .line 2164
    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    .line 2165
    :goto_4
    if-lt v0, v6, :cond_12

    if-gt v0, v7, :cond_12

    .line 2166
    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    goto :goto_4

    .line 2169
    :cond_14
    sget-object v0, Lcom/tapjoy/internal/bx;->f:Lcom/tapjoy/internal/bx;

    goto/16 :goto_1

    :cond_15
    move v10, v0

    move v0, v1

    move v1, v10

    .line 2179
    if-eq v1, v9, :cond_16

    if-ne v1, v8, :cond_1a

    .line 2180
    :cond_16
    add-int/lit8 v1, v0, 0x1

    aget-char v0, v3, v1

    .line 2181
    const/16 v5, 0x2b

    if-eq v0, v5, :cond_17

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_18

    .line 2182
    :cond_17
    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    .line 2184
    :cond_18
    if-lt v0, v6, :cond_19

    if-gt v0, v7, :cond_19

    .line 2185
    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    move v10, v0

    move v0, v1

    move v1, v10

    .line 2186
    :goto_5
    if-lt v1, v6, :cond_1a

    if-gt v1, v7, :cond_1a

    .line 2187
    add-int/lit8 v1, v0, 0x1

    aget-char v0, v3, v1

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_5

    .line 2190
    :cond_19
    sget-object v0, Lcom/tapjoy/internal/bx;->f:Lcom/tapjoy/internal/bx;

    goto/16 :goto_1

    .line 2194
    :cond_1a
    add-int v1, v2, v4

    if-ne v0, v1, :cond_1b

    .line 2195
    sget-object v0, Lcom/tapjoy/internal/bx;->g:Lcom/tapjoy/internal/bx;

    goto/16 :goto_1

    .line 2197
    :cond_1b
    sget-object v0, Lcom/tapjoy/internal/bx;->f:Lcom/tapjoy/internal/bx;

    goto/16 :goto_1

    :cond_1c
    move v1, v2

    goto :goto_2

    .line 747
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private w()I
    .locals 4

    .prologue
    .line 809
    iget v1, p0, Lcom/tapjoy/internal/bt;->h:I

    .line 810
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/tapjoy/internal/bt;->f:I

    if-ge v0, v2, :cond_1

    .line 811
    iget-object v2, p0, Lcom/tapjoy/internal/bt;->e:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 812
    add-int/lit8 v1, v1, 0x1

    .line 810
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_1
    return v1
.end method

.method private x()I
    .locals 4

    .prologue
    .line 819
    iget v1, p0, Lcom/tapjoy/internal/bt;->i:I

    .line 820
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/tapjoy/internal/bt;->f:I

    if-ge v0, v2, :cond_1

    .line 821
    iget-object v2, p0, Lcom/tapjoy/internal/bt;->e:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 822
    const/4 v1, 0x1

    .line 820
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 824
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 827
    :cond_1
    return v1
.end method

.method private y()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 831
    :goto_0
    :sswitch_0
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    iget v3, p0, Lcom/tapjoy/internal/bt;->g:I

    if-lt v0, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/tapjoy/internal/bt;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tapjoy/internal/bt;->f:I

    aget-char v0, v0, v3

    .line 833
    sparse-switch v0, :sswitch_data_0

    .line 878
    :cond_1
    :goto_1
    return v0

    .line 841
    :sswitch_1
    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    iget v4, p0, Lcom/tapjoy/internal/bt;->g:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v2}, Lcom/tapjoy/internal/bt;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 845
    :cond_2
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->z()V

    .line 846
    iget-object v3, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v4, p0, Lcom/tapjoy/internal/bt;->f:I

    aget-char v3, v3, v4

    .line 847
    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    .line 850
    :sswitch_2
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 851
    const-string v3, "*/"

    .line 2906
    :goto_2
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/tapjoy/internal/bt;->g:I

    if-le v0, v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    move v0, v1

    .line 2907
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 2908
    iget-object v4, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v5, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_5

    .line 2907
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v2

    .line 851
    :goto_4
    if-nez v0, :cond_7

    .line 852
    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2906
    :cond_5
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/bt;->f:I

    goto :goto_2

    :cond_6
    move v0, v1

    .line 2914
    goto :goto_4

    .line 854
    :cond_7
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/bt;->f:I

    goto :goto_0

    .line 859
    :sswitch_3
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 860
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->A()V

    goto/16 :goto_0

    .line 873
    :sswitch_4
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->z()V

    .line 874
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->A()V

    goto/16 :goto_0

    .line 882
    :cond_8
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    .line 847
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private z()V
    .locals 1

    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/tapjoy/internal/bt;->d:Z

    if-nez v0, :cond_0

    .line 887
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 889
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 581
    iput-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    .line 582
    iput-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    .line 583
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 584
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->j:Ljava/util/List;

    sget-object v1, Lcom/tapjoy/internal/bv;->h:Lcom/tapjoy/internal/bv;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->c:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 586
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/tapjoy/internal/bx;->a:Lcom/tapjoy/internal/bx;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bx;)V

    .line 308
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lcom/tapjoy/internal/bx;->b:Lcom/tapjoy/internal/bx;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bx;)V

    .line 317
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/tapjoy/internal/bx;->c:Lcom/tapjoy/internal/bx;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bx;)V

    .line 326
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lcom/tapjoy/internal/bx;->d:Lcom/tapjoy/internal/bx;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bx;)V

    .line 335
    return-void
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    .line 354
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->d:Lcom/tapjoy/internal/bx;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->b:Lcom/tapjoy/internal/bx;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/tapjoy/internal/bx;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 362
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 366
    :cond_1
    sget-object v1, Lcom/tapjoy/internal/bt$2;->a:[I

    .line 1618
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/tapjoy/internal/bt;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/bv;

    .line 366
    invoke-virtual {v0}, Lcom/tapjoy/internal/bv;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 397
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 368
    :pswitch_0
    sget-object v0, Lcom/tapjoy/internal/bv;->g:Lcom/tapjoy/internal/bv;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->b(Lcom/tapjoy/internal/bv;)V

    .line 369
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->v()Lcom/tapjoy/internal/bx;

    move-result-object v0

    .line 370
    iget-boolean v1, p0, Lcom/tapjoy/internal/bt;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v2, Lcom/tapjoy/internal/bx;->a:Lcom/tapjoy/internal/bx;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v2, Lcom/tapjoy/internal/bx;->c:Lcom/tapjoy/internal/bx;

    if-eq v1, v2, :cond_0

    .line 371
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/tapjoy/internal/bt;->a(Z)Lcom/tapjoy/internal/bx;

    move-result-object v0

    goto :goto_0

    .line 377
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/tapjoy/internal/bt;->a(Z)Lcom/tapjoy/internal/bx;

    move-result-object v0

    goto :goto_0

    .line 379
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/tapjoy/internal/bt;->b(Z)Lcom/tapjoy/internal/bx;

    move-result-object v0

    goto :goto_0

    .line 1728
    :pswitch_4
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->y()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1738
    :pswitch_5
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1732
    :pswitch_6
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->z()V

    .line 1733
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    iget v1, p0, Lcom/tapjoy/internal/bt;->g:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0, v3}, Lcom/tapjoy/internal/bt;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v1, p0, Lcom/tapjoy/internal/bt;->f:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_3

    .line 1734
    iget v0, p0, Lcom/tapjoy/internal/bt;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/bt;->f:I

    .line 1741
    :cond_3
    :pswitch_7
    sget-object v0, Lcom/tapjoy/internal/bv;->e:Lcom/tapjoy/internal/bv;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->b(Lcom/tapjoy/internal/bv;)V

    .line 1742
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->v()Lcom/tapjoy/internal/bx;

    move-result-object v0

    goto/16 :goto_0

    .line 383
    :pswitch_8
    invoke-direct {p0, v4}, Lcom/tapjoy/internal/bt;->b(Z)Lcom/tapjoy/internal/bx;

    move-result-object v0

    goto/16 :goto_0

    .line 386
    :pswitch_9
    :try_start_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->v()Lcom/tapjoy/internal/bx;

    move-result-object v0

    .line 387
    iget-boolean v1, p0, Lcom/tapjoy/internal/bt;->d:Z

    if-nez v1, :cond_0

    .line 390
    const-string v0, "Expected EOF"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bt;->d(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :catch_0
    move-exception v0

    sget-object v0, Lcom/tapjoy/internal/bx;->j:Lcom/tapjoy/internal/bx;

    iput-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    goto/16 :goto_0

    .line 395
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1728
    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    .line 424
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->e:Lcom/tapjoy/internal/bx;

    if-eq v0, v1, :cond_0

    .line 425
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->l:Ljava/lang/String;

    .line 428
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->t()Lcom/tapjoy/internal/bx;

    .line 429
    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    .line 443
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->f:Lcom/tapjoy/internal/bx;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->g:Lcom/tapjoy/internal/bx;

    if-eq v0, v1, :cond_0

    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    .line 448
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->t()Lcom/tapjoy/internal/bx;

    .line 449
    return-object v0
.end method

.method public final n()Z
    .locals 3

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    .line 462
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->h:Lcom/tapjoy/internal/bx;

    if-eq v0, v1, :cond_0

    .line 463
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    const-string v1, "true"

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 467
    :goto_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->t()Lcom/tapjoy/internal/bx;

    .line 468
    return v0

    .line 466
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()V
    .locals 3

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    .line 481
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->i:Lcom/tapjoy/internal/bx;

    if-eq v0, v1, :cond_0

    .line 482
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->t()Lcom/tapjoy/internal/bx;

    .line 486
    return-void
.end method

.method public final p()D
    .locals 3

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    .line 499
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->f:Lcom/tapjoy/internal/bx;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->g:Lcom/tapjoy/internal/bx;

    if-eq v0, v1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 504
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->t()Lcom/tapjoy/internal/bx;

    .line 505
    return-wide v0
.end method

.method public final q()J
    .locals 6

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    .line 523
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->f:Lcom/tapjoy/internal/bx;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->g:Lcom/tapjoy/internal/bx;

    if-eq v0, v1, :cond_0

    .line 524
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 538
    :cond_1
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->t()Lcom/tapjoy/internal/bx;

    .line 539
    return-wide v0

    .line 531
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 532
    double-to-long v0, v2

    .line 533
    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_1

    .line 534
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()I
    .locals 6

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    .line 557
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->f:Lcom/tapjoy/internal/bx;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v1, Lcom/tapjoy/internal/bx;->g:Lcom/tapjoy/internal/bx;

    if-eq v0, v1, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 572
    :cond_1
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->t()Lcom/tapjoy/internal/bx;

    .line 573
    return v0

    .line 565
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 566
    double-to-int v0, v2

    .line 567
    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_1

    .line 568
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/tapjoy/internal/bt;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 596
    invoke-virtual {p0}, Lcom/tapjoy/internal/bt;->k()Lcom/tapjoy/internal/bx;

    .line 597
    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v2, Lcom/tapjoy/internal/bx;->b:Lcom/tapjoy/internal/bx;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    sget-object v2, Lcom/tapjoy/internal/bx;->d:Lcom/tapjoy/internal/bx;

    if-ne v0, v2, :cond_1

    .line 598
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a value but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/bt;->k:Lcom/tapjoy/internal/bx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/bt;->p:Z

    move v0, v1

    .line 605
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/tapjoy/internal/bt;->t()Lcom/tapjoy/internal/bx;

    move-result-object v2

    .line 606
    sget-object v3, Lcom/tapjoy/internal/bx;->a:Lcom/tapjoy/internal/bx;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/tapjoy/internal/bx;->c:Lcom/tapjoy/internal/bx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_5

    .line 607
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 611
    :cond_4
    :goto_0
    if-nez v0, :cond_2

    .line 613
    iput-boolean v1, p0, Lcom/tapjoy/internal/bt;->p:Z

    .line 614
    return-void

    .line 608
    :cond_5
    :try_start_1
    sget-object v3, Lcom/tapjoy/internal/bx;->b:Lcom/tapjoy/internal/bx;

    if-eq v2, v3, :cond_6

    sget-object v3, Lcom/tapjoy/internal/bx;->d:Lcom/tapjoy/internal/bx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_4

    .line 609
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 613
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/tapjoy/internal/bt;->p:Z

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x14

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3212
    iget v2, p0, Lcom/tapjoy/internal/bt;->f:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3213
    iget-object v3, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v4, p0, Lcom/tapjoy/internal/bt;->f:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3214
    iget v2, p0, Lcom/tapjoy/internal/bt;->g:I

    iget v3, p0, Lcom/tapjoy/internal/bt;->f:I

    sub-int/2addr v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3215
    iget-object v3, p0, Lcom/tapjoy/internal/bt;->e:[C

    iget v4, p0, Lcom/tapjoy/internal/bt;->f:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1050
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
