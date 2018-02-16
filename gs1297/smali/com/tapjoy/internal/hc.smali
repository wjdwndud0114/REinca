.class public Lcom/tapjoy/internal/hc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/hc$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field c:Lcom/tapjoy/internal/he;

.field private e:[I

.field private final f:[I

.field private g:Ljava/nio/ByteBuffer;

.field private h:[B

.field private i:[B

.field private j:I

.field private k:I

.field private l:Lcom/tapjoy/internal/hf;

.field private m:[S

.field private n:[B

.field private o:[B

.field private p:[B

.field private q:[I

.field private r:Lcom/tapjoy/internal/hc$a;

.field private s:Landroid/graphics/Bitmap;

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/tapjoy/internal/hc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/hc;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/tapjoy/internal/hh;

    invoke-direct {v0}, Lcom/tapjoy/internal/hh;-><init>()V

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/hc;-><init>(Lcom/tapjoy/internal/hc$a;)V

    .line 207
    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/hc$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tapjoy/internal/hc;->f:[I

    .line 120
    iput v1, p0, Lcom/tapjoy/internal/hc;->j:I

    .line 121
    iput v1, p0, Lcom/tapjoy/internal/hc;->k:I

    .line 201
    iput-object p1, p0, Lcom/tapjoy/internal/hc;->r:Lcom/tapjoy/internal/hc$a;

    .line 202
    new-instance v0, Lcom/tapjoy/internal/he;

    invoke-direct {v0}, Lcom/tapjoy/internal/he;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    .line 203
    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/hc$a;Lcom/tapjoy/internal/he;Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tapjoy/internal/hc;-><init>(Lcom/tapjoy/internal/hc$a;Lcom/tapjoy/internal/he;Ljava/nio/ByteBuffer;B)V

    .line 192
    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/hc$a;Lcom/tapjoy/internal/he;Ljava/nio/ByteBuffer;B)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/hc;-><init>(Lcom/tapjoy/internal/hc$a;)V

    .line 197
    invoke-direct {p0, p2, p3}, Lcom/tapjoy/internal/hc;->b(Lcom/tapjoy/internal/he;Ljava/nio/ByteBuffer;)V

    .line 198
    return-void
.end method

.method private declared-synchronized a(Lcom/tapjoy/internal/he;Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/hc;->b(Lcom/tapjoy/internal/he;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/tapjoy/internal/he;[B)V
    .locals 1

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/he;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a([ILcom/tapjoy/internal/hd;I)V
    .locals 5

    .prologue
    .line 655
    iget v0, p2, Lcom/tapjoy/internal/hd;->d:I

    iget v1, p0, Lcom/tapjoy/internal/hc;->v:I

    div-int/2addr v0, v1

    .line 656
    iget v1, p2, Lcom/tapjoy/internal/hd;->b:I

    iget v2, p0, Lcom/tapjoy/internal/hc;->v:I

    div-int/2addr v1, v2

    .line 657
    iget v2, p2, Lcom/tapjoy/internal/hd;->c:I

    iget v3, p0, Lcom/tapjoy/internal/hc;->v:I

    div-int/2addr v2, v3

    .line 658
    iget v3, p2, Lcom/tapjoy/internal/hd;->a:I

    iget v4, p0, Lcom/tapjoy/internal/hc;->v:I

    div-int/2addr v3, v4

    .line 659
    iget v4, p0, Lcom/tapjoy/internal/hc;->x:I

    mul-int/2addr v1, v4

    add-int/2addr v1, v3

    .line 660
    iget v3, p0, Lcom/tapjoy/internal/hc;->x:I

    mul-int/2addr v0, v3

    add-int v3, v1, v0

    .line 661
    :goto_0
    if-ge v1, v3, :cond_1

    .line 662
    add-int v4, v1, v2

    move v0, v1

    .line 663
    :goto_1
    if-ge v0, v4, :cond_0

    .line 664
    aput p3, p1, v0

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 661
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/hc;->x:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 667
    :cond_1
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/16 v2, 0x4000

    const/4 v3, 0x0

    .line 851
    iget v0, p0, Lcom/tapjoy/internal/hc;->j:I

    iget v1, p0, Lcom/tapjoy/internal/hc;->k:I

    if-le v0, v1, :cond_0

    .line 860
    :goto_0
    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->i:[B

    if-nez v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->r:Lcom/tapjoy/internal/hc$a;

    invoke-interface {v0, v2}, Lcom/tapjoy/internal/hc$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/hc;->i:[B

    .line 857
    :cond_1
    iput v3, p0, Lcom/tapjoy/internal/hc;->k:I

    .line 858
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/hc;->j:I

    .line 859
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->g:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tapjoy/internal/hc;->i:[B

    iget v2, p0, Lcom/tapjoy/internal/hc;->j:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private declared-synchronized b(Lcom/tapjoy/internal/he;Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    .line 466
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/hc;->u:I

    .line 468
    iput-object p1, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/hc;->y:Z

    .line 470
    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/hc;->a:I

    .line 3321
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/hc;->b:I

    .line 473
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/hc;->g:Ljava/nio/ByteBuffer;

    .line 474
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->g:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 475
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->g:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/hc;->t:Z

    .line 479
    iget-object v0, p1, Lcom/tapjoy/internal/he;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/hd;

    .line 480
    iget v0, v0, Lcom/tapjoy/internal/hd;->g:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/hc;->t:Z

    .line 486
    :cond_1
    iput v1, p0, Lcom/tapjoy/internal/hc;->v:I

    .line 487
    iget v0, p1, Lcom/tapjoy/internal/he;->f:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/hc;->x:I

    .line 488
    iget v0, p1, Lcom/tapjoy/internal/he;->g:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/hc;->w:I

    .line 491
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->r:Lcom/tapjoy/internal/hc$a;

    iget v1, p1, Lcom/tapjoy/internal/he;->f:I

    iget v2, p1, Lcom/tapjoy/internal/he;->g:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/hc$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/hc;->p:[B

    .line 492
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->r:Lcom/tapjoy/internal/hc$a;

    iget v1, p0, Lcom/tapjoy/internal/hc;->x:I

    iget v2, p0, Lcom/tapjoy/internal/hc;->w:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/hc$a;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/hc;->q:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()I
    .locals 3

    .prologue
    .line 867
    :try_start_0
    invoke-direct {p0}, Lcom/tapjoy/internal/hc;->b()V

    .line 868
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->i:[B

    iget v1, p0, Lcom/tapjoy/internal/hc;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tapjoy/internal/hc;->k:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    .line 871
    :goto_0
    return v0

    .line 870
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/hc;->u:I

    .line 871
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 881
    invoke-direct {p0}, Lcom/tapjoy/internal/hc;->c()I

    move-result v1

    .line 882
    if-lez v1, :cond_1

    .line 884
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->h:[B

    if-nez v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->r:Lcom/tapjoy/internal/hc$a;

    const/16 v2, 0xff

    invoke-interface {v0, v2}, Lcom/tapjoy/internal/hc$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/hc;->h:[B

    .line 887
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/hc;->j:I

    iget v2, p0, Lcom/tapjoy/internal/hc;->k:I

    sub-int/2addr v0, v2

    .line 888
    if-lt v0, v1, :cond_2

    .line 890
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->i:[B

    iget v2, p0, Lcom/tapjoy/internal/hc;->k:I

    iget-object v3, p0, Lcom/tapjoy/internal/hc;->h:[B

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 891
    iget v0, p0, Lcom/tapjoy/internal/hc;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/hc;->k:I

    .line 908
    :cond_1
    :goto_0
    return v1

    .line 892
    :cond_2
    iget-object v2, p0, Lcom/tapjoy/internal/hc;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 894
    iget-object v2, p0, Lcom/tapjoy/internal/hc;->i:[B

    iget v3, p0, Lcom/tapjoy/internal/hc;->k:I

    iget-object v4, p0, Lcom/tapjoy/internal/hc;->h:[B

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iget v2, p0, Lcom/tapjoy/internal/hc;->j:I

    iput v2, p0, Lcom/tapjoy/internal/hc;->k:I

    .line 896
    invoke-direct {p0}, Lcom/tapjoy/internal/hc;->b()V

    .line 897
    sub-int v2, v1, v0

    .line 898
    iget-object v3, p0, Lcom/tapjoy/internal/hc;->i:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tapjoy/internal/hc;->h:[B

    invoke-static {v3, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    iget v0, p0, Lcom/tapjoy/internal/hc;->k:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tapjoy/internal/hc;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    .line 904
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    .line 905
    iput v7, p0, Lcom/tapjoy/internal/hc;->u:I

    goto :goto_0

    .line 901
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/tapjoy/internal/hc;->u:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private e()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 912
    iget-boolean v0, p0, Lcom/tapjoy/internal/hc;->y:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 914
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/hc;->r:Lcom/tapjoy/internal/hc$a;

    iget v2, p0, Lcom/tapjoy/internal/hc;->x:I

    iget v3, p0, Lcom/tapjoy/internal/hc;->w:I

    invoke-interface {v1, v2, v3, v0}, Lcom/tapjoy/internal/hc$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3921
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 3922
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 916
    :cond_0
    return-object v0

    .line 912
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method


# virtual methods
.method final declared-synchronized a([B)I
    .locals 1

    .prologue
    .line 509
    monitor-enter p0

    .line 3496
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->l:Lcom/tapjoy/internal/hf;

    if-nez v0, :cond_0

    .line 3497
    new-instance v0, Lcom/tapjoy/internal/hf;

    invoke-direct {v0}, Lcom/tapjoy/internal/hf;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/hc;->l:Lcom/tapjoy/internal/hf;

    .line 3499
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->l:Lcom/tapjoy/internal/hf;

    .line 509
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hf;->a([B)Lcom/tapjoy/internal/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hf;->a()Lcom/tapjoy/internal/he;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    .line 510
    if-eqz p1, :cond_1

    .line 511
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    invoke-direct {p0, v0, p1}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/he;[B)V

    .line 514
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/hc;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a()Landroid/graphics/Bitmap;
    .locals 28

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v2, v2, Lcom/tapjoy/internal/he;->c:I

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tapjoy/internal/hc;->a:I

    if-gez v2, :cond_1

    .line 354
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v4, v4, Lcom/tapjoy/internal/he;->c:I

    .line 355
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tapjoy/internal/hc;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 356
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tapjoy/internal/hc;->u:I

    .line 358
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tapjoy/internal/hc;->u:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tapjoy/internal/hc;->u:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 359
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tapjoy/internal/hc;->u:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    const/4 v2, 0x0

    .line 391
    :goto_0
    monitor-exit p0

    return-object v2

    .line 362
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput v2, v0, Lcom/tapjoy/internal/hc;->u:I

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget-object v2, v2, Lcom/tapjoy/internal/he;->e:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tapjoy/internal/hc;->a:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/tapjoy/internal/hd;

    move-object v10, v0

    .line 365
    const/4 v2, 0x0

    .line 366
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tapjoy/internal/hc;->a:I

    add-int/lit8 v3, v3, -0x1

    .line 367
    if-ltz v3, :cond_33

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget-object v2, v2, Lcom/tapjoy/internal/he;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/hd;

    move-object v4, v2

    .line 372
    :goto_1
    iget-object v2, v10, Lcom/tapjoy/internal/hd;->k:[I

    if-eqz v2, :cond_4

    iget-object v2, v10, Lcom/tapjoy/internal/hd;->k:[I

    :goto_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/internal/hc;->e:[I

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->e:[I

    if-nez v2, :cond_5

    .line 374
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tapjoy/internal/hc;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 376
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tapjoy/internal/hc;->u:I

    .line 377
    const/4 v2, 0x0

    goto :goto_0

    .line 372
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget-object v2, v2, Lcom/tapjoy/internal/he;->a:[I

    goto :goto_2

    .line 381
    :cond_5
    iget-boolean v2, v10, Lcom/tapjoy/internal/hd;->f:Z

    if-eqz v2, :cond_6

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->e:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tapjoy/internal/hc;->f:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/internal/hc;->e:[I

    array-length v7, v7

    invoke-static {v2, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->f:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/internal/hc;->e:[I

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->e:[I

    iget v3, v10, Lcom/tapjoy/internal/hd;->h:I

    const/4 v5, 0x0

    aput v5, v2, v3

    .line 1523
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/internal/hc;->q:[I

    .line 1526
    if-nez v4, :cond_7

    .line 1527
    const/4 v2, 0x0

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1531
    :cond_7
    if-eqz v4, :cond_9

    iget v2, v4, Lcom/tapjoy/internal/hd;->g:I

    if-lez v2, :cond_9

    .line 1534
    iget v2, v4, Lcom/tapjoy/internal/hd;->g:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_11

    .line 1536
    const/4 v2, 0x0

    .line 1537
    iget-boolean v5, v10, Lcom/tapjoy/internal/hd;->f:Z

    if-nez v5, :cond_10

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v2, v2, Lcom/tapjoy/internal/he;->l:I

    .line 1539
    iget-object v5, v10, Lcom/tapjoy/internal/hd;->k:[I

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v5, v5, Lcom/tapjoy/internal/he;->j:I

    iget v6, v10, Lcom/tapjoy/internal/hd;->h:I

    if-ne v5, v6, :cond_8

    .line 1540
    const/4 v2, 0x0

    .line 1548
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/tapjoy/internal/hc;->a([ILcom/tapjoy/internal/hd;I)V

    .line 1719
    :cond_9
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tapjoy/internal/hc;->j:I

    .line 1720
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tapjoy/internal/hc;->k:I

    .line 1721
    if-eqz v10, :cond_a

    .line 1723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->g:Ljava/nio/ByteBuffer;

    iget v4, v10, Lcom/tapjoy/internal/hd;->j:I

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1726
    :cond_a
    if-nez v10, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v2, v2, Lcom/tapjoy/internal/he;->f:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v4, v4, Lcom/tapjoy/internal/he;->g:I

    mul-int/2addr v2, v4

    move/from16 v18, v2

    .line 1731
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->p:[B

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->p:[B

    array-length v2, v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_c

    .line 1733
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->r:Lcom/tapjoy/internal/hc$a;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/tapjoy/internal/hc$a;->a(I)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/internal/hc;->p:[B

    .line 1735
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->m:[S

    if-nez v2, :cond_d

    .line 1736
    const/16 v2, 0x1000

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/internal/hc;->m:[S

    .line 1738
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->n:[B

    if-nez v2, :cond_e

    .line 1739
    const/16 v2, 0x1000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/internal/hc;->n:[B

    .line 1741
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->o:[B

    if-nez v2, :cond_f

    .line 1742
    const/16 v2, 0x1001

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/internal/hc;->o:[B

    .line 1746
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/internal/hc;->c()I

    move-result v19

    .line 1747
    const/4 v2, 0x1

    shl-int v20, v2, v19

    .line 1748
    add-int/lit8 v21, v20, 0x1

    .line 1749
    add-int/lit8 v5, v20, 0x2

    .line 1750
    const/4 v12, -0x1

    .line 1751
    add-int/lit8 v2, v19, 0x1

    .line 1752
    const/4 v4, 0x1

    shl-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    .line 1753
    const/4 v6, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v6, v0, :cond_14

    .line 1755
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/internal/hc;->m:[S

    const/4 v8, 0x0

    aput-short v8, v7, v6

    .line 1756
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/internal/hc;->n:[B

    int-to-byte v8, v6

    aput-byte v8, v7, v6

    .line 1753
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1542
    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Lcom/tapjoy/internal/hc;->a:I

    if-nez v5, :cond_8

    .line 1546
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/tapjoy/internal/hc;->y:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 353
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1549
    :cond_11
    :try_start_2
    iget v2, v4, Lcom/tapjoy/internal/hd;->g:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_9

    .line 1550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->s:Landroid/graphics/Bitmap;

    if-nez v2, :cond_12

    .line 1551
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/tapjoy/internal/hc;->a([ILcom/tapjoy/internal/hd;I)V

    goto/16 :goto_4

    .line 1554
    :cond_12
    iget v2, v4, Lcom/tapjoy/internal/hd;->d:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tapjoy/internal/hc;->v:I

    div-int v9, v2, v5

    .line 1555
    iget v2, v4, Lcom/tapjoy/internal/hd;->b:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tapjoy/internal/hc;->v:I

    div-int v7, v2, v5

    .line 1556
    iget v2, v4, Lcom/tapjoy/internal/hd;->c:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tapjoy/internal/hc;->v:I

    div-int v8, v2, v5

    .line 1557
    iget v2, v4, Lcom/tapjoy/internal/hd;->a:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tapjoy/internal/hc;->v:I

    div-int v6, v2, v4

    .line 1558
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tapjoy/internal/hc;->x:I

    mul-int/2addr v2, v7

    add-int v4, v2, v6

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->s:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tapjoy/internal/hc;->x:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto/16 :goto_4

    .line 1726
    :cond_13
    iget v2, v10, Lcom/tapjoy/internal/hd;->c:I

    iget v4, v10, Lcom/tapjoy/internal/hd;->d:I

    mul-int/2addr v2, v4

    move/from16 v18, v2

    goto/16 :goto_5

    .line 1760
    :cond_14
    const/4 v6, 0x0

    .line 1761
    const/4 v8, 0x0

    move v9, v6

    move v13, v6

    move/from16 v16, v6

    move/from16 v17, v6

    move v7, v4

    move v11, v5

    move v4, v6

    move v5, v6

    move/from16 v26, v6

    move v6, v2

    move/from16 v2, v26

    :goto_7
    move/from16 v0, v18

    if-ge v8, v0, :cond_15

    .line 1763
    if-nez v5, :cond_32

    .line 1765
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/internal/hc;->d()I

    move-result v5

    .line 1766
    if-gtz v5, :cond_16

    .line 1767
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tapjoy/internal/hc;->u:I

    .line 1842
    :cond_15
    :goto_8
    move/from16 v0, v18

    if-ge v2, v0, :cond_1c

    .line 1843
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/internal/hc;->p:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v2

    .line 1842
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1770
    :cond_16
    const/4 v4, 0x0

    move v14, v4

    move v15, v5

    .line 1773
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/internal/hc;->h:[B

    aget-byte v4, v4, v14

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v17

    add-int v4, v4, v16

    .line 1774
    add-int/lit8 v5, v17, 0x8

    .line 1775
    add-int/lit8 v16, v14, 0x1

    .line 1776
    add-int/lit8 v17, v15, -0x1

    move v15, v5

    move v5, v11

    move v11, v13

    move/from16 v26, v2

    move v2, v6

    move/from16 v6, v26

    move/from16 v27, v7

    move v7, v4

    move/from16 v4, v27

    .line 1778
    :goto_a
    if-lt v15, v2, :cond_31

    .line 1780
    and-int v13, v7, v4

    .line 1781
    shr-int v14, v7, v2

    .line 1782
    sub-int/2addr v15, v2

    .line 1785
    move/from16 v0, v20

    if-ne v13, v0, :cond_17

    .line 1787
    add-int/lit8 v2, v19, 0x1

    .line 1788
    const/4 v4, 0x1

    shl-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    .line 1789
    add-int/lit8 v5, v20, 0x2

    .line 1790
    const/4 v13, -0x1

    move v7, v14

    move v12, v13

    .line 1791
    goto :goto_a

    .line 1794
    :cond_17
    if-le v13, v5, :cond_18

    .line 1795
    const/4 v7, 0x3

    move-object/from16 v0, p0

    iput v7, v0, Lcom/tapjoy/internal/hc;->u:I

    move v13, v11

    move v7, v4

    move/from16 v4, v16

    move v11, v5

    move/from16 v5, v17

    move/from16 v16, v14

    move/from16 v17, v15

    move/from16 v26, v6

    move v6, v2

    move/from16 v2, v26

    .line 1796
    goto :goto_7

    .line 1799
    :cond_18
    move/from16 v0, v21

    if-eq v13, v0, :cond_30

    .line 1803
    const/4 v7, -0x1

    if-ne v12, v7, :cond_19

    .line 1804
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tapjoy/internal/hc;->o:[B

    add-int/lit8 v7, v9, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tapjoy/internal/hc;->n:[B

    aget-byte v12, v12, v13

    aput-byte v12, v11, v9

    move v9, v7

    move v11, v13

    move v12, v13

    move v7, v14

    .line 1807
    goto :goto_a

    .line 1810
    :cond_19
    if-lt v13, v5, :cond_2f

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/internal/hc;->o:[B

    move-object/from16 v22, v0

    add-int/lit8 v7, v9, 0x1

    int-to-byte v11, v11

    aput-byte v11, v22, v9

    move v9, v7

    move v11, v12

    .line 1814
    :goto_b
    move/from16 v0, v20

    if-lt v11, v0, :cond_1a

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/internal/hc;->o:[B

    move-object/from16 v22, v0

    add-int/lit8 v7, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/internal/hc;->n:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v11

    aput-byte v23, v22, v9

    .line 1816
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/internal/hc;->m:[S

    aget-short v9, v9, v11

    move v11, v9

    move v9, v7

    goto :goto_b

    .line 1818
    :cond_1a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/internal/hc;->n:[B

    aget-byte v7, v7, v11

    and-int/lit16 v11, v7, 0xff

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/internal/hc;->o:[B

    move-object/from16 v22, v0

    add-int/lit8 v7, v9, 0x1

    int-to-byte v0, v11

    move/from16 v23, v0

    aput-byte v23, v22, v9

    .line 1822
    const/16 v9, 0x1000

    if-ge v5, v9, :cond_1b

    .line 1823
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/internal/hc;->m:[S

    int-to-short v12, v12

    aput-short v12, v9, v5

    .line 1824
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/internal/hc;->n:[B

    int-to-byte v12, v11

    aput-byte v12, v9, v5

    .line 1825
    add-int/lit8 v5, v5, 0x1

    .line 1826
    and-int v9, v5, v4

    if-nez v9, :cond_1b

    const/16 v9, 0x1000

    if-ge v5, v9, :cond_1b

    .line 1827
    add-int/lit8 v2, v2, 0x1

    .line 1828
    add-int/2addr v4, v5

    :cond_1b
    move v9, v8

    move v8, v7

    .line 1833
    :goto_c
    if-lez v8, :cond_2e

    .line 1835
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tapjoy/internal/hc;->p:[B

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/internal/hc;->o:[B

    move-object/from16 v22, v0

    add-int/lit8 v8, v8, -0x1

    aget-byte v22, v22, v8

    aput-byte v22, v12, v6

    .line 1836
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v6, v7

    goto :goto_c

    .line 1568
    :cond_1c
    iget v2, v10, Lcom/tapjoy/internal/hd;->d:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tapjoy/internal/hc;->v:I

    div-int v18, v2, v4

    .line 1569
    iget v2, v10, Lcom/tapjoy/internal/hd;->b:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tapjoy/internal/hc;->v:I

    div-int v19, v2, v4

    .line 1570
    iget v2, v10, Lcom/tapjoy/internal/hd;->c:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tapjoy/internal/hc;->v:I

    div-int v20, v2, v4

    .line 1571
    iget v2, v10, Lcom/tapjoy/internal/hd;->a:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tapjoy/internal/hc;->v:I

    div-int v21, v2, v4

    .line 1573
    const/4 v6, 0x1

    .line 1574
    const/16 v5, 0x8

    .line 1575
    const/4 v4, 0x0

    .line 1576
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tapjoy/internal/hc;->a:I

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    .line 1577
    :goto_d
    const/4 v11, 0x0

    :goto_e
    move/from16 v0, v18

    if-ge v11, v0, :cond_28

    .line 1579
    iget-boolean v7, v10, Lcom/tapjoy/internal/hd;->e:Z

    if-eqz v7, :cond_2d

    .line 1580
    move/from16 v0, v18

    if-lt v4, v0, :cond_1d

    .line 1581
    add-int/lit8 v6, v6, 0x1

    .line 1582
    packed-switch v6, :pswitch_data_0

    .line 1599
    :cond_1d
    :goto_f
    add-int v7, v4, v5

    move v12, v7

    move v13, v5

    move v14, v6

    .line 1601
    :goto_10
    add-int v4, v4, v19

    .line 1602
    move-object/from16 v0, p0

    iget v5, v0, Lcom/tapjoy/internal/hc;->w:I

    if-ge v4, v5, :cond_27

    .line 1603
    move-object/from16 v0, p0

    iget v5, v0, Lcom/tapjoy/internal/hc;->x:I

    mul-int v6, v4, v5

    .line 1605
    add-int v5, v6, v21

    .line 1607
    add-int v4, v5, v20

    .line 1608
    move-object/from16 v0, p0

    iget v7, v0, Lcom/tapjoy/internal/hc;->x:I

    add-int/2addr v7, v6

    if-ge v7, v4, :cond_2c

    .line 1610
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tapjoy/internal/hc;->x:I

    add-int/2addr v4, v6

    move v9, v4

    .line 1613
    :goto_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tapjoy/internal/hc;->v:I

    mul-int/2addr v4, v11

    iget v6, v10, Lcom/tapjoy/internal/hd;->c:I

    mul-int/2addr v4, v6

    .line 1614
    sub-int v6, v9, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tapjoy/internal/hc;->v:I

    mul-int/2addr v6, v7

    add-int v22, v4, v6

    move v15, v4

    move/from16 v16, v5

    .line 1615
    :goto_12
    move/from16 v0, v16

    if-ge v0, v9, :cond_27

    .line 1618
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tapjoy/internal/hc;->v:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 1619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/internal/hc;->p:[B

    aget-byte v4, v4, v15

    and-int/lit16 v4, v4, 0xff

    .line 1620
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tapjoy/internal/hc;->e:[I

    aget v4, v5, v4

    .line 1626
    :goto_13
    if-eqz v4, :cond_26

    .line 1627
    aput v4, v3, v16

    .line 1631
    :cond_1e
    :goto_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tapjoy/internal/hc;->v:I

    add-int/2addr v4, v15

    .line 1632
    add-int/lit8 v5, v16, 0x1

    move v15, v4

    move/from16 v16, v5

    .line 1633
    goto :goto_12

    .line 1576
    :cond_1f
    const/4 v2, 0x0

    goto :goto_d

    .line 1584
    :pswitch_0
    const/4 v4, 0x4

    .line 1585
    goto :goto_f

    .line 1587
    :pswitch_1
    const/4 v4, 0x2

    .line 1588
    const/4 v5, 0x4

    .line 1589
    goto :goto_f

    .line 1591
    :pswitch_2
    const/4 v4, 0x1

    .line 1592
    const/4 v5, 0x2

    goto :goto_f

    .line 1624
    :cond_20
    iget v0, v10, Lcom/tapjoy/internal/hd;->c:I

    move/from16 v23, v0

    .line 2671
    const/4 v8, 0x0

    .line 2672
    const/4 v7, 0x0

    .line 2673
    const/4 v6, 0x0

    .line 2674
    const/4 v5, 0x0

    .line 2676
    const/4 v4, 0x0

    move/from16 v17, v15

    .line 2680
    :goto_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/internal/hc;->v:I

    move/from16 v24, v0

    add-int v24, v24, v15

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/internal/hc;->p:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_22

    .line 2681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/internal/hc;->p:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v17

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/internal/hc;->e:[I

    move-object/from16 v25, v0

    aget v24, v25, v24

    .line 2683
    if-eqz v24, :cond_21

    .line 2684
    shr-int/lit8 v25, v24, 0x18

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    add-int v8, v8, v25

    .line 2685
    shr-int/lit8 v25, v24, 0x10

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    add-int v7, v7, v25

    .line 2686
    shr-int/lit8 v25, v24, 0x8

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    add-int v6, v6, v25

    .line 2687
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int v5, v5, v24

    .line 2688
    add-int/lit8 v4, v4, 0x1

    .line 2680
    :cond_21
    add-int/lit8 v17, v17, 0x1

    goto :goto_15

    .line 2692
    :cond_22
    add-int v17, v15, v23

    .line 2694
    :goto_16
    add-int v24, v15, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/internal/hc;->v:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/internal/hc;->p:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_24

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_24

    .line 2695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/internal/hc;->p:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v17

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .line 2696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/internal/hc;->e:[I

    move-object/from16 v25, v0

    aget v24, v25, v24

    .line 2697
    if-eqz v24, :cond_23

    .line 2698
    shr-int/lit8 v25, v24, 0x18

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    add-int v8, v8, v25

    .line 2699
    shr-int/lit8 v25, v24, 0x10

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    add-int v7, v7, v25

    .line 2700
    shr-int/lit8 v25, v24, 0x8

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    add-int v6, v6, v25

    .line 2701
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int v5, v5, v24

    .line 2702
    add-int/lit8 v4, v4, 0x1

    .line 2694
    :cond_23
    add-int/lit8 v17, v17, 0x1

    goto :goto_16

    .line 2705
    :cond_24
    if-nez v4, :cond_25

    .line 2706
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 2708
    :cond_25
    div-int/2addr v8, v4

    shl-int/lit8 v8, v8, 0x18

    div-int/2addr v7, v4

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v8

    div-int/2addr v6, v4

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v7

    div-int v4, v5, v4

    or-int/2addr v4, v6

    goto/16 :goto_13

    .line 1628
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tapjoy/internal/hc;->y:Z

    if-nez v4, :cond_1e

    if-eqz v2, :cond_1e

    .line 1629
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/tapjoy/internal/hc;->y:Z

    goto/16 :goto_14

    .line 1577
    :cond_27
    add-int/lit8 v11, v11, 0x1

    move v4, v12

    move v5, v13

    move v6, v14

    goto/16 :goto_e

    .line 1638
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tapjoy/internal/hc;->t:Z

    if-eqz v2, :cond_2b

    iget v2, v10, Lcom/tapjoy/internal/hd;->g:I

    if-eqz v2, :cond_29

    iget v2, v10, Lcom/tapjoy/internal/hd;->g:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2b

    .line 1640
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->s:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2a

    .line 1641
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/internal/hc;->e()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/internal/hc;->s:Landroid/graphics/Bitmap;

    .line 1643
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/internal/hc;->s:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tapjoy/internal/hc;->x:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tapjoy/internal/hc;->x:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tapjoy/internal/hc;->w:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1648
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/internal/hc;->e()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1649
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tapjoy/internal/hc;->x:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tapjoy/internal/hc;->x:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tapjoy/internal/hc;->w:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_2c
    move v9, v4

    goto/16 :goto_11

    :cond_2d
    move v12, v4

    move v13, v5

    move v14, v6

    move v4, v11

    goto/16 :goto_10

    :cond_2e
    move v7, v14

    move v12, v13

    move/from16 v26, v9

    move v9, v8

    move/from16 v8, v26

    goto/16 :goto_a

    :cond_2f
    move v11, v13

    goto/16 :goto_b

    :cond_30
    move v13, v11

    move v7, v4

    move/from16 v4, v16

    move v11, v5

    move/from16 v5, v17

    move/from16 v16, v14

    move/from16 v17, v15

    move/from16 v26, v6

    move v6, v2

    move/from16 v2, v26

    goto/16 :goto_7

    :cond_31
    move v13, v11

    move v11, v5

    move/from16 v5, v17

    move/from16 v17, v15

    move/from16 v26, v6

    move v6, v2

    move/from16 v2, v26

    move/from16 v27, v7

    move v7, v4

    move/from16 v4, v16

    move/from16 v16, v27

    goto/16 :goto_7

    :cond_32
    move v14, v4

    move v15, v5

    goto/16 :goto_9

    :cond_33
    move-object v4, v2

    goto/16 :goto_1

    .line 1582
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
