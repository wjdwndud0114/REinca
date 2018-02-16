.class final Lcom/tapjoy/internal/fr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/tapjoy/internal/fr;->c()Lcom/tapjoy/internal/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/cd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 31
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
