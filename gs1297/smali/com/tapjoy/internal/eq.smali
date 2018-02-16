.class public final Lcom/tapjoy/internal/eq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/eq$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/tapjoy/internal/eq$a;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 78
    const-string v1, "[A-Za-z0-9\\-_]*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given API key was malformed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    const/16 v0, 0x8

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    array-length v1, v0

    .line 91
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 92
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 95
    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    .line 96
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    .line 97
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 98
    invoke-virtual {v5, v0, v8, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 99
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v3, v6

    .line 100
    if-eq v4, v3, :cond_2

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given API key was invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The given API key was malformed."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 104
    :cond_2
    iput-object p1, p0, Lcom/tapjoy/internal/eq;->e:Ljava/lang/String;

    .line 106
    new-instance v3, Ljava/util/UUID;

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 107
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/eq;->b:Ljava/lang/String;

    .line 108
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    iput v3, p0, Lcom/tapjoy/internal/eq;->f:I

    .line 109
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/tapjoy/internal/eq$a;->a(B)Lcom/tapjoy/internal/eq$a;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/eq;->a:Lcom/tapjoy/internal/eq$a;

    .line 110
    const/16 v2, 0x18

    const/16 v3, 0x2c

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/eq;->c:Ljava/lang/String;

    .line 113
    iget v2, p0, Lcom/tapjoy/internal/eq;->f:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/eq;->d:Ljava/lang/String;

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_3
    iget v2, p0, Lcom/tapjoy/internal/eq;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/tapjoy/internal/eq;->a:Lcom/tapjoy/internal/eq$a;

    sget-object v3, Lcom/tapjoy/internal/eq$a;->SDK_ANDROID:Lcom/tapjoy/internal/eq$a;

    if-ne v2, v3, :cond_5

    .line 116
    const/16 v2, 0x39

    if-ge v1, v2, :cond_4

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given API key was invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_4
    new-array v1, v10, [B

    .line 120
    const/16 v2, 0x21

    invoke-static {v0, v2, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/if;->a([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/tapjoy/internal/eq;->d:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given API key was not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 129
    instance-of v0, p1, Lcom/tapjoy/internal/eq;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/tapjoy/internal/eq;->e:Ljava/lang/String;

    check-cast p1, Lcom/tapjoy/internal/eq;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/tapjoy/internal/eq;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 132
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tapjoy/internal/eq;->e:Ljava/lang/String;

    return-object v0
.end method
