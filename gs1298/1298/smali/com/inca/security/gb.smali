.class public Lcom/inca/security/gb;
.super Ljava/lang/Object;
.source "zb"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/fb;,
        Lcom/inca/security/qb;,
        Lcom/inca/security/bb;
    }
.end annotation


# static fields
.field public static final synthetic IIIIiiIiII:I = 0x0

.field public static final synthetic IIIiiiiIII:I = 0x8

.field public static final synthetic IIiIiIIIii:Z

.field public static final synthetic IiIiIIIiIi:I = 0x10

.field public static final synthetic IiIiIiiIii:I = 0x2

.field public static final synthetic IiiIiiiIiI:I = 0x1

.field public static final synthetic IiiiiIiiIi:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const-class v0, Lcom/inca/security/gb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/inca/security/gb;->IIiIiIIIii:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IiiiIIIIii([BI)Ljava/lang/String;
    .locals 3
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 470
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/inca/security/gb;->iIiIIiIIIi([BI)[B

    move-result-object v1

    const-string v2, "Tg,uRwH}" #US-ASCII

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 356
    :catch_0
    move-exception v0

    .line 473
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static IiiiIIIIii([BIII)Ljava/lang/String;
    .locals 3
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I

    .prologue
    .line 446
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/inca/security/gb;->IiiiIIIIii([BIII)[B

    move-result-object v1

    const-string v2, "Tg,uRwH}" #US-ASCII

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 393
    :catch_0
    move-exception v0

    .line 211
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static IiiiIIIIii(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/inca/security/gb;->IiiiIIIIii([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static IiiiIIIIii([BI)[B
    .locals 2
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/inca/security/gb;->iIiIIiIIIi([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static IiiiIIIIii([BIII)[B
    .locals 5
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I

    .prologue
    const/4 v3, 0x1

    .line 377
    new-instance v1, Lcom/inca/security/fb;

    const/4 v0, 0x0

    invoke-direct {v1, p3, v0}, Lcom/inca/security/fb;-><init>(I[B)V

    .line 287
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 1247
    iget-boolean v2, v1, Lcom/inca/security/fb;->IiiIiiiIiI:Z

    if-eqz v2, :cond_1

    .line 1574
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_2

    .line 1175
    add-int/lit8 v0, v0, 0x4

    move v2, v0

    move-object v0, v1

    .line 1030
    :goto_0
    iget-boolean v0, v0, Lcom/inca/security/fb;->IIIiiiiIII:Z

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    .line 990
    add-int/lit8 v0, p2, -0x1

    div-int/lit8 v0, v0, 0x39

    add-int/lit8 v4, v0, 0x1

    iget-boolean v0, v1, Lcom/inca/security/fb;->IiIiIIIiIi:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_1
    mul-int/2addr v0, v4

    add-int/2addr v2, v0

    .line 1065
    :cond_0
    new-array v0, v2, [B

    iput-object v0, v1, Lcom/inca/security/fb;->IIIIiiIiII:[B

    .line 671
    invoke-virtual {v1, p0, p1, p2, v3}, Lcom/inca/security/fb;->IiiiIIIIii([BIIZ)Z

    .line 1271
    sget-boolean v0, Lcom/inca/security/gb;->IIiIiIIIii:Z

    if-nez v0, :cond_4

    iget v0, v1, Lcom/inca/security/fb;->IiIiIiiIii:I

    if-eq v0, v2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 900
    :cond_1
    rem-int/lit8 v2, p2, 0x3

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_2
    :pswitch_0
    move v2, v0

    move-object v0, v1

    .line 1030
    goto :goto_0

    .line 1209
    :pswitch_1
    add-int/lit8 v0, v0, 0x2

    move v2, v0

    move-object v0, v1

    goto :goto_0

    .line 744
    :pswitch_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_3
    move v0, v3

    .line 990
    goto :goto_1

    .line 851
    :cond_4
    iget-object v0, v1, Lcom/inca/security/fb;->IIIIiiIiII:[B

    return-object v0

    .line 900
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static iIiIIiIIIi([BI)[B
    .locals 2
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/inca/security/gb;->IiiiIIIIii([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static iIiIIiIIIi([BIII)[B
    .locals 4
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I

    .prologue
    .line 9
    new-instance v1, Lcom/inca/security/qb;

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {v1, p3, v0}, Lcom/inca/security/qb;-><init>(I[B)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/inca/security/qb;->IiiiIIIIii([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u0012R\u0014\u0013\u0012R\u0003V]\u0005D" #bad base-64

    invoke-static {v1}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iget v0, v1, Lcom/inca/security/qb;->IiIiIiiIii:I

    iget-object v2, v1, Lcom/inca/security/qb;->IIIIiiIiII:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 83
    iget-object v0, v1, Lcom/inca/security/qb;->IIIIiiIiII:[B

    :goto_0
    return-object v0

    .line 158
    :cond_1
    iget v0, v1, Lcom/inca/security/qb;->IiIiIiiIii:I

    new-array v0, v0, [B

    .line 17
    iget-object v2, v1, Lcom/inca/security/qb;->IIIIiiIiII:[B

    const/4 v3, 0x0

    iget v1, v1, Lcom/inca/security/qb;->IiIiIiiIii:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
