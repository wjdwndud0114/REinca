.class Lcom/igaworks/adpopcorn/cores/c/a$d$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/cores/c/a$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/cores/c/a$d;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/cores/c/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$2;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$2;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->d(Lcom/igaworks/adpopcorn/cores/c/a$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$2;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->e(Lcom/igaworks/adpopcorn/cores/c/a$d;)Lcom/igaworks/adpopcorn/cores/c/a;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PostHttpRequestThread"

    const-string v2, "AdInfo timeout"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$2;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->b(Lcom/igaworks/adpopcorn/cores/c/a$d;)Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$2;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c/a$d;->e(Lcom/igaworks/adpopcorn/cores/c/a$d;)Lcom/igaworks/adpopcorn/cores/c/a;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$2;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->c(Lcom/igaworks/adpopcorn/cores/c/a$d;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$2;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a$d;->a(Lcom/igaworks/adpopcorn/cores/c/a$d;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$2;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->a(Lcom/igaworks/adpopcorn/cores/c/a$d;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a$d;->a(Lcom/igaworks/adpopcorn/cores/c/a$d;I)V

    :cond_0
    return-void
.end method
