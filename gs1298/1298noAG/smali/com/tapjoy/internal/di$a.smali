.class public final enum Lcom/tapjoy/internal/di$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/di;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/di$a;

.field public static final enum b:Lcom/tapjoy/internal/di$a;

.field public static final enum c:Lcom/tapjoy/internal/di$a;

.field public static final enum d:Lcom/tapjoy/internal/di$a;

.field public static final enum e:Lcom/tapjoy/internal/di$a;

.field public static final enum f:Lcom/tapjoy/internal/di$a;

.field private static final synthetic g:[Lcom/tapjoy/internal/di$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    new-instance v0, Lcom/tapjoy/internal/di$a;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/internal/di$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/di$a;->a:Lcom/tapjoy/internal/di$a;

    .line 135
    new-instance v0, Lcom/tapjoy/internal/di$a;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/internal/di$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/di$a;->b:Lcom/tapjoy/internal/di$a;

    .line 140
    new-instance v0, Lcom/tapjoy/internal/di$a;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/tapjoy/internal/di$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/di$a;->c:Lcom/tapjoy/internal/di$a;

    .line 145
    new-instance v0, Lcom/tapjoy/internal/di$a;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v6}, Lcom/tapjoy/internal/di$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/di$a;->d:Lcom/tapjoy/internal/di$a;

    .line 151
    new-instance v0, Lcom/tapjoy/internal/di$a;

    const-string v1, "TERMINATED"

    invoke-direct {v0, v1, v7}, Lcom/tapjoy/internal/di$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/di$a;->e:Lcom/tapjoy/internal/di$a;

    .line 157
    new-instance v0, Lcom/tapjoy/internal/di$a;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/di$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/di$a;->f:Lcom/tapjoy/internal/di$a;

    .line 124
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tapjoy/internal/di$a;

    sget-object v1, Lcom/tapjoy/internal/di$a;->a:Lcom/tapjoy/internal/di$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/internal/di$a;->b:Lcom/tapjoy/internal/di$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tapjoy/internal/di$a;->c:Lcom/tapjoy/internal/di$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tapjoy/internal/di$a;->d:Lcom/tapjoy/internal/di$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tapjoy/internal/di$a;->e:Lcom/tapjoy/internal/di$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tapjoy/internal/di$a;->f:Lcom/tapjoy/internal/di$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tapjoy/internal/di$a;->g:[Lcom/tapjoy/internal/di$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/di$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    const-class v0, Lcom/tapjoy/internal/di$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/di$a;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/di$a;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/tapjoy/internal/di$a;->g:[Lcom/tapjoy/internal/di$a;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/di$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/di$a;

    return-object v0
.end method
