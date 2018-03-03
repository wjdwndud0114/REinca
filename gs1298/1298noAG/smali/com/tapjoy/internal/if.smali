.class public final Lcom/tapjoy/internal/if;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:[C


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 48
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tapjoy/internal/if;->a:[C

    .line 53
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tapjoy/internal/if;->b:[C

    return-void

    .line 48
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 53
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a([B)[C
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 98
    .line 1114
    sget-object v2, Lcom/tapjoy/internal/if;->a:[C

    .line 1130
    array-length v3, p0

    .line 1131
    shl-int/lit8 v1, v3, 0x1

    new-array v4, v1, [C

    move v1, v0

    .line 1133
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1134
    add-int/lit8 v5, v0, 0x1

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v2, v6

    aput-char v6, v4, v0

    .line 1135
    add-int/lit8 v0, v5, 0x1

    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v4, v5

    .line 1133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-object v4
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/if;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
