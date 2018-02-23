.class public Lcom/inca/security/ua;
.super Ljava/lang/Object;
.source "la"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v3, v1, -0x1

    xor-int/lit8 v0, v0, 0x4a

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x34

    int-to-char v1, v1

    aput-char v1, v2, v3

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static IiiiIIIIii(Ljava/lang/String;)[B
    .locals 6
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 49
    new-array v1, v4, [B

    .line 31
    array-length v2, v0

    add-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    .line 98
    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 99
    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    array-length v3, v0

    invoke-static {v3, v1}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 132
    invoke-static {v1, v5, v2, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    const/16 v1, 0x8

    array-length v3, v0

    invoke-static {v0, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    return-object v2
.end method
