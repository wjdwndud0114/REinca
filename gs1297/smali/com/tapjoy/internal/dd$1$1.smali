.class final Lcom/tapjoy/internal/dd$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/dd$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/dd$1;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/dd$1;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tapjoy/internal/dd$1$1;->a:Lcom/tapjoy/internal/dd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/dd$1$1;->a:Lcom/tapjoy/internal/dd$1;

    iget-object v0, v0, Lcom/tapjoy/internal/dd$1;->a:Lcom/tapjoy/internal/dd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dd;->a()V

    .line 48
    iget-object v0, p0, Lcom/tapjoy/internal/dd$1$1;->a:Lcom/tapjoy/internal/dd$1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dd$1;->c()V

    .line 50
    iget-object v0, p0, Lcom/tapjoy/internal/dd$1$1;->a:Lcom/tapjoy/internal/dd$1;

    .line 1221
    invoke-virtual {v0}, Lcom/tapjoy/internal/df;->f()Lcom/tapjoy/internal/di$a;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/di$a;->c:Lcom/tapjoy/internal/di$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 50
    :goto_0
    if-eqz v0, :cond_0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/dd$1$1;->a:Lcom/tapjoy/internal/dd$1;

    iget-object v0, v0, Lcom/tapjoy/internal/dd$1;->a:Lcom/tapjoy/internal/dd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dd;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/internal/dd$1$1;->a:Lcom/tapjoy/internal/dd$1;

    iget-object v0, v0, Lcom/tapjoy/internal/dd$1;->a:Lcom/tapjoy/internal/dd;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dd;->c()V

    .line 65
    iget-object v0, p0, Lcom/tapjoy/internal/dd$1$1;->a:Lcom/tapjoy/internal/dd$1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dd$1;->d()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 69
    return-void

    .line 1221
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 55
    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/internal/dd$1$1;->a:Lcom/tapjoy/internal/dd$1;

    iget-object v1, v1, Lcom/tapjoy/internal/dd$1;->a:Lcom/tapjoy/internal/dd;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dd;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 60
    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 66
    :catch_1
    move-exception v0

    .line 67
    iget-object v1, p0, Lcom/tapjoy/internal/dd$1$1;->a:Lcom/tapjoy/internal/dd$1;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/dd$1;->a(Ljava/lang/Throwable;)V

    .line 68
    invoke-static {v0}, Lcom/tapjoy/internal/cu;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 56
    :catch_2
    move-exception v1

    .line 57
    :try_start_5
    invoke-static {}, Lcom/tapjoy/internal/dd;->g()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method
