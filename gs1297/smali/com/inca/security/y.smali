.class public Lcom/inca/security/y;
.super Ljava/lang/Object;
.source "u"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/d;,
        Lcom/inca/security/aa;,
        Lcom/inca/security/v;,
        Lcom/inca/security/f;
    }
.end annotation


# static fields
.field public static final synthetic IIIIiIIiii:I = 0x0

.field public static final synthetic IIIIiiIiII:I = 0x10

.field public static final synthetic IIIiIiiiIi:I = 0xfffffff

.field public static final synthetic IiIiIiIiII:I = 0x16

.field public static final synthetic IiiIiiiiii:I = 0x20

.field public static final synthetic iIIiIIiIiI:I = 0x1

.field public static final synthetic iIiiiIIiIi:I = 0x1000

.field public static final synthetic iiIIIIIiIi:I = 0x5

.field public static synthetic iiIIIiiiiI:[B


# instance fields
.field public synthetic IIIiIIIiiI:[I

.field public synthetic IIIiIIiIIi:I

.field public synthetic IIIiIIiiii:[Lcom/inca/security/a;

.field public synthetic IIIiIiiiII:Z

.field public synthetic IIIiIiiiii:J

.field public synthetic IIIiiIIiii:[S

.field public synthetic IIIiiiiIII:Lcom/inca/security/a;

.field public synthetic IIiIIIIIii:Lcom/inca/security/u;

.field public synthetic IIiIIIIiIi:I

.field public synthetic IIiIIiIIiI:I

.field public synthetic IIiIIiiiiI:I

.field public synthetic IIiIiIIIii:[Z

.field public synthetic IIiiIIIiIi:[B

.field public synthetic IIiiIiIIii:[S

.field public synthetic IIiiiIIiII:I

.field public synthetic IIiiiiiIIi:Lcom/inca/security/f;

.field public synthetic IiIIIIIiII:Z

.field public synthetic IiIIIIiIIi:I

.field public synthetic IiIIIiIIIi:[S

.field public synthetic IiIIiIIIIi:I

.field public synthetic IiIiIIIiIi:[J

.field public synthetic IiIiIiiIii:I

.field public synthetic IiiIIIIIii:[I

.field public synthetic IiiIiIIiII:I

.field public synthetic IiiIiIIiIi:[S

.field public synthetic IiiIiIIiiI:Lcom/inca/security/aa;

.field public synthetic IiiIiiiIiI:Z

.field public synthetic IiiiIIIiIi:[Lcom/inca/security/d;

.field public synthetic IiiiIIiIII:Lcom/inca/security/h;

.field public synthetic IiiiiIIIIi:[S

.field public synthetic IiiiiIiiIi:I

.field public synthetic iIIIIIiIII:B

.field public synthetic iIIIiIiiii:I

.field public synthetic iIIIiiIIIi:[S

.field public synthetic iIIiIIIIIi:[I

.field public synthetic iIIiIIIIiI:[I

.field public synthetic iIIiIiIIII:Ljava/io/InputStream;

.field public synthetic iIiiIIIiII:[I

.field public synthetic iIiiiiiIIi:I

.field public synthetic iiIIIIIiiI:Z

.field public synthetic iiIIiIIiII:I

.field public synthetic iiIIiIIiii:[I

.field public synthetic iiIIiIiIii:[I

.field public synthetic iiIIiiiiii:[S

.field public synthetic iiIiIIIiiI:[J

.field public synthetic iiIiIIIiii:I

.field public synthetic iiIiiIIIii:I

.field public synthetic iiiIIIIiII:Lcom/inca/security/aa;

.field public synthetic iiiIIIiiII:I

.field public synthetic iiiIiIIIII:I

.field public synthetic iiiIiiIiIi:[I

.field public synthetic iiiIiiiiII:I

.field public synthetic iiiiIIIiii:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v0, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 72
    const/16 v1, 0x800

    new-array v1, v1, [B

    sput-object v1, Lcom/inca/security/y;->iiIIIiiiiI:[B

    .line 124
    const/16 v5, 0x16

    .line 56
    sget-object v1, Lcom/inca/security/y;->iiIIIiiiiI:[B

    aput-byte v3, v1, v3

    .line 19
    sget-object v1, Lcom/inca/security/y;->iiIIIiiiiI:[B

    aput-byte v9, v1, v9

    move v1, v0

    move v2, v0

    .line 46
    :goto_0
    if-ge v0, v5, :cond_1

    .line 106
    shr-int/lit8 v0, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    shl-int v6, v9, v0

    move v0, v3

    move v4, v3

    .line 181
    :goto_1
    if-ge v0, v6, :cond_0

    .line 0
    sget-object v7, Lcom/inca/security/y;->iiIIIiiiiI:[B

    int-to-byte v8, v1

    add-int/lit8 v0, v4, 0x1

    aput-byte v8, v7, v2

    .line 181
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 25

    .prologue
    .line 257
    const/16 v2, 0x1000

    const/4 v3, 0x4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-static {}, Lcom/inca/security/b;->IiiiIIIIii()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/inca/security/y;->IiIIIIiIIi:I

    .line 141
    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/inca/security/y;->IIIiIIIiiI:[I

    .line 263
    new-array v2, v2, [Lcom/inca/security/d;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    .line 239
    const/4 v2, 0x4

    const/16 v3, 0xc0

    const/16 v4, 0xc

    const/16 v5, 0xc

    const/16 v6, 0xc

    const/16 v7, 0xc0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    .line 394
    new-instance v8, Lcom/inca/security/u;

    invoke-direct {v8}, Lcom/inca/security/u;-><init>()V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    .line 308
    new-array v7, v7, [S

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/inca/security/y;->IIIiiIIiii:[S

    .line 475
    new-array v6, v6, [S

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/inca/security/y;->IiiIiIIiIi:[S

    .line 258
    new-array v6, v5, [S

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/inca/security/y;->IiiiiIIIIi:[S

    .line 490
    new-array v5, v5, [S

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/inca/security/y;->iIIIiiIIIi:[S

    .line 400
    new-array v4, v4, [S

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/inca/security/y;->IIiiIiIIii:[S

    .line 321
    new-array v3, v3, [S

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/inca/security/y;->IiIIIiIIIi:[S

    .line 442
    new-array v2, v2, [Lcom/inca/security/a;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/inca/security/y;->IIIiIIiiii:[Lcom/inca/security/a;

    const/4 v2, 0x0

    .line 225
    const/16 v3, 0x80

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/high16 v12, 0x400000

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x2c

    const/16 v18, 0x10

    const/16 v19, 0x200

    const/16 v20, 0x100

    const/16 v21, 0x20

    const/16 v22, 0x224

    const/16 v23, 0x72

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/y;->iiIIiiiiii:[S

    .line 236
    new-instance v23, Lcom/inca/security/a;

    const/16 v24, 0x4

    invoke-direct/range {v23 .. v24}, Lcom/inca/security/a;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/y;->IIIiiiiIII:Lcom/inca/security/a;

    .line 341
    new-instance v23, Lcom/inca/security/aa;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/inca/security/aa;-><init>(Lcom/inca/security/y;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/y;->iiiIIIIiII:Lcom/inca/security/aa;

    .line 345
    new-instance v23, Lcom/inca/security/aa;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/inca/security/aa;-><init>(Lcom/inca/security/y;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/y;->IiiIiIIiiI:Lcom/inca/security/aa;

    .line 337
    new-instance v23, Lcom/inca/security/f;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/inca/security/f;-><init>(Lcom/inca/security/y;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/y;->IIiiiiiIIi:Lcom/inca/security/f;

    .line 452
    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/y;->IiiIIIIIii:[I

    .line 491
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/y;->iiiIiIIIII:I

    .line 246
    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/y;->iIIiIIIIiI:[I

    .line 283
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/y;->iiIIiIIiii:[I

    .line 439
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/y;->iIiiIIIiII:[I

    .line 250
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/y;->IIiIIiIIiI:I

    .line 461
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/y;->IIiIIiiiiI:I

    .line 375
    move-object/from16 v0, p0

    iput v15, v0, Lcom/inca/security/y;->IIIiIIiIIi:I

    .line 354
    move-object/from16 v0, p0

    iput v14, v0, Lcom/inca/security/y;->IIiIIIIiIi:I

    .line 316
    move-object/from16 v0, p0

    iput v13, v0, Lcom/inca/security/y;->iiIIiIIiII:I

    .line 243
    move-object/from16 v0, p0

    iput v12, v0, Lcom/inca/security/y;->iiIiiIIIii:I

    .line 298
    move-object/from16 v0, p0

    iput v11, v0, Lcom/inca/security/y;->iiiIiiiiII:I

    .line 307
    move-object/from16 v0, p0

    iput v10, v0, Lcom/inca/security/y;->IiIiIiiIii:I

    .line 480
    move-object/from16 v0, p0

    iput v9, v0, Lcom/inca/security/y;->iiiIIIiiII:I

    .line 374
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/inca/security/y;->IiiIiiiIiI:Z

    .line 247
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/inca/security/y;->IIIiIiiiII:Z

    .line 635
    new-array v8, v7, [I

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    .line 768
    new-array v7, v7, [I

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/inca/security/y;->iiIIiIiIii:[I

    .line 1222
    new-array v7, v6, [J

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/inca/security/y;->iiIiIIIiiI:[J

    new-array v6, v6, [J

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/inca/security/y;->IiIiIIIiIi:[J

    new-array v5, v5, [Z

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/inca/security/y;->IIiIiIIIii:[Z

    .line 587
    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/inca/security/y;->IIiiIIIiIi:[B

    .line 1513
    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/inca/security/y;->iIIiIIIIIi:[I

    move v3, v2

    .line 489
    :goto_0
    const/16 v4, 0x1000

    if-ge v2, v4, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    new-instance v5, Lcom/inca/security/d;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/inca/security/d;-><init>(Lcom/inca/security/y;)V

    add-int/lit8 v2, v3, 0x1

    aput-object v5, v4, v3

    move v3, v2

    .line 489
    goto :goto_0

    .line 304
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/y;->IIIiIIiiii:[Lcom/inca/security/a;

    new-instance v5, Lcom/inca/security/a;

    const/4 v2, 0x6

    invoke-direct {v5, v2}, Lcom/inca/security/a;-><init>(I)V

    add-int/lit8 v2, v3, 0x1

    aput-object v5, v4, v3

    move v3, v2

    .line 304
    goto :goto_1

    .line 273
    :cond_1
    return-void
.end method

.method public static IiIiiIiiII(I)I
    .locals 2
    .param p0, "arg0"    # I

    .prologue
    .line 166
    const/high16 v0, 0x20000

    if-ge p0, v0, :cond_0

    .line 81
    sget-object v0, Lcom/inca/security/y;->iiIIIiiiiI:[B

    shr-int/lit8 v1, p0, 0x6

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0xc

    :goto_0
    return v0

    .line 168
    :cond_0
    const/high16 v0, 0x8000000

    if-ge p0, v0, :cond_1

    .line 65
    sget-object v0, Lcom/inca/security/y;->iiIIIiiiiI:[B

    shr-int/lit8 v1, p0, 0x10

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 16
    :cond_1
    sget-object v0, Lcom/inca/security/y;->iiIIIiiiiI:[B

    shr-int/lit8 v1, p0, 0x1a

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x34

    goto :goto_0
.end method

.method public static IiiiIIIIii(I)I
    .locals 2
    .param p0, "arg0"    # I

    .prologue
    .line 22
    const/16 v0, 0x800

    if-ge p0, v0, :cond_0

    .line 97
    sget-object v0, Lcom/inca/security/y;->iiIIIiiiiI:[B

    aget-byte v0, v0, p0

    .line 180
    :goto_0
    return v0

    .line 105
    :cond_0
    const/high16 v0, 0x200000

    if-ge p0, v0, :cond_1

    .line 120
    sget-object v0, Lcom/inca/security/y;->iiIIIiiiiI:[B

    shr-int/lit8 v1, p0, 0xa

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x14

    goto :goto_0

    .line 180
    :cond_1
    sget-object v0, Lcom/inca/security/y;->iiIIIiiiiI:[B

    shr-int/lit8 v1, p0, 0x14

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x28

    goto :goto_0
.end method


# virtual methods
.method public IIiIIiIiIi(I)I
    .locals 6
    .param p1, "arg0"    # I

    .prologue
    const/4 v5, 0x0

    .line 1474
    iput p1, p0, Lcom/inca/security/y;->IiIIiIIIIi:I

    .line 900
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v1, v1, p1

    iget v0, v1, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 1427
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/inca/security/d;->iiIIIiiiiI:I

    .line 850
    :goto_0
    iget-object v2, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/inca/security/d;->iiIIIIIiiI:Z

    if-eqz v2, :cond_0

    .line 1081
    iget-object v2, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/inca/security/d;->IiiiIIIIii()V

    .line 781
    iget-object v2, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, -0x1

    iput v3, v2, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 1030
    iget-object v2, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/inca/security/d;->IIiIIIIIii:Z

    if-eqz v2, :cond_0

    .line 700
    iget-object v2, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iput-boolean v5, v2, Lcom/inca/security/d;->iiIIIIIiiI:Z

    .line 1274
    iget-object v2, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/inca/security/d;->IIiIiIIIii:I

    iput v3, v2, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 964
    iget-object v2, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/inca/security/d;->IiiIiiiIiI:I

    iput v3, v2, Lcom/inca/security/d;->iiIIIiiiiI:I

    .line 851
    :cond_0
    iget-object v2, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/inca/security/d;->iiIIIiiiiI:I

    .line 1365
    iget-object v3, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 514
    iget-object v4, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v4, v4, v0

    iput v1, v4, Lcom/inca/security/d;->iiIIIiiiiI:I

    .line 1002
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v1, v1, v0

    iput p1, v1, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 778
    .end local p1    # "arg0":I
    .local v0, "arg0":I
    if-gtz v0, :cond_1

    .line 646
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/inca/security/d;->iiIIIiiiiI:I

    iput v1, p0, Lcom/inca/security/y;->IIiiiIIiII:I

    .line 1304
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/inca/security/d;->IIIiiiiIII:I

    iput v1, p0, Lcom/inca/security/y;->iIIIiIiiii:I

    .line 1085
    iget v1, p0, Lcom/inca/security/y;->iIIIiIiiii:I

    return v1

    :cond_1
    move v1, v2

    move p1, v0

    .end local v0    # "arg0":I
    .restart local p1    # "arg0":I
    move v0, v3

    goto :goto_0
.end method

.method public IIiIIiIiIi()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 789
    move v0, v1

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    .line 656
    iget-object v3, p0, Lcom/inca/security/y;->iIiiIIIiII:[I

    iget-object v0, p0, Lcom/inca/security/y;->IIIiiiiIII:Lcom/inca/security/a;

    invoke-virtual {v0, v2}, Lcom/inca/security/a;->iIiIIiIIIi(I)I

    move-result v4

    add-int/lit8 v0, v2, 0x1

    aput v4, v3, v2

    move v2, v0

    .line 789
    goto :goto_0

    .line 544
    :cond_0
    iput v1, p0, Lcom/inca/security/y;->iiIiIIIiii:I

    .line 848
    return-void
.end method

.method public IIiIIiIiIi(I)V
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    if-lez p1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    invoke-virtual {v0, p1}, Lcom/inca/security/h;->iIiIIiIIIi(I)V

    .line 443
    iget v0, p0, Lcom/inca/security/y;->IiiiiIiiIi:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/inca/security/y;->IiiiiIiiIi:I

    .line 478
    :cond_0
    return-void
.end method

.method public IIiIIiIiIi(I)Z
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 1104
    const/4 v0, 0x1

    return v0
.end method

.method public IiIIIIIIIi()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    invoke-virtual {v0}, Lcom/inca/security/u;->iiiiiiiIii()V

    return-void
.end method

.method public IiIiiIiiII()V
    .locals 0

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/inca/security/y;->IiiiIIIIii()V

    .line 1273
    invoke-virtual {p0}, Lcom/inca/security/y;->IiIIIIIIIi()V

    .line 1112
    return-void
.end method

.method public IiIiiIiiII(I)Z
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1489
    .line 517
    if-lt p1, v1, :cond_0

    const/high16 v3, 0x20000000

    if-le p1, v3, :cond_1

    :cond_0
    move v1, v2

    .line 1021
    .end local p1    # "arg0":I
    :goto_0
    return v1

    .line 637
    .restart local p1    # "arg0":I
    :cond_1
    iput p1, p0, Lcom/inca/security/y;->iiIiiIIIii:I

    move v0, p1

    .line 698
    .end local p1    # "arg0":I
    .local v0, "arg0":I
    :goto_1
    shl-int v3, v1, v2

    if-le v0, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    move v0, p1

    goto :goto_1

    .line 1334
    :cond_2
    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/inca/security/y;->IIiIIiIIiI:I

    goto :goto_0
.end method

.method public IiiiIIIIii()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 293
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    iget-object v2, p0, Lcom/inca/security/y;->IiiIIIIIii:[I

    invoke-virtual {v1, v2}, Lcom/inca/security/h;->IiiiIIIIii([I)I

    move-result v1

    iput v1, p0, Lcom/inca/security/y;->IiiIiIIiII:I

    .line 349
    iget v1, p0, Lcom/inca/security/y;->IiiIiIIiII:I

    if-lez v1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/inca/security/y;->IiiIIIIIii:[I

    iget v1, p0, Lcom/inca/security/y;->IiiIiIIiII:I

    add-int/lit8 v1, v1, -0x2

    aget v0, v0, v1

    .line 323
    iget v1, p0, Lcom/inca/security/y;->iiiIiIIIII:I

    if-ne v0, v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/inca/security/y;->IiiIIIIIii:[I

    iget v4, p0, Lcom/inca/security/y;->IiiIiIIiII:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    rsub-int v4, v0, 0x111

    invoke-virtual {v1, v2, v3, v4}, Lcom/inca/security/h;->IiiiIIIIii(III)I

    move-result v1

    add-int/2addr v0, v1

    .line 473
    :cond_0
    iget v1, p0, Lcom/inca/security/y;->IiiiiIiiIi:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inca/security/y;->IiiiiIiiIi:I

    .line 445
    return v0
.end method

.method public IiiiIIIIii(II)I
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/inca/security/y;->IiiiiIIIIi:[S

    aget-short v0, v0, p1

    invoke-static {v0}, Lcom/inca/security/u;->IiiiIIIIii(I)I

    move-result v0

    iget-object v1, p0, Lcom/inca/security/y;->IiIIIiIIIi:[S

    shl-int/lit8 v2, p1, 0x4

    add-int/2addr v2, p2

    aget-short v1, v1, v2

    .line 440
    invoke-static {v1}, Lcom/inca/security/u;->IiiiIIIIii(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 274
    return v0
.end method

.method public IiiiIIIIii(III)I
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 279
    invoke-static {p2}, Lcom/inca/security/b;->IIiIIiIiIi(I)I

    move-result v0

    .line 377
    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/inca/security/y;->iiIIiIIiii:[I

    mul-int/lit16 v0, v0, 0x80

    add-int/2addr v0, p1

    aget v0, v1, v0

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/inca/security/y;->iiiIIIIiII:Lcom/inca/security/aa;

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {v1, v2, p3}, Lcom/inca/security/aa;->IiiiIIIIii(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/inca/security/y;->iIIiIIIIiI:[I

    shl-int/lit8 v0, v0, 0x6

    invoke-static {p1}, Lcom/inca/security/y;->IiIiiIiiII(I)I

    move-result v2

    add-int/2addr v0, v2

    aget v0, v1, v0

    iget-object v1, p0, Lcom/inca/security/y;->iIiiIIIiII:[I

    and-int/lit8 v2, p1, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public IiiiIIIIii(IIII)I
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/inca/security/y;->IiiIiIIiiI:Lcom/inca/security/aa;

    add-int/lit8 v1, p2, -0x2

    invoke-virtual {v0, v1, p4}, Lcom/inca/security/aa;->IiiiIIIIii(II)I

    move-result v0

    .line 493
    invoke-virtual {p0, p1, p3, p4}, Lcom/inca/security/y;->iIiIIiIIIi(III)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public IiiiIIIIii()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inca/security/y;->IIIiIiiiII:Z

    if-eqz v0, :cond_0

    .line 1455
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    invoke-virtual {v1}, Lcom/inca/security/h;->IIiIIiIiIi()V

    .line 650
    iput-boolean v0, p0, Lcom/inca/security/y;->IIIiIiiiII:Z

    .line 609
    :cond_0
    return-void
.end method

.method public IiiiIIIIii(I)V
    .locals 6
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1031
    iget-boolean v0, p0, Lcom/inca/security/y;->IiiIiiiIiI:Z

    if-nez v0, :cond_0

    .line 1375
    :goto_0
    return-void

    .line 773
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v2, p0, Lcom/inca/security/y;->IIIiiIIiii:[S

    iget v3, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, p1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 618
    iget-object v1, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v2, p0, Lcom/inca/security/y;->IiiIiIIiIi:[S

    iget v3, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 1565
    iget v1, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    invoke-static {v1}, Lcom/inca/security/b;->iiiiiiiIii(I)I

    move-result v1

    iput v1, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    .line 639
    iget-object v1, p0, Lcom/inca/security/y;->iiiIIIIiII:Lcom/inca/security/aa;

    iget-object v2, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    invoke-virtual {v1, v2, v5, p1}, Lcom/inca/security/aa;->IiiiIIIIii(Lcom/inca/security/u;II)V

    .line 1551
    const/16 v1, 0x3f

    .line 576
    invoke-static {v0}, Lcom/inca/security/b;->IIiIIiIiIi(I)I

    move-result v0

    .line 1535
    iget-object v2, p0, Lcom/inca/security/y;->IIIiIIiiii:[Lcom/inca/security/a;

    aget-object v0, v2, v0

    iget-object v2, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    invoke-virtual {v0, v2, v1}, Lcom/inca/security/a;->iIiIIiIIIi(Lcom/inca/security/u;I)V

    .line 1177
    iget-object v0, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    const v1, 0x3ffffff

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/inca/security/u;->IiiiIIIIii(II)V

    .line 1185
    iget-object v0, p0, Lcom/inca/security/y;->IIIiiiiIII:Lcom/inca/security/a;

    iget-object v1, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/inca/security/a;->IiiiIIIIii(Lcom/inca/security/u;I)V

    goto :goto_0
.end method

.method public IiiiIIIIii(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V
    .locals 5
    .param p1, "arg0"    # Ljava/io/InputStream;
    .param p2, "arg1"    # Ljava/io/OutputStream;
    .param p3, "arg2"    # J
    .param p5, "arg3"    # J

    .prologue
    const/4 v4, 0x1

    .line 1514
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/inca/security/y;->iIIiIiIIII:Ljava/io/InputStream;

    .line 1537
    iput-boolean v2, p0, Lcom/inca/security/y;->iiIIIIIiiI:Z

    .line 1240
    invoke-virtual {p0}, Lcom/inca/security/y;->iiiiIIiiII()V

    .line 1005
    invoke-virtual {p0, p2}, Lcom/inca/security/y;->IiiiIIIIii(Ljava/io/OutputStream;)V

    .line 1570
    invoke-virtual {p0}, Lcom/inca/security/y;->iIiIIiIIIi()V

    .line 529
    invoke-virtual {p0}, Lcom/inca/security/y;->iiiiiiiIii()V

    .line 1579
    invoke-virtual {p0}, Lcom/inca/security/y;->IIiIIiIiIi()V

    .line 1024
    iget-object v2, p0, Lcom/inca/security/y;->iiiIIIIiII:Lcom/inca/security/aa;

    iget v3, p0, Lcom/inca/security/y;->iiiIiIIIII:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Lcom/inca/security/aa;->IiIiiIiiII(I)V

    .line 1445
    iget-object v2, p0, Lcom/inca/security/y;->iiiIIIIiII:Lcom/inca/security/aa;

    iget v3, p0, Lcom/inca/security/y;->IIiIIiiiiI:I

    shl-int v3, v4, v3

    invoke-virtual {v2, v3}, Lcom/inca/security/aa;->IIiIIiIiIi(I)V

    .line 849
    iget-object v2, p0, Lcom/inca/security/y;->IiiIiIIiiI:Lcom/inca/security/aa;

    iget v3, p0, Lcom/inca/security/y;->iiiIiIIIII:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Lcom/inca/security/aa;->IiIiiIiiII(I)V

    .line 997
    iget-object v2, p0, Lcom/inca/security/y;->IiiIiIIiiI:Lcom/inca/security/aa;

    iget v3, p0, Lcom/inca/security/y;->IIiIIiiiiI:I

    shl-int v3, v4, v3

    invoke-virtual {v2, v3}, Lcom/inca/security/aa;->IIiIIiIiIi(I)V

    .line 1197
    iput-wide v0, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    .line 1444
    return-void
.end method

.method public IiiiIIIIii(Ljava/io/InputStream;Ljava/io/OutputStream;JJLcom/inca/security/k;)V
    .locals 7
    .param p1, "arg0"    # Ljava/io/InputStream;
    .param p2, "arg1"    # Ljava/io/OutputStream;
    .param p3, "arg2"    # J
    .param p5, "arg3"    # J
    .param p7, "arg4"    # Lcom/inca/security/k;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1231
    iput-boolean v1, p0, Lcom/inca/security/y;->IIIiIiiiII:Z

    .line 785
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/inca/security/y;->IiiiIIIIii(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V

    .end local p0    # "this":Lcom/inca/security/y;
    :cond_0
    move-object v0, p0

    .line 555
    .local v0, "this":Lcom/inca/security/y;
    :goto_0
    iget-object v1, p0, Lcom/inca/security/y;->iiIiIIIiiI:[J

    iget-object v2, p0, Lcom/inca/security/y;->IiIiIIIiIi:[J

    iget-object v3, p0, Lcom/inca/security/y;->IIiIiIIIii:[Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/inca/security/y;->IiiiIIIIii([J[J[Z)V

    .line 970
    iget-object v1, p0, Lcom/inca/security/y;->IIiIiIIIii:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/inca/security/y;->IiIiiIiiII()V

    .line 759
    return-void

    .line 1165
    :cond_1
    if-eqz p7, :cond_0

    .line 937
    :try_start_1
    iget-object v1, p0, Lcom/inca/security/y;->iiIiIIIiiI:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    iget-object v1, p0, Lcom/inca/security/y;->IiIiIIIiIi:[J

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-interface {p7, v2, v3, v4, v5}, Lcom/inca/security/k;->IiiiIIIIii(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    goto :goto_0

    .line 556
    .end local v0    # "this":Lcom/inca/security/y;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/inca/security/y;->IiIiiIiiII()V

    throw v1
.end method

.method public IiiiIIIIii(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "arg0"    # Ljava/io/OutputStream;

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    invoke-virtual {v0, p1}, Lcom/inca/security/u;->IiiiIIIIii(Ljava/io/OutputStream;)V

    return-void
.end method

.method public IiiiIIIIii(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/inca/security/y;->IiiIiiiIiI:Z

    .line 268
    return-void
.end method

.method public IiiiIIIIii([J[J[Z)V
    .locals 11
    .param p1, "arg0"    # [J
    .param p2, "arg1"    # [J
    .param p3, "arg2"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 619
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, p1, v2

    .line 1128
    const-wide/16 v2, 0x0

    aput-wide v2, p2, v1

    .line 740
    const/4 v2, 0x1

    aput-boolean v2, p3, v1

    .line 741
    iget-object v1, p0, Lcom/inca/security/y;->iIIiIiIIII:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 641
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    iget-object v4, p0, Lcom/inca/security/y;->iIIiIiIIII:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Lcom/inca/security/h;->IiiiIIIIii(Ljava/io/InputStream;)V

    .line 683
    iget-object v3, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    invoke-virtual {v3}, Lcom/inca/security/h;->IiIIIIIIIi()V

    .line 952
    iput-boolean v2, p0, Lcom/inca/security/y;->IIIiIiiiII:Z

    .line 1418
    iput-object v1, p0, Lcom/inca/security/y;->iIIiIiIIII:Ljava/io/InputStream;

    .line 1536
    :cond_0
    iget-boolean v1, p0, Lcom/inca/security/y;->iiIIIIIiiI:Z

    if-eqz v1, :cond_1

    .line 1302
    .end local p0    # "this":Lcom/inca/security/y;
    :goto_0
    return-void

    .line 854
    .restart local p0    # "this":Lcom/inca/security/y;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inca/security/y;->iiIIIIIiiI:Z

    .line 1379
    iget-wide v6, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    .line 942
    iget-wide v2, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 562
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    invoke-virtual {v1}, Lcom/inca/security/h;->IiiiIIIIii()I

    move-result v1

    if-nez v1, :cond_2

    .line 702
    iget-wide v2, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/inca/security/y;->iIiIIiIIIi(I)V

    goto :goto_0

    .line 893
    :cond_2
    invoke-virtual {p0}, Lcom/inca/security/y;->IiiiIIIIii()I

    .line 1054
    iget-wide v2, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    long-to-int v1, v2

    iget v2, p0, Lcom/inca/security/y;->IIIiIIiIIi:I

    and-int/2addr v1, v2

    .line 1205
    iget-object v2, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v3, p0, Lcom/inca/security/y;->IIIiiIIiii:[S

    iget v4, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v1, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 790
    iget v1, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    invoke-static {v1}, Lcom/inca/security/b;->iIiIIiIIIi(I)I

    move-result v1

    iput v1, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    .line 1228
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    iget v2, p0, Lcom/inca/security/y;->IiiiiIiiIi:I

    rsub-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v1

    .line 1488
    iget-object v2, p0, Lcom/inca/security/y;->IIiiiiiIIi:Lcom/inca/security/f;

    iget-wide v4, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    long-to-int v3, v4

    iget-byte v4, p0, Lcom/inca/security/y;->iIIIIIiIII:B

    invoke-virtual {v2, v3, v4}, Lcom/inca/security/f;->IiiiIIIIii(IB)Lcom/inca/security/z;

    move-result-object v2

    iget-object v3, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    invoke-virtual {v2, v3, v1}, Lcom/inca/security/z;->IiiiIIIIii(Lcom/inca/security/u;B)V

    .line 922
    iput-byte v1, p0, Lcom/inca/security/y;->iIIIIIiIII:B

    .line 1460
    iget v1, p0, Lcom/inca/security/y;->IiiiiIiiIi:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/inca/security/y;->IiiiiIiiIi:I

    .line 826
    iget-wide v2, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    .line 1211
    :cond_3
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    invoke-virtual {v1}, Lcom/inca/security/h;->IiiiIIIIii()I

    move-result v1

    if-nez v1, :cond_4

    .line 1053
    iget-wide v2, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/inca/security/y;->iIiIIiIIIi(I)V

    goto :goto_0

    .line 601
    .end local p0    # "this":Lcom/inca/security/y;
    :cond_4
    iget-wide v2, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/inca/security/y;->iIiIIiIIIi(I)I

    move-result v4

    .line 1003
    iget v1, p0, Lcom/inca/security/y;->IIiiiIIiII:I

    .line 1442
    iget-wide v2, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    long-to-int v2, v2

    iget v3, p0, Lcom/inca/security/y;->IIIiIIiIIi:I

    and-int/2addr v3, v2

    .line 1521
    iget v2, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    .line 1517
    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    const/4 v5, -0x1

    if-ne v1, v5, :cond_8

    .line 1221
    iget-object v1, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v3, p0, Lcom/inca/security/y;->IIIiiIIiii:[S

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v5}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 732
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    iget v2, p0, Lcom/inca/security/y;->IiiiiIiiIi:I

    rsub-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v1

    .line 1581
    iget-object v2, p0, Lcom/inca/security/y;->IIiiiiiIIi:Lcom/inca/security/f;

    iget-wide v8, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    long-to-int v3, v8

    iget-byte v5, p0, Lcom/inca/security/y;->iIIIIIiIII:B

    invoke-virtual {v2, v3, v5}, Lcom/inca/security/f;->IiiiIIIIii(IB)Lcom/inca/security/z;

    move-result-object v2

    .line 1102
    iget v3, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    invoke-static {v3}, Lcom/inca/security/b;->IiiiIIIIii(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 670
    iget-object v3, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    iget-object v5, p0, Lcom/inca/security/y;->IIIiIIIiiI:[I

    const/4 v8, 0x0

    aget v5, v5, v8

    rsub-int/lit8 v5, v5, 0x0

    add-int/lit8 v5, v5, -0x1

    iget v8, p0, Lcom/inca/security/y;->IiiiiIiiIi:I

    sub-int/2addr v5, v8

    invoke-virtual {v3, v5}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v3

    .line 633
    iget-object v5, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    invoke-virtual {v2, v5, v3, v1}, Lcom/inca/security/z;->IiiiIIIIii(Lcom/inca/security/u;BB)V

    move-object v0, p0

    .line 968
    .local v0, "this":Lcom/inca/security/y;
    :goto_1
    iput-byte v1, v0, Lcom/inca/security/y;->iIIIIIiIII:B

    .line 1105
    iget v1, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    invoke-static {v1}, Lcom/inca/security/b;->iIiIIiIIIi(I)I

    move-result v1

    iput v1, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    move-object v0, p0

    .line 1181
    :goto_2
    iget v1, v0, Lcom/inca/security/y;->IiiiiIiiIi:I

    sub-int/2addr v1, v4

    iput v1, v0, Lcom/inca/security/y;->IiiiiIiiIi:I

    .line 1096
    iget-wide v2, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    .line 1376
    iget v1, p0, Lcom/inca/security/y;->IiiiiIiiIi:I

    if-nez v1, :cond_4

    .line 1389
    iget v1, p0, Lcom/inca/security/y;->iiiiIIIiii:I

    const/16 v2, 0x80

    if-lt v1, v2, :cond_5

    .line 620
    invoke-virtual {p0}, Lcom/inca/security/y;->iiiiiiiIii()V

    .line 1285
    :cond_5
    iget v1, p0, Lcom/inca/security/y;->iiIiIIIiii:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_6

    .line 1245
    invoke-virtual {p0}, Lcom/inca/security/y;->IIiIIiIiIi()V

    .line 1169
    :cond_6
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    aput-wide v2, p1, v1

    .line 1006
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    invoke-virtual {v2}, Lcom/inca/security/u;->IiiiIIIIii()J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 751
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    invoke-virtual {v1}, Lcom/inca/security/h;->IiiiIIIIii()I

    move-result v1

    if-nez v1, :cond_13

    .line 874
    iget-wide v2, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/inca/security/y;->iIiIIiIIIi(I)V

    goto/16 :goto_0

    .line 1100
    .end local v0    # "this":Lcom/inca/security/y;
    :cond_7
    iget-object v3, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    invoke-virtual {v2, v3, v1}, Lcom/inca/security/z;->IiiiIIIIii(Lcom/inca/security/u;B)V

    move-object v0, p0

    .line 968
    .restart local v0    # "this":Lcom/inca/security/y;
    goto :goto_1

    .line 657
    .end local v0    # "this":Lcom/inca/security/y;
    :cond_8
    iget-object v5, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v8, p0, Lcom/inca/security/y;->IIIiiIIiii:[S

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v2, v9}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 806
    const/4 v5, 0x4

    if-ge v1, v5, :cond_f

    .line 1506
    iget-object v5, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v8, p0, Lcom/inca/security/y;->IiiIiIIiIi:[S

    iget v9, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v9, v10}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 644
    if-nez v1, :cond_a

    .line 919
    iget-object v5, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v8, p0, Lcom/inca/security/y;->IiiiiIIIIi:[S

    iget v9, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 1381
    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 1454
    iget-object v5, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v8, p0, Lcom/inca/security/y;->IiIIIiIIIi:[S

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v2, v9}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    move v2, v4

    .line 582
    :goto_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    .line 808
    iget v2, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    invoke-static {v2}, Lcom/inca/security/b;->IiiiIIIIii(I)I

    move-result v2

    iput v2, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    move-object v0, p0

    .line 857
    .restart local v0    # "this":Lcom/inca/security/y;
    :goto_4
    iget-object v2, v0, Lcom/inca/security/y;->IIIiIIIiiI:[I

    aget v3, v2, v1

    .line 1120
    if-eqz v1, :cond_e

    move v2, v1

    .line 907
    :goto_5
    const/4 v5, 0x1

    if-lt v1, v5, :cond_d

    .line 1405
    iget-object v5, p0, Lcom/inca/security/y;->IIIiIIIiiI:[I

    iget-object v1, p0, Lcom/inca/security/y;->IIIiIIIiiI:[I

    add-int/lit8 v8, v2, -0x1

    aget v8, v1, v8

    add-int/lit8 v1, v2, -0x1

    aput v8, v5, v2

    move v2, v1

    .line 907
    goto :goto_5

    .line 1472
    .end local v0    # "this":Lcom/inca/security/y;
    :cond_9
    iget-object v5, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v8, p0, Lcom/inca/security/y;->IiIIIiIIIi:[S

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v2, v9}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    move v2, v4

    goto :goto_3

    .line 502
    :cond_a
    iget-object v2, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v5, p0, Lcom/inca/security/y;->IiiiiIIIIi:[S

    iget v8, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    const/4 v9, 0x1

    invoke-virtual {v2, v5, v8, v9}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 1411
    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 1117
    iget-object v2, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v5, p0, Lcom/inca/security/y;->iIIIiiIIIi:[S

    iget v8, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v8, v9}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    move v2, v4

    goto :goto_3

    .line 550
    :cond_b
    iget-object v2, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v5, p0, Lcom/inca/security/y;->iIIIiiIIIi:[S

    iget v8, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    const/4 v9, 0x1

    invoke-virtual {v2, v5, v8, v9}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 1114
    iget-object v2, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v5, p0, Lcom/inca/security/y;->IIiiIiIIii:[S

    iget v8, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    add-int/lit8 v9, v1, -0x2

    invoke-virtual {v2, v5, v8, v9}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    move v2, v4

    .line 582
    goto :goto_3

    .line 812
    :cond_c
    iget-object v2, p0, Lcom/inca/security/y;->IiiIiIIiiI:Lcom/inca/security/aa;

    iget-object v5, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    add-int/lit8 v8, v4, -0x2

    invoke-virtual {v2, v5, v8, v3}, Lcom/inca/security/aa;->IiiiIIIIii(Lcom/inca/security/u;II)V

    .line 992
    iget v2, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    invoke-static {v2}, Lcom/inca/security/b;->IiIiiIiiII(I)I

    move-result v2

    iput v2, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    move-object v0, p0

    .restart local v0    # "this":Lcom/inca/security/y;
    goto :goto_4

    .line 495
    :cond_d
    iget-object v1, p0, Lcom/inca/security/y;->IIIiIIIiiI:[I

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 879
    .end local v0    # "this":Lcom/inca/security/y;
    :cond_e
    :goto_6
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    add-int/lit8 v2, v4, -0x1

    iget v3, p0, Lcom/inca/security/y;->IiiiiIiiIi:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v1

    iput-byte v1, p0, Lcom/inca/security/y;->iIIIIIiIII:B

    move-object v0, p0

    .restart local v0    # "this":Lcom/inca/security/y;
    goto/16 :goto_2

    .line 1214
    .end local v0    # "this":Lcom/inca/security/y;
    :cond_f
    iget-object v2, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    iget-object v5, p0, Lcom/inca/security/y;->IiiIiIIiIi:[S

    iget v8, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v8, v9}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 1252
    iget v2, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    invoke-static {v2}, Lcom/inca/security/b;->iiiiiiiIii(I)I

    move-result v2

    iput v2, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    .line 800
    iget-object v2, p0, Lcom/inca/security/y;->iiiIIIIiII:Lcom/inca/security/aa;

    iget-object v5, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    .line 1149
    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v8, v4, -0x2

    invoke-virtual {v2, v5, v8, v3}, Lcom/inca/security/aa;->IiiiIIIIii(Lcom/inca/security/u;II)V

    .line 1388
    invoke-static {v1}, Lcom/inca/security/y;->IiiiIIIIii(I)I

    move-result v2

    .line 1505
    invoke-static {v4}, Lcom/inca/security/b;->IIiIIiIiIi(I)I

    move-result v3

    .line 1043
    iget-object v5, p0, Lcom/inca/security/y;->IIIiIIiiii:[Lcom/inca/security/a;

    aget-object v3, v5, v3

    iget-object v5, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    invoke-virtual {v3, v5, v2}, Lcom/inca/security/a;->iIiIIiIIIi(Lcom/inca/security/u;I)V

    .line 1287
    const/4 v3, 0x4

    if-lt v2, v3, :cond_10

    .line 1280
    shr-int/lit8 v3, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    .line 817
    and-int/lit8 v5, v2, 0x1

    or-int/lit8 v5, v5, 0x2

    shl-int/2addr v5, v3

    .line 1251
    sub-int v8, v1, v5

    .line 696
    const/16 v9, 0xe

    if-ge v2, v9, :cond_11

    .line 1584
    iget-object v9, p0, Lcom/inca/security/y;->iiIIiiiiii:[S

    sub-int v2, v5, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v5, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    invoke-static {v9, v2, v5, v3, v8}, Lcom/inca/security/a;->IiiiIIIIii([SILcom/inca/security/u;II)V

    .line 1073
    :cond_10
    :goto_7
    const/4 v2, 0x3

    move v3, v2

    :goto_8
    const/4 v5, 0x1

    if-lt v2, v5, :cond_12

    .line 1544
    iget-object v5, p0, Lcom/inca/security/y;->IIIiIIIiiI:[I

    iget-object v2, p0, Lcom/inca/security/y;->IIIiIIIiiI:[I

    add-int/lit8 v8, v3, -0x1

    aget v8, v2, v8

    add-int/lit8 v2, v3, -0x1

    aput v8, v5, v3

    move v3, v2

    .line 1073
    goto :goto_8

    .line 935
    :cond_11
    iget-object v2, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    shr-int/lit8 v5, v8, 0x4

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v5, v3}, Lcom/inca/security/u;->IiiiIIIIii(II)V

    .line 1469
    iget-object v2, p0, Lcom/inca/security/y;->IIIiiiiIII:Lcom/inca/security/a;

    iget-object v3, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    and-int/lit8 v5, v8, 0xf

    invoke-virtual {v2, v3, v5}, Lcom/inca/security/a;->IiiiIIIIii(Lcom/inca/security/u;I)V

    .line 1437
    iget v2, p0, Lcom/inca/security/y;->iiIiIIIiii:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/inca/security/y;->iiIiIIIiii:I

    goto :goto_7

    .line 853
    :cond_12
    iget-object v2, p0, Lcom/inca/security/y;->IIIiIIIiiI:[I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 973
    iget v1, p0, Lcom/inca/security/y;->iiiiIIIiii:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inca/security/y;->iiiiIIIiii:I

    goto/16 :goto_6

    .line 679
    .restart local v0    # "this":Lcom/inca/security/y;
    :cond_13
    iget-wide v2, p0, Lcom/inca/security/y;->IIIiIiiiii:J

    sub-long/2addr v2, v6

    const-wide/16 v4, 0x1000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    .line 1347
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/inca/security/y;->iiIIIIIiiI:Z

    .line 861
    const/4 v2, 0x0

    aput-boolean v2, p3, v1

    goto/16 :goto_0
.end method

.method public IiiiIIIIii(I)Z
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 1573
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 1426
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1321
    :cond_1
    iget v0, p0, Lcom/inca/security/y;->iiiIIIiiII:I

    .line 1192
    iput p1, p0, Lcom/inca/security/y;->iiiIIIiiII:I

    .line 1462
    iget-object v1, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/inca/security/y;->iiiIIIiiII:I

    if-eq v0, v1, :cond_2

    .line 747
    const/4 v0, 0x0

    const/4 v1, -0x1

    iput v1, p0, Lcom/inca/security/y;->iiiIiiiiII:I

    .line 1118
    iput-object v0, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    .line 796
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public IiiiIIIIii(II)Z
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 1067
    const/4 v0, 0x7

    .line 1369
    const/high16 v1, 0x2000000

    if-ge p1, v1, :cond_0

    shl-int v0, p1, v0

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IiiiIIIIii(III)Z
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 916
    if-ltz p2, :cond_0

    if-gt p2, v2, :cond_0

    if-ltz p1, :cond_0

    const/16 v1, 0x8

    if-gt p1, v1, :cond_0

    if-ltz p3, :cond_0

    if-le p3, v2, :cond_1

    .line 685
    :cond_0
    const/4 v0, 0x0

    .line 769
    :goto_0
    return v0

    .line 1022
    :cond_1
    iput p2, p0, Lcom/inca/security/y;->IIiIIIIiIi:I

    .line 729
    iput p1, p0, Lcom/inca/security/y;->iiIIiIIiII:I

    .line 799
    iput p3, p0, Lcom/inca/security/y;->IIiIIiiiiI:I

    .line 774
    iget v1, p0, Lcom/inca/security/y;->IIiIIiiiiI:I

    shl-int v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/inca/security/y;->IIIiIIiIIi:I

    goto :goto_0
.end method

.method public iIiIIiIIIi(I)I
    .locals 27
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1159
    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/y;->IiIIiIIIIi:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/inca/security/y;->iIIIiIiiii:I

    if-eq v5, v6, :cond_0

    .line 930
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/inca/security/y;->iIIIiIiiii:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/inca/security/d;->IIIiiiiIII:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/inca/security/y;->iIIIiIiiii:I

    sub-int/2addr v5, v6

    .line 1512
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/inca/security/y;->iIIIiIiiii:I

    aget-object v6, v6, v7

    iget v6, v6, Lcom/inca/security/d;->iiIIIiiiiI:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/inca/security/y;->IIiiiIIiII:I

    .line 1447
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/inca/security/y;->iIIIiIiiii:I

    aget-object v6, v6, v7

    iget v6, v6, Lcom/inca/security/d;->IIIiiiiIII:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/inca/security/y;->iIIIiIiiii:I

    .line 1464
    .end local p0    # "this":Lcom/inca/security/y;
    :goto_0
    return v5

    .line 881
    .restart local p0    # "this":Lcom/inca/security/y;
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/inca/security/y;->IiIIiIIIIi:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/inca/security/y;->iIIIiIiiii:I

    .line 1224
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/inca/security/y;->IiIIIIIiII:Z

    if-nez v5, :cond_1

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/inca/security/y;->IiiiIIIIii()I

    move-result v5

    move-object/from16 v4, p0

    .line 1161
    .end local p0    # "this":Lcom/inca/security/y;
    .local v4, "this":Lcom/inca/security/y;
    :goto_1
    iget v10, v4, Lcom/inca/security/y;->IiiIiIIiII:I

    .line 779
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    invoke-virtual {v6}, Lcom/inca/security/h;->IiiiIIIIii()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 977
    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    const/4 v5, 0x1

    .line 875
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/inca/security/y;->IIiiiIIiII:I

    goto :goto_0

    .line 925
    .end local v4    # "this":Lcom/inca/security/y;
    .restart local p0    # "this":Lcom/inca/security/y;
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/y;->iIiiiiiIIi:I

    .line 541
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/inca/security/y;->IiIIIIIiII:Z

    move-object/from16 v4, p0

    .end local p0    # "this":Lcom/inca/security/y;
    .restart local v4    # "this":Lcom/inca/security/y;
    goto :goto_1

    .line 1349
    :cond_2
    const/16 v7, 0x111

    if-le v6, v7, :cond_3

    .line 939
    :cond_3
    const/4 v7, 0x0

    .line 787
    const/4 v6, 0x0

    move v8, v6

    move/from16 v26, v6

    move v6, v7

    move/from16 v7, v26

    :goto_2
    const/4 v9, 0x4

    if-ge v8, v9, :cond_5

    .line 1478
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/y;->IIIiIIIiiI:[I

    aget v9, v9, v7

    aput v9, v8, v7

    .line 771
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->iiIIiIiIii:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    aget v12, v12, v7

    const/16 v13, 0x111

    invoke-virtual {v9, v11, v12, v13}, Lcom/inca/security/h;->IiiiIIIIii(III)I

    move-result v9

    aput v9, v8, v7

    .line 1494
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->iiIIiIiIii:[I

    aget v8, v8, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/y;->iiIIiIiIii:[I

    aget v9, v9, v6

    if-le v8, v9, :cond_4

    move v6, v7

    .line 787
    :cond_4
    add-int/lit8 v7, v7, 0x1

    move v8, v7

    goto :goto_2

    .line 527
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->iiIIiIiIii:[I

    aget v7, v7, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/inca/security/y;->iiiIiIIIII:I

    if-lt v7, v8, :cond_6

    .line 1555
    move-object/from16 v0, p0

    iput v6, v0, Lcom/inca/security/y;->IIiiiIIiII:I

    .line 951
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiIIiIiIii:[I

    aget v5, v5, v6

    .line 1157
    add-int/lit8 v6, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/inca/security/y;->IIiIIiIiIi(I)V

    goto/16 :goto_0

    .line 1404
    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/inca/security/y;->iiiIiIIIII:I

    if-lt v5, v7, :cond_7

    .line 1109
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->IiiIIIIIii:[I

    add-int/lit8 v7, v10, -0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, 0x4

    move-object/from16 v0, p0

    iput v6, v0, Lcom/inca/security/y;->IIiiiIIiII:I

    .line 1434
    add-int/lit8 v6, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/inca/security/y;->IIiIIiIiIi(I)V

    goto/16 :goto_0

    .line 653
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v11

    .line 1138
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->IIIiIIIiiI:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    rsub-int/lit8 v8, v8, 0x0

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v8

    .line 721
    const/4 v7, 0x2

    if-ge v5, v7, :cond_8

    if-eq v11, v8, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->iiIIiIiIii:[I

    aget v7, v7, v6

    const/4 v9, 0x2

    if-ge v7, v9, :cond_8

    const/4 v5, 0x1

    .line 1361
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/inca/security/y;->IIiiiIIiII:I

    goto/16 :goto_0

    .line 915
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    const/4 v9, 0x0

    aget-object v7, v7, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/inca/security/y;->IiIIIIiIIi:I

    iput v9, v7, Lcom/inca/security/d;->IiIiIIIiIi:I

    .line 845
    move-object/from16 v0, p0

    iget v7, v0, Lcom/inca/security/y;->IIIiIIiIIi:I

    and-int v12, p1, v7

    .line 1377
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    const/4 v9, 0x1

    aget-object v13, v7, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IIIiiIIiii:[S

    move-object/from16 v0, p0

    iget v9, v0, Lcom/inca/security/y;->IiIIIIiIIi:I

    shl-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v12

    aget-short v7, v7, v9

    invoke-static {v7}, Lcom/inca/security/u;->IiiiIIIIii(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IIiiiiiIIi:Lcom/inca/security/f;

    move-object/from16 v0, p0

    iget-byte v9, v0, Lcom/inca/security/y;->iIIIIIiIII:B

    .line 1150
    move/from16 v0, p1

    invoke-virtual {v7, v0, v9}, Lcom/inca/security/f;->IiiiIIIIii(IB)Lcom/inca/security/z;

    move-result-object v15

    move-object/from16 v0, p0

    iget v7, v0, Lcom/inca/security/y;->IiIIIIiIIi:I

    invoke-static {v7}, Lcom/inca/security/b;->IiiiIIIIii(I)Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v7, 0x1

    move v9, v7

    move v7, v8

    :goto_3
    invoke-virtual {v15, v9, v7, v11}, Lcom/inca/security/z;->IiiiIIIIii(ZBB)I

    move-result v7

    add-int/2addr v7, v14

    iput v7, v13, Lcom/inca/security/d;->IiIiIiiIii:I

    .line 622
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/inca/security/d;->IiiiIIIIii()V

    .line 1518
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IIIiiIIiii:[S

    move-object/from16 v0, p0

    iget v9, v0, Lcom/inca/security/y;->IiIIIIiIIi:I

    shl-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v12

    aget-short v7, v7, v9

    invoke-static {v7}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v9

    .line 1432
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiIiIIiIi:[S

    move-object/from16 v0, p0

    iget v13, v0, Lcom/inca/security/y;->IiIIIIiIIi:I

    aget-short v7, v7, v13

    invoke-static {v7}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v7

    add-int v13, v9, v7

    .line 846
    if-ne v8, v11, :cond_9

    .line 1342
    move-object/from16 v0, p0

    iget v7, v0, Lcom/inca/security/y;->IiIIIIiIIi:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12}, Lcom/inca/security/y;->IiiiIIIIii(II)I

    move-result v7

    add-int/2addr v7, v13

    .line 837
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    const/4 v11, 0x1

    aget-object v8, v8, v11

    iget v8, v8, Lcom/inca/security/d;->IiIiIiiIii:I

    if-ge v7, v8, :cond_9

    .line 1141
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    const/4 v11, 0x1

    aget-object v8, v8, v11

    iput v7, v8, Lcom/inca/security/d;->IiIiIiiIii:I

    .line 523
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/inca/security/d;->iIiIIiIIIi()V

    .line 1075
    :cond_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->iiIIiIiIii:[I

    aget v7, v7, v6

    if-lt v5, v7, :cond_b

    move v7, v5

    .line 672
    :goto_4
    const/4 v6, 0x2

    if-ge v7, v6, :cond_c

    .line 667
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    const/4 v5, 0x1

    aget-object v6, v6, v5

    iget v6, v6, Lcom/inca/security/d;->iiIIIiiiiI:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/inca/security/y;->IIiiiIIiII:I

    goto/16 :goto_0

    .line 1150
    :cond_a
    const/4 v7, 0x0

    move v9, v7

    move v7, v8

    goto :goto_3

    .line 1075
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->iiIIiIiIii:[I

    aget v7, v7, v6

    goto :goto_4

    .line 1194
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    const/4 v8, 0x1

    aget-object v6, v6, v8

    const/4 v8, 0x0

    iput v8, v6, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 712
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v11, 0x0

    aget v8, v8, v11

    iput v8, v6, Lcom/inca/security/d;->IIiiIiIIii:I

    .line 561
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v11, 0x1

    aget v8, v8, v11

    iput v8, v6, Lcom/inca/security/d;->iiIiIIIiiI:I

    .line 1338
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v11, 0x2

    aget v8, v8, v11

    iput v8, v6, Lcom/inca/security/d;->iiiiIIIiii:I

    .line 623
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v11, 0x3

    aget v8, v8, v11

    iput v8, v6, Lcom/inca/security/d;->IiiiiIiiIi:I

    move v6, v7

    .line 880
    :cond_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v8, v8, v6

    const v11, 0xfffffff

    iput v11, v8, Lcom/inca/security/d;->IiIiIiiIii:I

    add-int/lit8 v6, v6, -0x1

    .line 1059
    const/4 v8, 0x2

    if-ge v6, v8, :cond_d

    .line 748
    const/4 v6, 0x0

    move v8, v6

    :goto_5
    const/4 v11, 0x4

    if-ge v6, v11, :cond_11

    .line 1184
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->iiIIiIiIii:[I

    aget v6, v6, v8

    .line 569
    const/4 v11, 0x2

    if-ge v6, v11, :cond_e

    .line 748
    :goto_6
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_5

    .line 500
    :cond_e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/inca/security/y;->IiIIIIiIIi:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11, v12}, Lcom/inca/security/y;->iIiIIiIIIi(III)I

    move-result v11

    add-int/2addr v11, v13

    .line 687
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inca/security/y;->IiiIiIIiiI:Lcom/inca/security/aa;

    add-int/lit8 v15, v6, -0x2

    invoke-virtual {v14, v15, v12}, Lcom/inca/security/aa;->IiiiIIIIii(II)I

    move-result v14

    add-int/2addr v14, v11

    .line 647
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v15, v15, v6

    .line 1292
    iget v0, v15, Lcom/inca/security/d;->IiIiIiiIii:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v14, v0, :cond_10

    .line 926
    const/16 v16, 0x0

    const/16 v17, 0x0

    iput v14, v15, Lcom/inca/security/d;->IiIiIiiIii:I

    .line 1443
    move/from16 v0, v17

    iput v0, v15, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 603
    iput v8, v15, Lcom/inca/security/d;->iiIIIiiiiI:I

    .line 1329
    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/inca/security/d;->iiIIIIIiiI:Z

    .line 969
    :cond_10
    add-int/lit8 v6, v6, -0x1

    const/4 v14, 0x2

    if-ge v6, v14, :cond_f

    goto :goto_6

    .line 775
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->IiiIiIIiIi:[S

    move-object/from16 v0, p0

    iget v8, v0, Lcom/inca/security/y;->IiIIIIiIIi:I

    aget-short v6, v6, v8

    invoke-static {v6}, Lcom/inca/security/u;->IiiiIIIIii(I)I

    move-result v6

    add-int/2addr v9, v6

    .line 526
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->iiIIiIiIii:[I

    const/4 v8, 0x0

    aget v6, v6, v8

    const/4 v8, 0x2

    if-lt v6, v8, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->iiIIiIiIii:[I

    const/4 v8, 0x0

    aget v6, v6, v8

    add-int/lit8 v6, v6, 0x1

    .line 984
    :goto_7
    if-gt v6, v5, :cond_15

    .line 1353
    const/4 v5, 0x0

    move v8, v5

    move v5, v6

    .line 547
    :goto_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/inca/security/y;->IiiIIIIIii:[I

    aget v11, v11, v8

    if-le v5, v11, :cond_13

    .line 956
    add-int/lit8 v5, v8, 0x2

    move v8, v5

    move v5, v6

    goto :goto_8

    .line 526
    :cond_12
    const/4 v6, 0x2

    goto :goto_7

    :cond_13
    move-object/from16 v4, p0

    .line 663
    :goto_9
    iget-object v5, v4, Lcom/inca/security/y;->IiiIIIIIii:[I

    add-int/lit8 v11, v8, 0x1

    aget v5, v5, v11

    .line 730
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v12}, Lcom/inca/security/y;->IiiiIIIIii(III)I

    move-result v11

    add-int/2addr v11, v9

    .line 513
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v13, v13, v6

    .line 615
    iget v14, v13, Lcom/inca/security/d;->IiIiIiiIii:I

    if-ge v11, v14, :cond_14

    .line 909
    const/4 v14, 0x0

    const/4 v15, 0x0

    iput v11, v13, Lcom/inca/security/d;->IiIiIiiIii:I

    .line 866
    iput v15, v13, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 1225
    add-int/lit8 v5, v5, 0x4

    iput v5, v13, Lcom/inca/security/d;->iiIIIiiiiI:I

    .line 505
    iput-boolean v14, v13, Lcom/inca/security/d;->iiIIIIIiiI:Z

    .line 829
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiIIIIIii:[I

    aget v5, v5, v8

    if-ne v6, v5, :cond_16

    .line 563
    add-int/lit8 v8, v8, 0x2

    .line 1180
    if-ne v8, v10, :cond_16

    .line 564
    :cond_15
    const/4 v5, 0x0

    move v9, v7

    .line 804
    :goto_a
    add-int/lit8 v16, v5, 0x1

    .line 704
    move/from16 v0, v16

    if-ne v0, v9, :cond_17

    .line 573
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/inca/security/y;->IIiIIiIiIi(I)I

    move-result v5

    goto/16 :goto_0

    .line 1155
    :cond_16
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, p0

    goto :goto_9

    .line 892
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/inca/security/y;->IiiiIIIIii()I

    move-result v11

    .line 1163
    move-object/from16 v0, p0

    iget v12, v0, Lcom/inca/security/y;->IiiIiIIiII:I

    .line 1172
    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/y;->iiiIiIIIII:I

    if-lt v11, v5, :cond_18

    .line 1115
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/inca/security/y;->iIiiiiiIIi:I

    .line 1571
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/inca/security/y;->IiIIIIIiII:Z

    .line 684
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/inca/security/y;->IIiIIiIiIi(I)I

    move-result v5

    goto/16 :goto_0

    .line 795
    :cond_18
    add-int/lit8 p1, p1, 0x1

    .line 842
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v16

    iget v5, v5, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 1129
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v6, v6, v16

    iget-boolean v6, v6, Lcom/inca/security/d;->iiIIIIIiiI:Z

    if-eqz v6, :cond_1e

    .line 896
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    .line 1213
    add-int/lit8 v6, v5, -0x1

    aget-object v5, v7, v16

    iget-boolean v5, v5, Lcom/inca/security/d;->IIiIIIIIii:Z

    if-eqz v5, :cond_1d

    .line 1243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v7, v7, v16

    iget v7, v7, Lcom/inca/security/d;->IIiIiIIIii:I

    aget-object v5, v5, v7

    iget v5, v5, Lcom/inca/security/d;->IiIiIIIiIi:I

    .line 1336
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v7, v7, v16

    iget v7, v7, Lcom/inca/security/d;->IiiIiiiIiI:I

    const/4 v8, 0x4

    if-ge v7, v8, :cond_1c

    .line 557
    invoke-static {v5}, Lcom/inca/security/b;->IiIiiIiiII(I)I

    move-result v5

    .line 675
    :goto_b
    invoke-static {v5}, Lcom/inca/security/b;->iIiIIiIIIi(I)I

    move-result v5

    move v7, v6

    move/from16 v26, v5

    move v5, v6

    move/from16 v6, v26

    .line 1047
    :goto_c
    add-int/lit8 v8, v16, -0x1

    if-ne v5, v8, :cond_20

    .line 999
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v16

    invoke-virtual {v5}, Lcom/inca/security/d;->IiiiIIIIii()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 987
    invoke-static {v6}, Lcom/inca/security/b;->IiiiIIIIii(I)I

    move-result v6

    move-object/from16 v4, p0

    .line 1414
    :goto_d
    iget-object v5, v4, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v16

    iput v6, v5, Lcom/inca/security/d;->IiIiIIIiIi:I

    .line 1131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v16

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iput v7, v5, Lcom/inca/security/d;->IIiiIiIIii:I

    .line 1152
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v16

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iput v7, v5, Lcom/inca/security/d;->iiIiIIIiiI:I

    .line 666
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v16

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    iput v7, v5, Lcom/inca/security/d;->iiiiIIIiii:I

    .line 1275
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v16

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    iput v7, v5, Lcom/inca/security/d;->IiiiiIiiIi:I

    .line 852
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v16

    iget v10, v5, Lcom/inca/security/d;->IiIiIiiIii:I

    .line 1051
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v13

    .line 1343
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    rsub-int/lit8 v7, v7, 0x0

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v7

    .line 1516
    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/y;->IIIiIIiIIi:I

    and-int v17, p1, v5

    .line 1318
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IIIiiIIiii:[S

    shl-int/lit8 v8, v6, 0x4

    add-int v8, v8, v17

    aget-short v5, v5, v8

    .line 1068
    invoke-static {v5}, Lcom/inca/security/u;->IiiiIIIIii(I)I

    move-result v5

    add-int v14, v10, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IIiiiiiIIi:Lcom/inca/security/f;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    const/4 v15, -0x2

    .line 1171
    invoke-virtual {v8, v15}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v8

    move/from16 v0, p1

    invoke-virtual {v5, v0, v8}, Lcom/inca/security/f;->IiiiIIIIii(IB)Lcom/inca/security/z;

    move-result-object v15

    .line 902
    invoke-static {v6}, Lcom/inca/security/b;->IiiiIIIIii(I)Z

    move-result v5

    if-nez v5, :cond_27

    const/4 v5, 0x1

    move v8, v5

    move v5, v7

    :goto_e
    invoke-virtual {v15, v8, v5, v13}, Lcom/inca/security/z;->IiiiIIIIii(ZBB)I

    move-result v5

    add-int v8, v14, v5

    .line 697
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    add-int/lit8 v14, v16, 0x1

    aget-object v14, v5, v14

    .line 1264
    const/4 v5, 0x0

    .line 1367
    iget v15, v14, Lcom/inca/security/d;->IiIiIiiIii:I

    if-ge v8, v15, :cond_19

    const/4 v5, 0x1

    .line 1056
    iput v8, v14, Lcom/inca/security/d;->IiIiIiiIii:I

    .line 828
    move/from16 v0, v16

    iput v0, v14, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 998
    invoke-virtual {v14}, Lcom/inca/security/d;->IiiiIIIIii()V

    .line 600
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/inca/security/y;->IIIiiIIiii:[S

    shl-int/lit8 v18, v6, 0x4

    add-int v18, v18, v17

    aget-short v15, v15, v18

    invoke-static {v15}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v15

    add-int v18, v10, v15

    .line 1453
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/inca/security/y;->IiiIiIIiIi:[S

    aget-short v10, v10, v6

    invoke-static {v10}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v10

    add-int v19, v18, v10

    .line 938
    if-ne v7, v13, :cond_1b

    iget v10, v14, Lcom/inca/security/d;->IIIiiiiIII:I

    move/from16 v0, v16

    if-ge v10, v0, :cond_1a

    iget v10, v14, Lcom/inca/security/d;->iiIIIiiiiI:I

    if-eqz v10, :cond_1b

    .line 565
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/inca/security/y;->IiiiIIIIii(II)I

    move-result v10

    add-int v10, v10, v19

    .line 1360
    iget v15, v14, Lcom/inca/security/d;->IiIiIiiIii:I

    if-gt v10, v15, :cond_1b

    const/4 v5, 0x1

    .line 530
    iput v10, v14, Lcom/inca/security/d;->IiIiIiiIii:I

    .line 1260
    move/from16 v0, v16

    iput v0, v14, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 1262
    invoke-virtual {v14}, Lcom/inca/security/d;->iIiIIiIIIi()V

    .line 1563
    :cond_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    invoke-virtual {v10}, Lcom/inca/security/h;->IiiiIIIIii()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    .line 1101
    move/from16 v0, v16

    rsub-int v14, v0, 0xfff

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1258
    const/4 v10, 0x2

    if-ge v15, v10, :cond_28

    move/from16 v5, v16

    .line 631
    goto/16 :goto_a

    .line 581
    :cond_1c
    invoke-static {v5}, Lcom/inca/security/b;->iiiiiiiIii(I)I

    move-result v5

    goto/16 :goto_b

    .line 726
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v6

    iget v5, v5, Lcom/inca/security/d;->IiIiIIIiIi:I

    goto/16 :goto_b

    .line 1493
    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/inca/security/d;->IiIiIIIiIi:I

    move v7, v5

    .line 1047
    goto/16 :goto_c

    .line 1218
    :cond_1f
    invoke-static {v6}, Lcom/inca/security/b;->iIiIIiIIIi(I)I

    move-result v6

    move-object/from16 v4, p0

    goto/16 :goto_d

    .line 571
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v16

    iget-boolean v5, v5, Lcom/inca/security/d;->iiIIIIIiiI:Z

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v16

    iget-boolean v5, v5, Lcom/inca/security/d;->IIiIIIIIii:Z

    if-eqz v5, :cond_21

    .line 918
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v16

    iget v7, v5, Lcom/inca/security/d;->IIiIiIIIii:I

    .line 640
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v16

    iget v5, v5, Lcom/inca/security/d;->IiiIiiiIiI:I

    .line 993
    invoke-static {v6}, Lcom/inca/security/b;->IiIiiIiiII(I)I

    move-result v6

    move-object/from16 v4, p0

    .line 1317
    :goto_f
    iget-object v8, v4, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v7, v8, v7

    .line 680
    const/4 v8, 0x4

    if-ge v5, v8, :cond_26

    .line 1425
    if-nez v5, :cond_23

    .line 1519
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x0

    iget v10, v7, Lcom/inca/security/d;->IIiiIiIIii:I

    aput v10, v5, v8

    .line 1296
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x1

    iget v10, v7, Lcom/inca/security/d;->iiIiIIIiiI:I

    aput v10, v5, v8

    .line 589
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x2

    iget v10, v7, Lcom/inca/security/d;->iiiiIIIiii:I

    aput v10, v5, v8

    .line 1249
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x3

    iget v7, v7, Lcom/inca/security/d;->IiiiiIiiIi:I

    aput v7, v5, v8

    move-object/from16 v4, p0

    goto/16 :goto_d

    .line 1362
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v16

    iget v5, v5, Lcom/inca/security/d;->iiIIIiiiiI:I

    .line 1550
    const/4 v8, 0x4

    if-ge v5, v8, :cond_22

    .line 869
    invoke-static {v6}, Lcom/inca/security/b;->IiIiiIiiII(I)I

    move-result v6

    move-object/from16 v4, p0

    goto :goto_f

    .line 899
    :cond_22
    invoke-static {v6}, Lcom/inca/security/b;->iiiiiiiIii(I)I

    move-result v6

    move-object/from16 v4, p0

    .line 1317
    goto :goto_f

    .line 1291
    :cond_23
    const/4 v8, 0x1

    if-ne v5, v8, :cond_24

    .line 1326
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x0

    iget v10, v7, Lcom/inca/security/d;->iiIiIIIiiI:I

    aput v10, v5, v8

    .line 705
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x1

    iget v10, v7, Lcom/inca/security/d;->IIiiIiIIii:I

    aput v10, v5, v8

    .line 1078
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x2

    iget v10, v7, Lcom/inca/security/d;->iiiiIIIiii:I

    aput v10, v5, v8

    .line 1020
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x3

    iget v7, v7, Lcom/inca/security/d;->IiiiiIiiIi:I

    aput v7, v5, v8

    move-object/from16 v4, p0

    goto/16 :goto_d

    .line 1103
    :cond_24
    const/4 v8, 0x2

    if-ne v5, v8, :cond_25

    .line 821
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x0

    iget v10, v7, Lcom/inca/security/d;->iiiiIIIiii:I

    aput v10, v5, v8

    .line 1324
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x1

    iget v10, v7, Lcom/inca/security/d;->IIiiIiIIii:I

    aput v10, v5, v8

    .line 1191
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x2

    iget v10, v7, Lcom/inca/security/d;->iiIiIIIiiI:I

    aput v10, v5, v8

    .line 1125
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x3

    iget v7, v7, Lcom/inca/security/d;->IiiiiIiiIi:I

    aput v7, v5, v8

    move-object/from16 v4, p0

    goto/16 :goto_d

    .line 1424
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x0

    iget v10, v7, Lcom/inca/security/d;->IiiiiIiiIi:I

    aput v10, v5, v8

    .line 1236
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x1

    iget v10, v7, Lcom/inca/security/d;->IIiiIiIIii:I

    aput v10, v5, v8

    .line 823
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x2

    iget v10, v7, Lcom/inca/security/d;->iiIiIIIiiI:I

    aput v10, v5, v8

    .line 793
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x3

    iget v7, v7, Lcom/inca/security/d;->iiiiIIIiii:I

    aput v7, v5, v8

    move-object/from16 v4, p0

    goto/16 :goto_d

    .line 877
    :cond_26
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v10, 0x0

    add-int/lit8 v5, v5, -0x4

    aput v5, v8, v10

    .line 1328
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x1

    iget v10, v7, Lcom/inca/security/d;->IIiiIiIIii:I

    aput v10, v5, v8

    .line 1294
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x2

    iget v10, v7, Lcom/inca/security/d;->iiIiIIIiiI:I

    aput v10, v5, v8

    .line 1229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v8, 0x3

    iget v7, v7, Lcom/inca/security/d;->iiiiIIIiii:I

    aput v7, v5, v8

    move-object/from16 v4, p0

    goto/16 :goto_d

    .line 902
    :cond_27
    const/4 v5, 0x0

    move v8, v5

    move v5, v7

    goto/16 :goto_e

    .line 1034
    :cond_28
    move-object/from16 v0, p0

    iget v10, v0, Lcom/inca/security/y;->iiiIiIIIII:I

    if-le v15, v10, :cond_3d

    .line 1312
    move-object/from16 v0, p0

    iget v10, v0, Lcom/inca/security/y;->iiiIiIIIII:I

    .line 887
    :goto_10
    if-nez v5, :cond_3c

    if-eq v7, v13, :cond_3c

    .line 592
    add-int/lit8 v5, v15, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/inca/security/y;->iiiIiIIIII:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1380
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v7, v14, v13, v5}, Lcom/inca/security/h;->IiiiIIIIii(III)I

    move-result v7

    .line 734
    const/4 v5, 0x2

    if-lt v7, v5, :cond_3c

    .line 1276
    invoke-static {v6}, Lcom/inca/security/b;->iIiIIiIIIi(I)I

    move-result v13

    .line 577
    add-int/lit8 v5, p1, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inca/security/y;->IIIiIIiIIi:I

    and-int/2addr v14, v5

    .line 1417
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IIIiiIIiii:[S

    shl-int/lit8 v20, v13, 0x4

    add-int v20, v20, v14

    aget-short v5, v5, v20

    .line 912
    invoke-static {v5}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v5

    add-int/2addr v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->IiiIiIIiIi:[S

    aget-short v8, v8, v13

    .line 1089
    invoke-static {v8}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v8

    add-int/2addr v8, v5

    .line 1164
    add-int/lit8 v5, v16, 0x1

    add-int v20, v5, v7

    move v5, v9

    .line 642
    :goto_11
    move/from16 v0, v20

    if-ge v9, v0, :cond_29

    add-int/lit8 v9, v5, 0x1

    .line 1130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v5, v5, v9

    const v21, 0xfffffff

    move/from16 v0, v21

    iput v0, v5, Lcom/inca/security/d;->IiIiIiiIii:I

    move v5, v9

    goto :goto_11

    .line 549
    :cond_29
    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v7, v13, v14}, Lcom/inca/security/y;->IiiiIIIIii(IIII)I

    move-result v7

    add-int/2addr v7, v8

    .line 1199
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v8, v8, v20

    .line 1332
    iget v9, v8, Lcom/inca/security/d;->IiIiIiiIii:I

    if-ge v7, v9, :cond_2a

    .line 1248
    const/4 v9, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    iput v7, v8, Lcom/inca/security/d;->IiIiIiiIii:I

    .line 1507
    add-int/lit8 v7, v16, 0x1

    iput v7, v8, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 1423
    iput v14, v8, Lcom/inca/security/d;->iiIIIiiiiI:I

    .line 1508
    iput-boolean v13, v8, Lcom/inca/security/d;->iiIIIIIiiI:Z

    .line 1395
    iput-boolean v9, v8, Lcom/inca/security/d;->IIiIIIIIii:Z

    .line 1267
    :cond_2a
    :goto_12
    const/4 v9, 0x2

    .line 1268
    const/4 v7, 0x0

    move v13, v7

    :goto_13
    const/4 v8, 0x4

    if-ge v7, v8, :cond_31

    .line 1001
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    aget v14, v14, v13

    invoke-virtual {v7, v8, v14, v10}, Lcom/inca/security/h;->IiiiIIIIii(III)I

    move-result v7

    .line 1543
    const/4 v8, 0x2

    if-ge v7, v8, :cond_2c

    move v8, v5

    move v5, v9

    .line 1268
    :cond_2b
    :goto_14
    add-int/lit8 v7, v13, 0x1

    move v13, v7

    move v9, v5

    move v5, v8

    goto :goto_13

    :cond_2c
    move v8, v5

    move v5, v7

    :cond_2d
    move v14, v8

    .line 558
    :goto_15
    add-int v20, v16, v5

    move/from16 v0, v20

    if-ge v14, v0, :cond_2e

    add-int/lit8 v8, v8, 0x1

    .line 1300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v14, v14, v8

    const v20, 0xfffffff

    move/from16 v0, v20

    iput v0, v14, Lcom/inca/security/d;->IiIiIiiIii:I

    move v14, v8

    goto :goto_15

    .line 1151
    :cond_2e
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v5, v6, v1}, Lcom/inca/security/y;->IiiiIIIIii(IIII)I

    move-result v14

    add-int v14, v14, v19

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    move-object/from16 v20, v0

    add-int v21, v16, v5

    aget-object v20, v20, v21

    .line 1011
    move-object/from16 v0, v20

    iget v0, v0, Lcom/inca/security/d;->IiIiIiiIii:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_2f

    .line 521
    const/16 v21, 0x0

    move-object/from16 v0, v20

    iput v14, v0, Lcom/inca/security/d;->IiIiIiiIii:I

    .line 1013
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 503
    move-object/from16 v0, v20

    iput v13, v0, Lcom/inca/security/d;->iiIIIiiiiI:I

    .line 1485
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/inca/security/d;->iiIIIIIiiI:Z

    .line 1491
    :cond_2f
    add-int/lit8 v5, v5, -0x1

    const/4 v14, 0x2

    if-ge v5, v14, :cond_2d

    .line 1578
    if-nez v13, :cond_3b

    .line 1306
    add-int/lit8 v5, v7, 0x1

    .line 643
    :goto_16
    if-ge v7, v15, :cond_2b

    .line 583
    add-int/lit8 v9, v15, -0x1

    sub-int/2addr v9, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inca/security/y;->iiiIiIIIII:I

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    move-object/from16 v20, v0

    aget v20, v20, v13

    move/from16 v0, v20

    invoke-virtual {v14, v7, v0, v9}, Lcom/inca/security/h;->IiiiIIIIii(III)I

    move-result v14

    .line 1355
    const/4 v9, 0x2

    if-lt v14, v9, :cond_2b

    .line 936
    invoke-static {v6}, Lcom/inca/security/b;->IiIiiIiiII(I)I

    move-result v9

    .line 1387
    add-int v20, p1, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/inca/security/y;->IIIiIIiIIi:I

    move/from16 v21, v0

    and-int v20, v20, v21

    .line 1576
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v7, v6, v1}, Lcom/inca/security/y;->IiiiIIIIii(IIII)I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IIIiiIIiii:[S

    move-object/from16 v22, v0

    shl-int/lit8 v23, v9, 0x4

    add-int v20, v20, v23

    aget-short v20, v22, v20

    .line 860
    invoke-static/range {v20 .. v20}, Lcom/inca/security/u;->IiiiIIIIii(I)I

    move-result v20

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IIiiiiiIIi:Lcom/inca/security/f;

    move-object/from16 v21, v0

    add-int v22, p1, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    move-object/from16 v23, v0

    add-int/lit8 v24, v7, -0x1

    add-int/lit8 v24, v24, -0x1

    .line 1055
    invoke-virtual/range {v23 .. v24}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v23

    .line 819
    invoke-virtual/range {v21 .. v23}, Lcom/inca/security/f;->IiiiIIIIii(IB)Lcom/inca/security/z;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    add-int/lit8 v24, v7, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->iiiIiiIiIi:[I

    move-object/from16 v25, v0

    aget v25, v25, v13

    add-int/lit8 v25, v25, 0x1

    sub-int v24, v24, v25

    .line 1371
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    move-object/from16 v24, v0

    add-int/lit8 v25, v7, -0x1

    .line 1238
    invoke-virtual/range {v24 .. v25}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v24

    .line 1055
    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/inca/security/z;->IiiiIIIIii(ZBB)I

    move-result v21

    add-int v20, v20, v21

    .line 1208
    invoke-static {v9}, Lcom/inca/security/b;->iIiIIiIIIi(I)I

    move-result v21

    .line 825
    add-int v9, p1, v7

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/inca/security/y;->IIIiIIiIIi:I

    move/from16 v22, v0

    and-int v22, v22, v9

    .line 1135
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/y;->IIIiiIIiii:[S

    shl-int/lit8 v23, v21, 0x4

    add-int v23, v23, v22

    aget-short v9, v9, v23

    invoke-static {v9}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v9

    add-int v9, v9, v20

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IiiIiIIiIi:[S

    move-object/from16 v20, v0

    aget-short v20, v20, v21

    invoke-static/range {v20 .. v20}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v20

    add-int v20, v20, v9

    .line 1557
    add-int/lit8 v9, v7, 0x1

    add-int v23, v9, v14

    move v9, v8

    .line 1532
    :goto_17
    add-int v24, v16, v23

    move/from16 v0, v24

    if-ge v9, v0, :cond_30

    add-int/lit8 v8, v8, 0x1

    .line 560
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v9, v9, v8

    const v24, 0xfffffff

    move/from16 v0, v24

    iput v0, v9, Lcom/inca/security/d;->IiIiIiiIii:I

    move v9, v8

    goto :goto_17

    .line 1064
    :cond_30
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v9, v14, v1, v2}, Lcom/inca/security/y;->IiiiIIIIii(IIII)I

    move-result v9

    add-int v9, v9, v20

    .line 1415
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    add-int v20, v16, v23

    aget-object v14, v14, v20

    .line 545
    iget v0, v14, Lcom/inca/security/d;->IiIiIiiIii:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_2b

    .line 801
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    iput v9, v14, Lcom/inca/security/d;->IiIiIiiIii:I

    .line 749
    add-int v7, v7, v16

    add-int/lit8 v7, v7, 0x1

    iput v7, v14, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 831
    move/from16 v0, v22

    iput v0, v14, Lcom/inca/security/d;->iiIIIiiiiI:I

    .line 943
    move/from16 v0, v21

    iput-boolean v0, v14, Lcom/inca/security/d;->iiIIIIIiiI:Z

    .line 693
    move/from16 v0, v20

    iput-boolean v0, v14, Lcom/inca/security/d;->IIiIIIIIii:Z

    .line 770
    move/from16 v0, v16

    iput v0, v14, Lcom/inca/security/d;->IIiIiIIIii:I

    .line 1346
    iput v13, v14, Lcom/inca/security/d;->IiiIiiiIiI:I

    goto/16 :goto_14

    .line 1018
    :cond_31
    if-le v11, v10, :cond_3a

    .line 859
    const/4 v7, 0x0

    move v8, v7

    move v7, v10

    :goto_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/inca/security/y;->IiiIIIIIii:[I

    aget v11, v11, v8

    if-le v7, v11, :cond_32

    add-int/lit8 v7, v8, 0x2

    move v8, v7

    move v7, v10

    goto :goto_18

    .line 1307
    :cond_32
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/inca/security/y;->IiiIIIIIii:[I

    .line 716
    add-int/lit8 v7, v8, 0x2

    aput v10, v11, v8

    move v11, v7

    .line 1330
    :goto_19
    if-lt v10, v9, :cond_39

    .line 546
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiIiIIiIi:[S

    aget-short v7, v7, v6

    invoke-static {v7}, Lcom/inca/security/u;->IiiiIIIIii(I)I

    move-result v7

    add-int v12, v18, v7

    move v8, v5

    .line 536
    :goto_1a
    add-int v7, v16, v10

    if-ge v5, v7, :cond_33

    add-int/lit8 v5, v8, 0x1

    .line 1315
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v7, v7, v5

    const v8, 0xfffffff

    iput v8, v7, Lcom/inca/security/d;->IiIiIiiIii:I

    move v8, v5

    goto :goto_1a

    .line 947
    :cond_33
    const/4 v5, 0x0

    move v7, v5

    move v5, v9

    .line 594
    :goto_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/inca/security/y;->IiiIIIIIii:[I

    aget v10, v10, v7

    if-le v5, v10, :cond_34

    .line 682
    add-int/lit8 v5, v7, 0x2

    move v7, v5

    move v5, v9

    goto :goto_1b

    :cond_34
    move-object/from16 v4, p0

    move v5, v8

    .line 978
    :goto_1c
    iget-object v8, v4, Lcom/inca/security/y;->IiiIIIIIii:[I

    add-int/lit8 v10, v7, 0x1

    aget v10, v8, v10

    .line 1449
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v10, v9, v1}, Lcom/inca/security/y;->IiiiIIIIii(III)I

    move-result v8

    add-int/2addr v8, v12

    .line 1284
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    add-int v14, v16, v9

    aget-object v13, v13, v14

    .line 908
    iget v14, v13, Lcom/inca/security/d;->IiIiIiiIii:I

    if-ge v8, v14, :cond_35

    .line 1132
    const/4 v14, 0x0

    iput v8, v13, Lcom/inca/security/d;->IiIiIiiIii:I

    .line 1568
    move/from16 v0, v16

    iput v0, v13, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 1525
    add-int/lit8 v18, v10, 0x4

    move/from16 v0, v18

    iput v0, v13, Lcom/inca/security/d;->iiIIIiiiiI:I

    .line 1026
    iput-boolean v14, v13, Lcom/inca/security/d;->iiIIIIIiiI:Z

    .line 733
    :cond_35
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inca/security/y;->IiiIIIIIii:[I

    aget v13, v13, v7

    if-ne v9, v13, :cond_38

    .line 1186
    if-ge v9, v15, :cond_37

    .line 510
    add-int/lit8 v13, v15, -0x1

    sub-int/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inca/security/y;->iiiIiIIIII:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1433
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    invoke-virtual {v14, v9, v10, v13}, Lcom/inca/security/h;->IiiiIIIIii(III)I

    move-result v13

    .line 1190
    const/4 v14, 0x2

    if-lt v13, v14, :cond_37

    .line 736
    invoke-static {v6}, Lcom/inca/security/b;->iiiiiiiIii(I)I

    move-result v14

    .line 525
    add-int v18, p1, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/inca/security/y;->IIIiIIiIIi:I

    move/from16 v19, v0

    and-int v18, v18, v19

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IIIiiIIiii:[S

    move-object/from16 v19, v0

    shl-int/lit8 v20, v14, 0x4

    add-int v18, v18, v20

    aget-short v18, v19, v18

    .line 941
    invoke-static/range {v18 .. v18}, Lcom/inca/security/u;->IiiiIIIIii(I)I

    move-result v18

    add-int v8, v8, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IIiiiiiIIi:Lcom/inca/security/f;

    move-object/from16 v18, v0

    add-int v19, p1, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    move-object/from16 v20, v0

    add-int/lit8 v21, v9, -0x1

    add-int/lit8 v21, v21, -0x1

    .line 1038
    invoke-virtual/range {v20 .. v21}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v20

    .line 1456
    invoke-virtual/range {v18 .. v20}, Lcom/inca/security/f;->IiiiIIIIii(IB)Lcom/inca/security/z;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    move-object/from16 v19, v0

    add-int/lit8 v20, v10, 0x1

    sub-int v20, v9, v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    .line 1295
    invoke-virtual/range {v19 .. v20}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    move-object/from16 v20, v0

    add-int/lit8 v22, v9, -0x1

    .line 991
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/inca/security/h;->IiiiIIIIii(I)B

    move-result v20

    .line 1299
    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/inca/security/z;->IiiiIIIIii(ZBB)I

    move-result v18

    add-int v8, v8, v18

    .line 1084
    invoke-static {v14}, Lcom/inca/security/b;->iIiIIiIIIi(I)I

    move-result v14

    .line 1383
    add-int v18, p1, v9

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/inca/security/y;->IIIiIIiIIi:I

    move/from16 v19, v0

    and-int v18, v18, v19

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IIIiiIIiii:[S

    move-object/from16 v19, v0

    shl-int/lit8 v20, v14, 0x4

    add-int v20, v20, v18

    aget-short v19, v19, v20

    invoke-static/range {v19 .. v19}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v19

    add-int v8, v8, v19

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/y;->IiiIiIIiIi:[S

    move-object/from16 v19, v0

    aget-short v19, v19, v14

    invoke-static/range {v19 .. v19}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v19

    add-int v19, v19, v8

    .line 689
    add-int/lit8 v8, v9, 0x1

    add-int v20, v8, v13

    move v8, v5

    .line 1468
    :goto_1d
    add-int v21, v16, v20

    move/from16 v0, v21

    if-ge v8, v0, :cond_36

    add-int/lit8 v5, v5, 0x1

    .line 820
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    aget-object v8, v8, v5

    const v21, 0xfffffff

    move/from16 v0, v21

    iput v0, v8, Lcom/inca/security/d;->IiIiIiiIii:I

    move v8, v5

    goto :goto_1d

    .line 872
    :cond_36
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v8, v13, v14, v1}, Lcom/inca/security/y;->IiiiIIIIii(IIII)I

    move-result v8

    add-int v8, v8, v19

    .line 567
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inca/security/y;->IiiiIIIiIi:[Lcom/inca/security/d;

    add-int v14, v16, v20

    aget-object v13, v13, v14

    .line 958
    iget v14, v13, Lcom/inca/security/d;->IiIiIiiIii:I

    if-ge v8, v14, :cond_37

    .line 1552
    const/4 v14, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    iput v8, v13, Lcom/inca/security/d;->IiIiIiiIii:I

    .line 735
    add-int v8, v16, v9

    add-int/lit8 v8, v8, 0x1

    iput v8, v13, Lcom/inca/security/d;->IIIiiiiIII:I

    .line 1567
    move/from16 v0, v19

    iput v0, v13, Lcom/inca/security/d;->iiIIIiiiiI:I

    .line 1373
    move/from16 v0, v18

    iput-boolean v0, v13, Lcom/inca/security/d;->iiIIIIIiiI:Z

    .line 1269
    iput-boolean v14, v13, Lcom/inca/security/d;->IIiIIIIIii:Z

    .line 1195
    move/from16 v0, v16

    iput v0, v13, Lcom/inca/security/d;->IIiIiIIIii:I

    .line 1572
    add-int/lit8 v8, v10, 0x4

    iput v8, v13, Lcom/inca/security/d;->IiiIiiiIiI:I

    .line 1385
    :cond_37
    add-int/lit8 v7, v7, 0x2

    .line 1354
    if-ne v7, v11, :cond_38

    move v9, v5

    move/from16 v5, v16

    .line 1531
    goto/16 :goto_a

    .line 1293
    :cond_38
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, p0

    goto/16 :goto_1c

    :cond_39
    move v9, v5

    move/from16 v5, v16

    goto/16 :goto_a

    :cond_3a
    move v10, v11

    move v11, v12

    goto/16 :goto_19

    :cond_3b
    move v5, v9

    goto/16 :goto_16

    :cond_3c
    move v5, v9

    goto/16 :goto_12

    :cond_3d
    move v10, v15

    goto/16 :goto_10
.end method

.method public iIiIIiIIIi(III)I
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/inca/security/y;->IiiiiIIIIi:[S

    aget-short v0, v0, p2

    invoke-static {v0}, Lcom/inca/security/u;->IiiiIIIIii(I)I

    move-result v0

    .line 430
    iget-object v1, p0, Lcom/inca/security/y;->IiIIIiIIIi:[S

    shl-int/lit8 v2, p2, 0x4

    add-int/2addr v2, p3

    aget-short v1, v1, v2

    invoke-static {v1}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/inca/security/y;->IiiiiIIIIi:[S

    aget-short v0, v0, p2

    invoke-static {v0}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v0

    .line 370
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/inca/security/y;->iIIIiiIIIi:[S

    aget-short v1, v1, p2

    invoke-static {v1}, Lcom/inca/security/u;->IiiiIIIIii(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/inca/security/y;->iIIIiiIIIi:[S

    aget-short v1, v1, p2

    invoke-static {v1}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    iget-object v1, p0, Lcom/inca/security/y;->IIiiIiIIii:[S

    aget-short v1, v1, p2

    add-int/lit8 v2, p1, -0x2

    invoke-static {v1, v2}, Lcom/inca/security/u;->IiiiIIIIii(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 418
    goto :goto_0
.end method

.method public iIiIIiIIIi()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/inca/security/y;->iiIiIIIIIi()V

    .line 450
    iget-object v0, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    invoke-virtual {v0}, Lcom/inca/security/u;->IiiiIIIIii()V

    .line 266
    iget-object v0, p0, Lcom/inca/security/y;->IIIiiIIiii:[S

    invoke-static {v0}, Lcom/inca/security/u;->IiiiIIIIii([S)V

    .line 435
    iget-object v0, p0, Lcom/inca/security/y;->IiIIIiIIIi:[S

    invoke-static {v0}, Lcom/inca/security/u;->IiiiIIIIii([S)V

    .line 353
    iget-object v0, p0, Lcom/inca/security/y;->IiiIiIIiIi:[S

    invoke-static {v0}, Lcom/inca/security/u;->IiiiIIIIii([S)V

    .line 415
    iget-object v0, p0, Lcom/inca/security/y;->IiiiiIIIIi:[S

    invoke-static {v0}, Lcom/inca/security/u;->IiiiIIIIii([S)V

    .line 399
    iget-object v0, p0, Lcom/inca/security/y;->iIIIiiIIIi:[S

    invoke-static {v0}, Lcom/inca/security/u;->IiiiIIIIii([S)V

    .line 455
    iget-object v0, p0, Lcom/inca/security/y;->IIiiIiIIii:[S

    invoke-static {v0}, Lcom/inca/security/u;->IiiiIIIIii([S)V

    .line 256
    iget-object v0, p0, Lcom/inca/security/y;->iiIIiiiiii:[S

    invoke-static {v0}, Lcom/inca/security/u;->IiiiIIIIii([S)V

    .line 406
    iget-object v0, p0, Lcom/inca/security/y;->IIiiiiiIIi:Lcom/inca/security/f;

    invoke-virtual {v0}, Lcom/inca/security/f;->IiiiIIIIii()V

    move v0, v1

    move v2, v1

    .line 413
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 275
    iget-object v3, p0, Lcom/inca/security/y;->IIIiIIiiii:[Lcom/inca/security/a;

    add-int/lit8 v0, v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/inca/security/a;->IiiiIIIIii()V

    move v2, v0

    .line 413
    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/inca/security/y;->iiiIIIIiII:Lcom/inca/security/aa;

    iget v2, p0, Lcom/inca/security/y;->IIiIIiiiiI:I

    shl-int v2, v4, v2

    invoke-virtual {v0, v2}, Lcom/inca/security/aa;->IiiiIIIIii(I)V

    .line 325
    iget-object v0, p0, Lcom/inca/security/y;->IiiIiIIiiI:Lcom/inca/security/aa;

    iget v2, p0, Lcom/inca/security/y;->IIiIIiiiiI:I

    shl-int v2, v4, v2

    invoke-virtual {v0, v2}, Lcom/inca/security/aa;->IiiiIIIIii(I)V

    .line 226
    iget-object v0, p0, Lcom/inca/security/y;->IIIiiiiIII:Lcom/inca/security/a;

    invoke-virtual {v0}, Lcom/inca/security/a;->IiiiIIIIii()V

    .line 432
    iput-boolean v1, p0, Lcom/inca/security/y;->IiIIIIIiII:Z

    .line 207
    iput v1, p0, Lcom/inca/security/y;->IiIIiIIIIi:I

    .line 383
    iput v1, p0, Lcom/inca/security/y;->iIIIiIiiii:I

    .line 314
    iput v1, p0, Lcom/inca/security/y;->IiiiiIiiIi:I

    .line 355
    return-void
.end method

.method public iIiIIiIIIi(I)V
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/inca/security/y;->IiiiIIIIii()V

    .line 1436
    iget v0, p0, Lcom/inca/security/y;->IIIiIIiIIi:I

    and-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/inca/security/y;->IiiiIIIIii(I)V

    .line 1524
    iget-object v0, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    invoke-virtual {v0}, Lcom/inca/security/u;->iIiIIiIIIi()V

    .line 1201
    iget-object v0, p0, Lcom/inca/security/y;->IIiIIIIIii:Lcom/inca/security/u;

    invoke-virtual {v0}, Lcom/inca/security/u;->IiIiiIiiII()V

    .line 1541
    return-void
.end method

.method public iIiIIiIIIi(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "arg0"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 719
    iget-object v0, p0, Lcom/inca/security/y;->IIiiIIIiIi:[B

    iget v2, p0, Lcom/inca/security/y;->IIiIIiiiiI:I

    mul-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/inca/security/y;->IIiIIIIiIi:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x9

    iget v3, p0, Lcom/inca/security/y;->iiIIiIIiII:I

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    move v0, v1

    move v2, v1

    .line 1093
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 1431
    iget-object v3, p0, Lcom/inca/security/y;->IIiiIIIiIi:[B

    add-int/lit8 v4, v2, 0x1

    iget v0, p0, Lcom/inca/security/y;->iiIiiIIIii:I

    mul-int/lit8 v5, v2, 0x8

    shr-int/2addr v0, v5

    int-to-byte v5, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v5, v3, v4

    move v2, v0

    .line 1093
    goto :goto_0

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/inca/security/y;->IIiiIIIiIi:[B

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 711
    return-void
.end method

.method public iIiIIiIIIi(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/inca/security/y;->IiiIiiiIiI:Z

    .line 1232
    return-void
.end method

.method public iIiIIiIIIi(I)Z
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 625
    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/16 v0, 0x111

    if-le p1, v0, :cond_1

    .line 1263
    :cond_0
    const/4 v0, 0x0

    .line 1500
    :goto_0
    return v0

    .line 591
    :cond_1
    iput p1, p0, Lcom/inca/security/y;->iiiIiIIIII:I

    .line 1500
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iiIiIIIIIi()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lcom/inca/security/b;->IiiiIIIIii()I

    move-result v0

    iput v0, p0, Lcom/inca/security/y;->IiIIIIiIIi:I

    .line 40
    iput-byte v1, p0, Lcom/inca/security/y;->iIIIIIiIII:B

    move v0, v1

    move v2, v1

    .line 157
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/inca/security/y;->IIIiIIIiiI:[I

    add-int/lit8 v0, v2, 0x1

    aput v1, v3, v2

    move v2, v0

    .line 157
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public iiiiIIiiII()V
    .locals 5

    .prologue
    .line 235
    iget-object v0, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    if-nez v0, :cond_1

    .line 401
    new-instance v1, Lcom/inca/security/h;

    invoke-direct {v1}, Lcom/inca/security/h;-><init>()V

    .line 482
    const/4 v0, 0x4

    .line 209
    iget v2, p0, Lcom/inca/security/y;->iiiIIIiiII:I

    if-nez v2, :cond_0

    .line 319
    const/4 v0, 0x2

    .line 412
    :cond_0
    invoke-virtual {v1, v0}, Lcom/inca/security/h;->IiIiiIiiII(I)V

    .line 272
    iput-object v1, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/inca/security/y;->IIiiiiiIIi:Lcom/inca/security/f;

    iget v1, p0, Lcom/inca/security/y;->IIiIIIIiIi:I

    iget v2, p0, Lcom/inca/security/y;->iiIIiIIiII:I

    invoke-virtual {v0, v1, v2}, Lcom/inca/security/f;->IiiiIIIIii(II)V

    .line 449
    iget v0, p0, Lcom/inca/security/y;->iiIiiIIIii:I

    iget v1, p0, Lcom/inca/security/y;->iiiIiiiiII:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/inca/security/y;->IiIiIiiIii:I

    iget v1, p0, Lcom/inca/security/y;->iiiIiIIIII:I

    if-ne v0, v1, :cond_2

    .line 259
    :goto_0
    return-void

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/inca/security/y;->IiiiIIiIII:Lcom/inca/security/h;

    iget v1, p0, Lcom/inca/security/y;->iiIiiIIIii:I

    const/16 v2, 0x1000

    iget v3, p0, Lcom/inca/security/y;->iiiIiIIIII:I

    const/16 v4, 0x112

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inca/security/h;->IiiiIIIIii(IIII)Z

    .line 229
    iget v0, p0, Lcom/inca/security/y;->iiIiiIIIii:I

    iput v0, p0, Lcom/inca/security/y;->iiiIiiiiII:I

    .line 214
    iget v0, p0, Lcom/inca/security/y;->iiiIiIIIII:I

    iput v0, p0, Lcom/inca/security/y;->IiIiIiiIii:I

    goto :goto_0
.end method

.method public iiiiiiiIii()V
    .locals 11

    .prologue
    const/16 v10, 0x80

    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 532
    move v0, v4

    move v2, v4

    :goto_0
    if-ge v0, v10, :cond_0

    .line 1226
    invoke-static {v2}, Lcom/inca/security/y;->IiiiIIIIii(I)I

    move-result v0

    .line 1041
    shr-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, -0x1

    .line 1545
    and-int/lit8 v5, v0, 0x1

    or-int/lit8 v5, v5, 0x2

    shl-int/2addr v5, v3

    .line 1126
    iget-object v6, p0, Lcom/inca/security/y;->iIIiIIIIIi:[I

    iget-object v7, p0, Lcom/inca/security/y;->iiIIiiiiii:[S

    sub-int v0, v5, v0

    add-int/lit8 v0, v0, -0x1

    sub-int v5, v2, v5

    invoke-static {v7, v0, v3, v5}, Lcom/inca/security/a;->IiiiIIIIii([SIII)I

    move-result v3

    add-int/lit8 v0, v2, 0x1

    aput v3, v6, v2

    move v2, v0

    .line 532
    goto :goto_0

    :cond_0
    move v0, v1

    move v3, v1

    .line 1094
    :goto_1
    if-ge v0, v4, :cond_5

    .line 927
    iget-object v0, p0, Lcom/inca/security/y;->IIIiIIiiii:[Lcom/inca/security/a;

    aget-object v5, v0, v3

    .line 777
    shl-int/lit8 v6, v3, 0x6

    move v0, v1

    move v2, v1

    .line 802
    :goto_2
    iget v7, p0, Lcom/inca/security/y;->IIiIIiIIiI:I

    if-ge v0, v7, :cond_1

    .line 1372
    iget-object v7, p0, Lcom/inca/security/y;->iIIiIIIIiI:[I

    add-int v8, v6, v2

    invoke-virtual {v5, v2}, Lcom/inca/security/a;->IiiiIIIIii(I)I

    move-result v9

    add-int/lit8 v0, v2, 0x1

    aput v9, v7, v8

    move v2, v0

    .line 802
    goto :goto_2

    .line 1549
    :cond_1
    const/16 v0, 0xe

    move v2, v0

    :goto_3
    iget v5, p0, Lcom/inca/security/y;->IIiIIiIIiI:I

    if-ge v0, v5, :cond_2

    .line 985
    iget-object v5, p0, Lcom/inca/security/y;->iIIiIIIIiI:[I

    add-int v7, v6, v2

    aget v0, v5, v7

    shr-int/lit8 v8, v2, 0x1

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v8, v8, -0x4

    shl-int/lit8 v8, v8, 0x6

    add-int/2addr v8, v0

    add-int/lit8 v0, v2, 0x1

    aput v8, v5, v7

    move v2, v0

    .line 1549
    goto :goto_3

    .line 1082
    :cond_2
    mul-int/lit16 v5, v3, 0x80

    move v2, v1

    move v0, v1

    .line 1207
    :goto_4
    if-ge v2, v4, :cond_3

    .line 1559
    iget-object v2, p0, Lcom/inca/security/y;->iiIIiIIiii:[I

    add-int v7, v5, v0

    iget-object v8, p0, Lcom/inca/security/y;->iIIiIIIIiI:[I

    add-int v9, v6, v0

    aget v8, v8, v9

    add-int/lit8 v0, v0, 0x1

    aput v8, v2, v7

    move v2, v0

    .line 1207
    goto :goto_4

    :cond_3
    move v2, v0

    .line 579
    :goto_5
    if-ge v0, v10, :cond_4

    .line 948
    iget-object v7, p0, Lcom/inca/security/y;->iiIIiIIiii:[I

    add-int v8, v5, v2

    iget-object v0, p0, Lcom/inca/security/y;->iIIiIIIIiI:[I

    invoke-static {v2}, Lcom/inca/security/y;->IiiiIIIIii(I)I

    move-result v9

    add-int/2addr v9, v6

    aget v0, v0, v9

    iget-object v9, p0, Lcom/inca/security/y;->iIIiIIIIIi:[I

    aget v9, v9, v2

    add-int/2addr v9, v0

    add-int/lit8 v0, v2, 0x1

    aput v9, v7, v8

    move v2, v0

    .line 579
    goto :goto_5

    .line 1094
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1475
    :cond_5
    iput v1, p0, Lcom/inca/security/y;->iiiiIIIiii:I

    .line 1560
    return-void
.end method
