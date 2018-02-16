.class final Lcom/tapjoy/internal/gt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/gt;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gt;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gt;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tapjoy/internal/gt$1;->a:Lcom/tapjoy/internal/gt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tapjoy/internal/gt$1;->a:Lcom/tapjoy/internal/gt;

    invoke-static {v0}, Lcom/tapjoy/internal/gt;->a(Lcom/tapjoy/internal/gt;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gt$1;->a:Lcom/tapjoy/internal/gt;

    invoke-static {v0}, Lcom/tapjoy/internal/gt;->b(Lcom/tapjoy/internal/gt;)V

    goto :goto_0
.end method
