.class final Lcom/tapjoy/internal/ga$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ga;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/internal/ga;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ga;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tapjoy/internal/ga$4;->b:Lcom/tapjoy/internal/ga;

    iput-object p2, p0, Lcom/tapjoy/internal/ga$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tapjoy/internal/ga$4;->b:Lcom/tapjoy/internal/ga;

    invoke-static {v0}, Lcom/tapjoy/internal/ga;->a(Lcom/tapjoy/internal/ga;)Lcom/tapjoy/internal/fo;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ga$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/fo;->c(Ljava/lang/String;)V

    .line 105
    return-void
.end method
