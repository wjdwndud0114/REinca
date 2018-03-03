.class public Lcom/inca/security/Common/SecurityEventParser;
.super Ljava/lang/Object;
.source "SecurityEventParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/Common/SecurityEventParser$Process;
    }
.end annotation


# static fields
.field public static mInstance:Lcom/inca/security/Common/SecurityEventParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/inca/security/Common/SecurityEventParser;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/inca/security/Common/SecurityEventParser;->mInstance:Lcom/inca/security/Common/SecurityEventParser;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/inca/security/Common/SecurityEventParser;

    invoke-direct {v0}, Lcom/inca/security/Common/SecurityEventParser;-><init>()V

    sput-object v0, Lcom/inca/security/Common/SecurityEventParser;->mInstance:Lcom/inca/security/Common/SecurityEventParser;

    .line 18
    :cond_0
    sget-object v0, Lcom/inca/security/Common/SecurityEventParser;->mInstance:Lcom/inca/security/Common/SecurityEventParser;

    return-object v0
.end method


# virtual methods
.method public parse(II[B)[Ljava/lang/Object;
    .locals 18
    .param p1, "type"    # I
    .param p2, "code"    # I
    .param p3, "data"    # [B

    .prologue
    .line 22
    const/4 v7, 0x0

    .line 24
    .local v7, "result":[Ljava/lang/Object;
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object v8, v7

    .line 111
    .end local v7    # "result":[Ljava/lang/Object;
    .local v8, "result":[Ljava/lang/Object;
    :goto_1
    return-object v8

    .line 27
    .end local v8    # "result":[Ljava/lang/Object;
    .restart local v7    # "result":[Ljava/lang/Object;
    :pswitch_1
    const/4 v11, 0x0

    .line 28
    .local v11, "value":I
    const/4 v12, 0x3

    aget-byte v12, p3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    .line 29
    const/4 v12, 0x2

    aget-byte v12, p3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    .line 30
    const/4 v12, 0x1

    aget-byte v12, p3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    .line 31
    const/4 v12, 0x0

    aget-byte v12, p3, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    .line 33
    if-nez p2, :cond_0

    .line 34
    const/4 v12, 0x1

    new-array v7, v12, [Ljava/lang/Object;

    .line 35
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/String;

    const-string v14, "%08X"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v13, v7, v12

    goto :goto_0

    .line 37
    :cond_0
    const/4 v12, 0x1

    new-array v7, v12, [Ljava/lang/Object;

    .line 38
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v13, v7, v12

    goto :goto_0

    .line 44
    .end local v11    # "value":I
    :pswitch_2
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 48
    :sswitch_0
    const/4 v6, 0x4

    .line 49
    .local v6, "offset":I
    const/4 v12, 0x3

    aget-byte v12, p3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    const/4 v13, 0x2

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    add-int/2addr v12, v13

    const/4 v13, 0x1

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v12, v13

    const/4 v13, 0x0

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x0

    add-int v3, v12, v13

    .line 51
    .local v3, "entries":I
    new-array v7, v3, [Ljava/lang/Object;

    .line 53
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_1

    .line 54
    new-instance v12, Lcom/inca/security/Common/SecurityEventParser$Process;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/inca/security/Common/SecurityEventParser$Process;-><init>(Lcom/inca/security/Common/SecurityEventParser;)V

    aput-object v12, v7, v4

    .line 56
    aget-object v12, v7, v4

    check-cast v12, Lcom/inca/security/Common/SecurityEventParser$Process;

    add-int/lit8 v13, v6, 0x3

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    add-int/lit8 v14, v6, 0x2

    aget-byte v14, p3, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x1

    aget-byte v14, p3, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x0

    aget-byte v14, p3, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x0

    add-int/2addr v13, v14

    iput v13, v12, Lcom/inca/security/Common/SecurityEventParser$Process;->pid:I

    .line 57
    add-int/lit8 v6, v6, 0x4

    .line 58
    aget-object v12, v7, v4

    check-cast v12, Lcom/inca/security/Common/SecurityEventParser$Process;

    add-int/lit8 v13, v6, 0x3

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    add-int/lit8 v14, v6, 0x2

    aget-byte v14, p3, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x1

    aget-byte v14, p3, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x0

    aget-byte v14, p3, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x0

    add-int/2addr v13, v14

    iput v13, v12, Lcom/inca/security/Common/SecurityEventParser$Process;->ppid:I

    .line 59
    add-int/lit8 v6, v6, 0x4

    .line 60
    add-int/lit8 v12, v6, 0x3

    aget-byte v12, p3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, v6, 0x2

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    add-int/2addr v12, v13

    add-int/lit8 v13, v6, 0x1

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v12, v13

    add-int/lit8 v13, v6, 0x0

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x0

    add-int v9, v12, v13

    .line 61
    .local v9, "ulen":I
    add-int/lit8 v6, v6, 0x4

    .line 62
    new-array v10, v9, [B

    .line 63
    .local v10, "userBytes":[B
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v6, v10, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    add-int/2addr v6, v9

    .line 65
    add-int/lit8 v12, v6, 0x3

    aget-byte v12, p3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, v6, 0x2

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    add-int/2addr v12, v13

    add-int/lit8 v13, v6, 0x1

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v12, v13

    add-int/lit8 v13, v6, 0x0

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x0

    add-int v1, v12, v13

    .line 66
    .local v1, "clen":I
    add-int/lit8 v6, v6, 0x4

    .line 67
    new-array v2, v1, [B

    .line 68
    .local v2, "cmdlBytes":[B
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v6, v2, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    add-int/2addr v6, v1

    .line 71
    aget-object v12, v7, v4

    check-cast v12, Lcom/inca/security/Common/SecurityEventParser$Process;

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v10}, Ljava/lang/String;-><init>([B)V

    iput-object v13, v12, Lcom/inca/security/Common/SecurityEventParser$Process;->userid:Ljava/lang/String;

    .line 72
    aget-object v12, v7, v4

    check-cast v12, Lcom/inca/security/Common/SecurityEventParser$Process;

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v13, v12, Lcom/inca/security/Common/SecurityEventParser$Process;->cmdline:Ljava/lang/String;

    .line 53
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .end local v1    # "clen":I
    .end local v2    # "cmdlBytes":[B
    .end local v9    # "ulen":I
    .end local v10    # "userBytes":[B
    :cond_1
    move-object v8, v7

    .line 75
    .end local v7    # "result":[Ljava/lang/Object;
    .restart local v8    # "result":[Ljava/lang/Object;
    goto/16 :goto_1

    .line 86
    .end local v3    # "entries":I
    .end local v4    # "i":I
    .end local v6    # "offset":I
    .end local v8    # "result":[Ljava/lang/Object;
    .restart local v7    # "result":[Ljava/lang/Object;
    :sswitch_1
    const/4 v6, 0x4

    .line 87
    .restart local v6    # "offset":I
    const/4 v12, 0x3

    aget-byte v12, p3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    const/4 v13, 0x2

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    add-int/2addr v12, v13

    const/4 v13, 0x1

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v12, v13

    const/4 v13, 0x0

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x0

    add-int v3, v12, v13

    .line 89
    .restart local v3    # "entries":I
    new-array v7, v3, [Ljava/lang/Object;

    .line 91
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v3, :cond_2

    .line 92
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    aput-object v12, v7, v4

    .line 94
    add-int/lit8 v12, v6, 0x3

    aget-byte v12, p3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, v6, 0x2

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    add-int/2addr v12, v13

    add-int/lit8 v13, v6, 0x1

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v12, v13

    add-int/lit8 v13, v6, 0x0

    aget-byte v13, p3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x0

    add-int v1, v12, v13

    .line 95
    .restart local v1    # "clen":I
    add-int/lit8 v6, v6, 0x4

    .line 96
    new-array v5, v1, [B

    .line 97
    .local v5, "name_bytes":[B
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v6, v5, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    add-int/2addr v6, v1

    .line 100
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v12, v7, v4

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v1    # "clen":I
    .end local v5    # "name_bytes":[B
    :cond_2
    move-object v8, v7

    .line 103
    .end local v7    # "result":[Ljava/lang/Object;
    .restart local v8    # "result":[Ljava/lang/Object;
    goto/16 :goto_1

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_1
        0x9 -> :sswitch_1
        0x15 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1d -> :sswitch_1
        0x21 -> :sswitch_1
    .end sparse-switch
.end method
