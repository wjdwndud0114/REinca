.class final Lcom/tapjoy/internal/ga$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tapjoy/internal/fl;

.field final synthetic d:Lcom/tapjoy/internal/ga;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ga;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fl;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/tapjoy/internal/ga$7;->d:Lcom/tapjoy/internal/ga;

    iput-object p2, p0, Lcom/tapjoy/internal/ga$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/ga$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tapjoy/internal/ga$7;->c:Lcom/tapjoy/internal/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tapjoy/internal/ga$7;->d:Lcom/tapjoy/internal/ga;

    invoke-static {v0}, Lcom/tapjoy/internal/ga;->a(Lcom/tapjoy/internal/ga;)Lcom/tapjoy/internal/fo;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ga$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/ga$7;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/ga$7;->c:Lcom/tapjoy/internal/fl;

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/fo;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fl;)V

    .line 135
    return-void
.end method
