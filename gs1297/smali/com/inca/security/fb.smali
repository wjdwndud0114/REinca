.class public Lcom/inca/security/fb;
.super Lcom/inca/security/bb;
.source "zb"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/gb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field public static final synthetic IIiiIiIIii:Z

.field public static final synthetic IiiiiIiiIi:I = 0x13

.field private static final synthetic iiIIIIIiiI:[B

.field private static final synthetic iiIIIiiiiI:[B


# instance fields
.field public synthetic IIIIiiIiII:I

.field public final synthetic IIIiiiiIII:Z

.field private final synthetic IIiIIIIIii:[B

.field private final synthetic IIiIiIIIii:[B

.field public final synthetic IiIiIIIiIi:Z

.field public final synthetic IiiIiiiIiI:Z

.field private synthetic iiiiIIIiii:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 514
    const-class v0, Lcom/inca/security/gb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/inca/security/fb;->IIiiIiIIii:Z

    .line 1502
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/inca/security/fb;->iiIIIIIiiI:[B

    .line 881
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/inca/security/fb;->iiIIIiiiiI:[B

    return-void

    .line 514
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1502
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 881
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 855
    invoke-direct {p0}, Lcom/inca/security/bb;-><init>()V

    .line 875
    iput-object p2, p0, Lcom/inca/security/fb;->IIIIiiIiII:[B

    .line 786
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/inca/security/fb;->IiiIiiiIiI:Z

    .line 1349
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/inca/security/fb;->IIIiiiiIII:Z

    .line 1156
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/inca/security/fb;->IiIiIIIiIi:Z

    .line 1076
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    sget-object v0, Lcom/inca/security/fb;->iiIIIIIiiI:[B

    :goto_3
    iput-object v0, p0, Lcom/inca/security/fb;->IIiIIIIIii:[B

    .line 873
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/inca/security/fb;->IIiIiIIIii:[B

    .line 787
    iput v2, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    .line 1478
    iget-boolean v0, p0, Lcom/inca/security/fb;->IIIiiiiIII:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    :goto_4
    iput v0, p0, Lcom/inca/security/fb;->iiiiIIIiii:I

    .line 771
    return-void

    :cond_0
    move v0, v2

    .line 786
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1349
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1156
    goto :goto_2

    .line 1076
    :cond_3
    sget-object v0, Lcom/inca/security/fb;->iiIIIiiiiI:[B

    goto :goto_3

    .line 1478
    :cond_4
    const/4 v0, -0x1

    goto :goto_4
.end method


# virtual methods
.method public IiiiIIIIii(I)I
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 951
    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public IiiiIIIIii([BIIZ)Z
    .locals 11
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Z

    .prologue
    .line 1404
    iget-object v6, p0, Lcom/inca/security/fb;->IIiIIIIIii:[B

    .line 883
    iget-object v7, p0, Lcom/inca/security/fb;->IIIIiiIiII:[B

    .line 1109
    const/4 v2, 0x0

    .line 1434
    iget v4, p0, Lcom/inca/security/fb;->iiiiIIIiii:I

    .line 511
    add-int/2addr p3, p2

    .line 653
    const/4 v1, -0x1

    .line 518
    iget v3, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    packed-switch v3, :pswitch_data_0

    .end local p2    # "arg1":I
    :cond_0
    :goto_0
    :pswitch_0
    move v5, v1

    move v3, p2

    .line 658
    :goto_1
    const/4 v8, -0x1

    if-eq v1, v8, :cond_16

    .line 667
    const/4 v1, 0x1

    shr-int/lit8 v8, v5, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v6, v8

    aput-byte v8, v7, v2

    .line 1077
    const/4 v2, 0x2

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v6, v8

    aput-byte v8, v7, v1

    .line 743
    const/4 v8, 0x3

    shr-int/lit8 v1, v5, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v6, v1

    aput-byte v1, v7, v2

    .line 707
    const/4 v2, 0x4

    and-int/lit8 v1, v5, 0x3f

    aget-byte v5, v6, v1

    add-int/lit8 v1, v4, -0x1

    aput-byte v5, v7, v8

    .line 1194
    if-nez v1, :cond_15

    .line 1139
    iget-boolean v1, p0, Lcom/inca/security/fb;->IiIiIIIiIi:Z

    if-eqz v1, :cond_14

    const/16 v4, 0xd

    const/4 v1, 0x5

    aput-byte v4, v7, v2

    .line 712
    :goto_2
    const/16 v4, 0xa

    add-int/lit8 v2, v1, 0x1

    aput-byte v4, v7, v1

    .line 561
    const/16 v1, 0x13

    move v10, v3

    move v3, v2

    move v2, v1

    move v1, v10

    :cond_1
    :goto_3
    move v5, v2

    move v4, v3

    move v3, v1

    .line 748
    :goto_4
    add-int/lit8 v1, v1, 0x3

    if-gt v1, p3, :cond_3

    .line 537
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 1116
    shr-int/lit8 v2, v1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    .line 500
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v8, v1, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v6, v8

    aput-byte v8, v7, v2

    .line 1039
    add-int/lit8 v2, v4, 0x2

    shr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v6, v8

    aput-byte v8, v7, v2

    .line 616
    add-int/lit8 v8, v4, 0x3

    and-int/lit8 v1, v1, 0x3f

    aget-byte v9, v6, v1

    .line 687
    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v2, v5, -0x1

    aput-byte v9, v7, v8

    .line 647
    add-int/lit8 v3, v4, 0x4

    .line 1292
    if-nez v2, :cond_1

    .line 858
    iget-boolean v2, p0, Lcom/inca/security/fb;->IiIiIIIiIi:Z

    if-eqz v2, :cond_2

    const/16 v4, 0xd

    add-int/lit8 v2, v3, 0x1

    aput-byte v4, v7, v3

    move v3, v2

    .line 926
    :cond_2
    const/16 v2, 0xa

    add-int/lit8 v4, v3, 0x1

    aput-byte v2, v7, v3

    .line 1443
    const/16 v2, 0x13

    move v3, v1

    move v5, v2

    goto :goto_4

    .line 1244
    .restart local p2    # "arg1":I
    :pswitch_1
    add-int/lit8 v3, p2, 0x2

    if-gt v3, p3, :cond_0

    .line 622
    iget-object v1, p0, Lcom/inca/security/fb;->IIiIiIIIii:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, p2, 0x1

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aget-byte v3, p1, v5

    and-int/lit16 v8, v3, 0xff

    add-int/lit8 v3, v5, 0x1

    or-int/2addr v1, v8

    .line 1432
    const/4 v5, 0x0

    iput v5, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    move v5, v1

    goto/16 :goto_1

    .line 837
    :pswitch_2
    add-int/lit8 v3, p2, 0x1

    if-gt v3, p3, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/inca/security/fb;->IIiIiIIIii:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    iget-object v3, p0, Lcom/inca/security/fb;->IIiIiIIIii:[B

    const/4 v5, 0x1

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 p2, p2, 0x1

    or-int/2addr v1, v3

    .line 955
    const/4 v3, 0x0

    iput v3, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    goto/16 :goto_0

    .line 923
    .end local p2    # "arg1":I
    :cond_3
    if-eqz p4, :cond_e

    .line 526
    iget v1, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    sub-int v1, v3, v1

    add-int/lit8 v2, p3, -0x1

    if-ne v1, v2, :cond_8

    .line 984
    const/4 v2, 0x0

    .line 1049
    iget v1, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/inca/security/fb;->IIiIiIIIii:[B

    aget-byte v1, v1, v2

    const/4 v2, 0x1

    :goto_5
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v8, v1, 0x4

    .line 1353
    iget v1, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    .line 547
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v1, v8, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v6, v1

    aput-byte v1, v7, v4

    .line 956
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v4, v8, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v7, v2

    .line 1155
    iget-boolean v2, p0, Lcom/inca/security/fb;->IiiIiiiIiI:Z

    if-eqz v2, :cond_4

    .line 572
    const/16 v2, 0x3d

    add-int/lit8 v4, v1, 0x1

    aput-byte v2, v7, v1

    .line 663
    const/16 v2, 0x3d

    add-int/lit8 v1, v4, 0x1

    aput-byte v2, v7, v4

    .line 513
    :cond_4
    iget-boolean v2, p0, Lcom/inca/security/fb;->IIIiiiiIII:Z

    if-eqz v2, :cond_12

    .line 615
    iget-boolean v2, p0, Lcom/inca/security/fb;->IiIiIIIiIi:Z

    if-eqz v2, :cond_5

    const/16 v4, 0xd

    add-int/lit8 v2, v1, 0x1

    aput-byte v4, v7, v1

    move v1, v2

    .line 1099
    :cond_5
    const/16 v2, 0xa

    add-int/lit8 v4, v1, 0x1

    aput-byte v2, v7, v1

    .line 892
    :cond_6
    :goto_6
    sget-boolean v1, Lcom/inca/security/fb;->IIiiIiIIii:Z

    if-nez v1, :cond_d

    iget v1, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1049
    :cond_7
    aget-byte v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 866
    :cond_8
    iget v1, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    sub-int v1, v3, v1

    add-int/lit8 v2, p3, -0x2

    if-ne v1, v2, :cond_c

    .line 1225
    const/4 v2, 0x0

    .line 505
    iget v1, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    const/4 v8, 0x1

    if-le v1, v8, :cond_a

    iget-object v1, p0, Lcom/inca/security/fb;->IIiIiIIIii:[B

    aget-byte v1, v1, v2

    const/4 v2, 0x1

    :goto_7
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v8, v1, 0xa

    iget v1, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/inca/security/fb;->IIiIiIIIii:[B

    aget-byte v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    :goto_8
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v8

    .line 829
    iget v8, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    sub-int v2, v8, v2

    iput v2, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    .line 920
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v8, v1, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v6, v8

    aput-byte v8, v7, v4

    .line 563
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v6, v8

    aput-byte v8, v7, v2

    .line 1180
    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v6, v1

    aput-byte v1, v7, v4

    .line 605
    iget-boolean v1, p0, Lcom/inca/security/fb;->IiiIiiiIiI:Z

    if-eqz v1, :cond_13

    .line 1527
    const/16 v4, 0x3d

    add-int/lit8 v1, v2, 0x1

    aput-byte v4, v7, v2

    .line 520
    :goto_9
    iget-boolean v2, p0, Lcom/inca/security/fb;->IIIiiiiIII:Z

    if-eqz v2, :cond_12

    .line 593
    iget-boolean v2, p0, Lcom/inca/security/fb;->IiIiIIIiIi:Z

    if-eqz v2, :cond_9

    const/16 v4, 0xd

    add-int/lit8 v2, v1, 0x1

    aput-byte v4, v7, v1

    move v1, v2

    .line 564
    :cond_9
    const/16 v2, 0xa

    add-int/lit8 v4, v1, 0x1

    aput-byte v2, v7, v1

    goto :goto_6

    .line 505
    :cond_a
    aget-byte v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    aget-byte v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 862
    :cond_c
    iget-boolean v1, p0, Lcom/inca/security/fb;->IIIiiiiIII:Z

    if-eqz v1, :cond_6

    if-lez v4, :cond_6

    const/16 v1, 0x13

    if-eq v5, v1, :cond_6

    .line 1350
    iget-boolean v1, p0, Lcom/inca/security/fb;->IiIiIIIiIi:Z

    if-eqz v1, :cond_11

    const/16 v2, 0xd

    add-int/lit8 v1, v4, 0x1

    aput-byte v2, v7, v4

    .line 804
    :goto_a
    const/16 v2, 0xa

    add-int/lit8 v4, v1, 0x1

    aput-byte v2, v7, v1

    goto/16 :goto_6

    .line 1163
    :cond_d
    sget-boolean v1, Lcom/inca/security/fb;->IIiiIiIIii:Z

    if-nez v1, :cond_10

    if-eq v3, p3, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1571
    :cond_e
    add-int/lit8 v1, p3, -0x1

    if-ne v3, v1, :cond_f

    .line 684
    iget-object v1, p0, Lcom/inca/security/fb;->IIiIiIIIii:[B

    iget v2, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    move-object v0, p0

    .line 1213
    .end local p0    # "this":Lcom/inca/security/fb;
    .local v0, "this":Lcom/inca/security/fb;
    :goto_b
    iput v4, v0, Lcom/inca/security/fb;->IiIiIiiIii:I

    const/4 v1, 0x1

    .line 896
    iput v5, p0, Lcom/inca/security/fb;->iiiiIIIiii:I

    .line 1243
    return v1

    .line 1014
    .end local v0    # "this":Lcom/inca/security/fb;
    .restart local p0    # "this":Lcom/inca/security/fb;
    :cond_f
    add-int/lit8 v1, p3, -0x2

    if-ne v3, v1, :cond_10

    .line 795
    iget-object v1, p0, Lcom/inca/security/fb;->IIiIiIIIii:[B

    iget v2, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    aget-byte v6, p1, v3

    aput-byte v6, v1, v2

    .line 842
    iget-object v1, p0, Lcom/inca/security/fb;->IIiIiIIIii:[B

    iget v2, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/inca/security/fb;->IIIIiiIiII:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    :cond_10
    move-object v0, p0

    .line 1213
    .end local p0    # "this":Lcom/inca/security/fb;
    .restart local v0    # "this":Lcom/inca/security/fb;
    goto :goto_b

    .end local v0    # "this":Lcom/inca/security/fb;
    .restart local p0    # "this":Lcom/inca/security/fb;
    :cond_11
    move v1, v4

    goto :goto_a

    :cond_12
    move v4, v1

    goto/16 :goto_6

    :cond_13
    move v1, v2

    goto/16 :goto_9

    :cond_14
    move v1, v2

    goto/16 :goto_2

    :cond_15
    move v10, v3

    move v3, v2

    move v2, v1

    move v1, v10

    goto/16 :goto_3

    :cond_16
    move v1, v3

    move v3, v2

    move v2, v4

    goto/16 :goto_3

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
