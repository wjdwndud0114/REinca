.class public Lcom/inca/security/ie;
.super Ljava/lang/Object;
.source "qc"


# static fields
.field public static synthetic IIIIiiIiII:I

.field public static synthetic IIIiiiiIII:Ljava/lang/String;

.field public static synthetic IiIiIiiIii:I

.field public static synthetic IiiIiiiIiI:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const v0, 0x100101

    sput v0, Lcom/inca/security/ie;->IiIiIiiIii:I

    .line 162
    const v0, 0x100102

    sput v0, Lcom/inca/security/ie;->IIIIiiIiII:I

    .line 165
    const v0, 0x100103

    sput v0, Lcom/inca/security/ie;->IiiIiiiIiI:I

    .line 106
    const-string v0, "                                             "

    sput-object v0, Lcom/inca/security/ie;->IIIiiiiIII:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IiiiIIIIii([BI)I
    .locals 3
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 216
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static IiiiIIIIii(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # I
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/inca/security/ie;->IIIiiiiIII:Ljava/lang/String;

    const/4 v2, 0x0

    mul-int/lit8 v3, p0, 0x2

    sget-object v4, Lcom/inca/security/ie;->IIIiiiiIII:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IiiiIIIIii([B)Ljava/lang/String;
    .locals 15
    .param p0, "arg0"    # [B

    .prologue
    const/4 v3, 0x0

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/inca/security/ie;->IiiiIIIIii([BI)I

    move-result v0

    .line 115
    const/16 v8, 0x24

    .line 153
    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v9, v0, 0x24

    .line 25
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/inca/security/ie;->IiiiIIIIii([BI)I

    move-result v1

    move v0, v1

    move v2, v1

    .line 152
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x4

    if-ge v0, v4, :cond_1

    .line 119
    invoke-static {p0, v2}, Lcom/inca/security/ie;->IiiiIIIIii([BI)I

    move-result v0

    sget v4, Lcom/inca/security/ie;->IIIIiiIiII:I

    if-ne v0, v4, :cond_0

    .line 103
    :goto_1
    const/4 v0, -0x2

    move v4, v2

    move v2, v3

    .line 13
    :goto_2
    array-length v1, p0

    if-ge v4, v1, :cond_6

    .line 206
    invoke-static {p0, v4}, Lcom/inca/security/ie;->IiiiIIIIii([BI)I

    move-result v6

    .line 167
    add-int/lit8 v1, v4, 0x8

    invoke-static {p0, v1}, Lcom/inca/security/ie;->IiiiIIIIii([BI)I

    move-result v1

    .line 60
    add-int/lit8 v7, v4, 0x14

    invoke-static {p0, v7}, Lcom/inca/security/ie;->IiiiIIIIii([BI)I

    move-result v7

    .line 109
    sget v10, Lcom/inca/security/ie;->IIIIiiIiII:I

    if-ne v6, v10, :cond_4

    .line 173
    add-int/lit8 v0, v4, 0x24

    add-int/lit8 v4, v4, 0x1c

    invoke-static {p0, v4}, Lcom/inca/security/ie;->IiiiIIIIii([BI)I

    move-result v10

    .line 39
    invoke-static {p0, v8, v9, v7}, Lcom/inca/security/ie;->IiiiIIIIii([BIII)Ljava/lang/String;

    move-result-object v11

    .line 93
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move v6, v3

    move v4, v0

    move v0, v3

    .line 151
    :goto_3
    if-ge v0, v10, :cond_3

    .line 70
    add-int/lit8 v0, v4, 0x4

    invoke-static {p0, v0}, Lcom/inca/security/ie;->IiiiIIIIii([BI)I

    move-result v0

    .line 201
    add-int/lit8 v7, v4, 0x8

    invoke-static {p0, v7}, Lcom/inca/security/ie;->IiiiIIIIii([BI)I

    move-result v13

    .line 185
    add-int/lit8 v7, v4, 0x14

    add-int/lit8 v4, v4, 0x10

    invoke-static {p0, v4}, Lcom/inca/security/ie;->IiiiIIIIii([BI)I

    move-result v4

    .line 143
    invoke-static {p0, v8, v9, v0}, Lcom/inca/security/ie;->IiiiIIIIii([BIII)Ljava/lang/String;

    move-result-object v14

    .line 200
    const/4 v0, -0x1

    if-eq v13, v0, :cond_2

    .line 184
    invoke-static {p0, v8, v9, v13}, Lcom/inca/security/ie;->IiiiIIIIii([BIII)Ljava/lang/String;

    move-result-object v0

    .line 1
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "K"

    invoke-static {v13}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v3, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "<\u0016"

    invoke-static {v13}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "I"

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v6, v0

    move v4, v7

    .line 151
    goto :goto_3

    .line 152
    :cond_0
    add-int/lit8 v0, v2, 0x4

    move v2, v0

    goto/16 :goto_0

    :cond_1
    move v2, v1

    .line 194
    goto/16 :goto_1

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FdGnAsWd}E\u00141L"

    invoke-static {v13}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v3, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0008"

    invoke-static {v6}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "U"

    invoke-static {v6}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/inca/security/ie;->IiiiIIIIii(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    move v0, v1

    .line 76
    goto/16 :goto_2

    :cond_4
    sget v10, Lcom/inca/security/ie;->IiiIiiiIiI:I

    if-ne v6, v10, :cond_5

    .line 128
    add-int/lit8 v4, v4, 0x18

    .line 29
    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v8, v9, v7}, Lcom/inca/security/ie;->IiiiIIIIii([BIII)Ljava/lang/String;

    move-result-object v6

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=\u001b"

    invoke-static {v10}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v3, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "UcKk\u0007*\u0005&K"

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u0019"

    invoke-static {v7}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "B"

    invoke-static {v6}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inca/security/ie;->IiiiIIIIii(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 14
    :cond_5
    sget v0, Lcom/inca/security/ie;->IiIiIiiIii:I

    if-ne v6, v0, :cond_6

    move-object v0, v5

    .line 89
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    move-object v0, v5

    goto :goto_5
.end method

.method public static IiiiIIIIii([BI)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 43
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int v2, v0, v1

    .line 203
    new-array v3, v2, [B

    .line 149
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 186
    add-int/lit8 v0, p1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v0, v4

    aget-byte v4, p0, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v4, v3, v1

    move v1, v0

    .line 149
    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static IiiiIIIIii([BIII)Ljava/lang/String;
    .locals 1
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I

    .prologue
    .line 187
    if-gez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 71
    :cond_0
    mul-int/lit8 v0, p3, 0x4

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lcom/inca/security/ie;->IiiiIIIIii([BI)I

    move-result v0

    add-int/2addr v0, p2

    .line 18
    invoke-static {p0, v0}, Lcom/inca/security/ie;->IiiiIIIIii([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
