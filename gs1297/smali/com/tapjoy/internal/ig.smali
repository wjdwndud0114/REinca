.class public final Lcom/tapjoy/internal/ig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/internal/ig;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Throwable;

.field private d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/tapjoy/internal/ig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/ig;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/ig;->a:Lcom/tapjoy/internal/ig;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, v0}, Lcom/tapjoy/internal/ig;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/tapjoy/internal/ig;->b:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/tapjoy/internal/ig;->c:Ljava/lang/Throwable;

    .line 48
    if-nez p3, :cond_0

    .line 49
    iput-object p2, p0, Lcom/tapjoy/internal/ig;->d:[Ljava/lang/Object;

    .line 53
    :goto_0
    return-void

    .line 1056
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_2

    .line 1057
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "non-sensical empty or null argument array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_2
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 1060
    new-array v1, v0, [Ljava/lang/Object;

    .line 1061
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iput-object v1, p0, Lcom/tapjoy/internal/ig;->d:[Ljava/lang/Object;

    goto :goto_0
.end method
