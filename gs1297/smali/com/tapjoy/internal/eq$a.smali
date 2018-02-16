.class public final enum Lcom/tapjoy/internal/eq$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum RPC_ANALYTICS:Lcom/tapjoy/internal/eq$a;

.field public static final enum SDK_ANDROID:Lcom/tapjoy/internal/eq$a;

.field private static final synthetic b:[Lcom/tapjoy/internal/eq$a;


# instance fields
.field public a:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/tapjoy/internal/eq$a;

    const-string v1, "SDK_ANDROID"

    invoke-direct {v0, v1, v3, v5}, Lcom/tapjoy/internal/eq$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/tapjoy/internal/eq$a;->SDK_ANDROID:Lcom/tapjoy/internal/eq$a;

    .line 23
    new-instance v0, Lcom/tapjoy/internal/eq$a;

    const-string v1, "RPC_ANALYTICS"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v4, v2}, Lcom/tapjoy/internal/eq$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/tapjoy/internal/eq$a;->RPC_ANALYTICS:Lcom/tapjoy/internal/eq$a;

    .line 21
    new-array v0, v5, [Lcom/tapjoy/internal/eq$a;

    sget-object v1, Lcom/tapjoy/internal/eq$a;->SDK_ANDROID:Lcom/tapjoy/internal/eq$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/internal/eq$a;->RPC_ANALYTICS:Lcom/tapjoy/internal/eq$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tapjoy/internal/eq$a;->b:[Lcom/tapjoy/internal/eq$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-byte p3, p0, Lcom/tapjoy/internal/eq$a;->a:B

    .line 30
    return-void
.end method

.method public static a(B)Lcom/tapjoy/internal/eq$a;
    .locals 5

    .prologue
    .line 34
    invoke-static {}, Lcom/tapjoy/internal/eq$a;->values()[Lcom/tapjoy/internal/eq$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 35
    iget-byte v4, v0, Lcom/tapjoy/internal/eq$a;->a:B

    if-ne v4, p0, :cond_0

    .line 39
    :goto_1
    return-object v0

    .line 34
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/eq$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/tapjoy/internal/eq$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/eq$a;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/eq$a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/tapjoy/internal/eq$a;->b:[Lcom/tapjoy/internal/eq$a;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/eq$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/eq$a;

    return-object v0
.end method
