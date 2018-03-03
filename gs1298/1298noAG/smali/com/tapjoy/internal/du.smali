.class public abstract Lcom/tapjoy/internal/du;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/tapjoy/internal/du;

.field private static c:Lcom/tapjoy/internal/du;


# instance fields
.field protected volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/tapjoy/internal/ew;->a()V

    .line 23
    invoke-static {}, Lcom/tapjoy/internal/er;->a()V

    .line 28
    new-instance v0, Lcom/tapjoy/internal/dw;

    invoke-direct {v0}, Lcom/tapjoy/internal/dw;-><init>()V

    .line 29
    sput-object v0, Lcom/tapjoy/internal/du;->b:Lcom/tapjoy/internal/du;

    sput-object v0, Lcom/tapjoy/internal/du;->c:Lcom/tapjoy/internal/du;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/du;->a:Z

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/du;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/tapjoy/internal/du;->c:Lcom/tapjoy/internal/du;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
.end method

.method public abstract a(F)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(ILcom/tapjoy/TJAwardCurrencyListener;)V
.end method

.method public abstract a(ILcom/tapjoy/TJSpendCurrencyListener;)V
.end method

.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(Landroid/app/Activity;)V
.end method

.method public abstract a(Landroid/opengl/GLSurfaceView;)V
.end method

.method public abstract a(Lcom/tapjoy/TJEarnedCurrencyListener;)V
.end method

.method public abstract a(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
.end method

.method public abstract a(Lcom/tapjoy/TJVideoListener;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public abstract a(Ljava/util/Set;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Landroid/app/Activity;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(Z)V
.end method

.method public abstract c()F
.end method

.method public abstract c(Landroid/app/Activity;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract d()V
.end method

.method public abstract d(Ljava/lang/String;)V
.end method

.method public abstract e()V
.end method

.method public abstract e(Ljava/lang/String;)V
.end method

.method public abstract f()Ljava/util/Set;
.end method

.method public abstract f(Ljava/lang/String;)V
.end method

.method public abstract g()V
.end method

.method public abstract g(Ljava/lang/String;)V
.end method

.method public abstract h(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract h()Z
.end method

.method public abstract i()Z
.end method
