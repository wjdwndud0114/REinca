.class abstract Lcom/tapjoy/internal/fb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/tapjoy/internal/fb;

.field private static b:Lcom/tapjoy/internal/fb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/tapjoy/internal/fc;

    invoke-direct {v0}, Lcom/tapjoy/internal/fc;-><init>()V

    .line 11
    sput-object v0, Lcom/tapjoy/internal/fb;->a:Lcom/tapjoy/internal/fb;

    sput-object v0, Lcom/tapjoy/internal/fb;->b:Lcom/tapjoy/internal/fb;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/tapjoy/internal/fb;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/tapjoy/internal/fb;->b:Lcom/tapjoy/internal/fb;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Ljava/lang/Object;
.end method
