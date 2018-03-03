.class final Lcom/tapjoy/internal/ge$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/hq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ge;->a(Landroid/app/Activity;Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tapjoy/internal/ga;

.field final synthetic c:Lcom/tapjoy/internal/ge;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ge;Landroid/app/Activity;Lcom/tapjoy/internal/ga;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/tapjoy/internal/ge$4;->c:Lcom/tapjoy/internal/ge;

    iput-object p2, p0, Lcom/tapjoy/internal/ge$4;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/ge$4;->b:Lcom/tapjoy/internal/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tapjoy/internal/ge$4;->c:Lcom/tapjoy/internal/ge;

    .line 1038
    iget-object v0, v0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/e;

    .line 207
    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->cancel()V

    .line 208
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/gs;)V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tapjoy/internal/ge$4;->c:Lcom/tapjoy/internal/ge;

    .line 2038
    iget-object v0, v0, Lcom/tapjoy/internal/ge;->b:Lcom/tapjoy/internal/fz;

    .line 212
    iget-object v1, p0, Lcom/tapjoy/internal/ge$4;->c:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/gu;

    iget-object v1, v1, Lcom/tapjoy/internal/gu;->k:Ljava/util/Map;

    iget-object v2, p1, Lcom/tapjoy/internal/gs;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fz;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/tapjoy/internal/ge$4;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/tapjoy/internal/gs;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gg;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    iget-object v0, p1, Lcom/tapjoy/internal/gs;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/tapjoy/internal/ge$4;->c:Lcom/tapjoy/internal/ge;

    iget-object v0, v0, Lcom/tapjoy/internal/ge;->j:Lcom/tapjoy/internal/fs;

    iget-object v1, p0, Lcom/tapjoy/internal/ge$4;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/tapjoy/internal/gs;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/gs;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/ct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/fs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/tapjoy/internal/ge$4;->c:Lcom/tapjoy/internal/ge;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/ge;->i:Z

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ge$4;->b:Lcom/tapjoy/internal/ga;

    iget-object v1, p0, Lcom/tapjoy/internal/ge$4;->c:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/tapjoy/internal/gs;->g:Lcom/tapjoy/internal/fl;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;Lcom/tapjoy/internal/fl;)V

    .line 223
    iget-boolean v0, p1, Lcom/tapjoy/internal/gs;->c:Z

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/tapjoy/internal/ge$4;->c:Lcom/tapjoy/internal/ge;

    .line 3038
    iget-object v0, v0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/e;

    .line 224
    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->dismiss()V

    .line 226
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 230
    iget-object v1, p0, Lcom/tapjoy/internal/ge$4;->c:Lcom/tapjoy/internal/ge;

    iget-object v0, p0, Lcom/tapjoy/internal/ge$4;->c:Lcom/tapjoy/internal/ge;

    .line 4038
    iget-boolean v0, v0, Lcom/tapjoy/internal/ge;->g:Z

    .line 230
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5038
    :goto_0
    iput-boolean v0, v1, Lcom/tapjoy/internal/ge;->g:Z

    .line 231
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
