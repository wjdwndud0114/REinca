.class Lcom/igaworks/adpopcorn/cores/c$a$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/cores/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/cores/c$a;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/cores/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c$a;->b(Lcom/igaworks/adpopcorn/cores/c$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c$a;->a(Lcom/igaworks/adpopcorn/cores/c$a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ADIDThread"

    const-string v2, "AdInfo timeout"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c$a;->c(Lcom/igaworks/adpopcorn/cores/c$a;)Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/c$a;->a(Lcom/igaworks/adpopcorn/cores/c$a;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "adpopcorn_parameter"

    const-string v4, "google_ad_id"

    const-string v5, ""

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igaworks/adpopcorn/cores/c;->a(Lcom/igaworks/adpopcorn/cores/c;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c$a;->c(Lcom/igaworks/adpopcorn/cores/c$a;)Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/c$a;->a(Lcom/igaworks/adpopcorn/cores/c$a;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "adpopcorn_parameter"

    const-string v4, "optout_enabled"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/igaworks/adpopcorn/cores/c;->a(Lcom/igaworks/adpopcorn/cores/c;Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c$a;->a(Lcom/igaworks/adpopcorn/cores/c$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c$a;->a(Lcom/igaworks/adpopcorn/cores/c$a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/d;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c$a;->c(Lcom/igaworks/adpopcorn/cores/c$a;)Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c$a;->c(Lcom/igaworks/adpopcorn/cores/c$a;)Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c$a;->a(Lcom/igaworks/adpopcorn/cores/c$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c$a;->c(Lcom/igaworks/adpopcorn/cores/c$a;)Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c;->a(Lcom/igaworks/adpopcorn/cores/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a$2;->a:Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c$a;->c(Lcom/igaworks/adpopcorn/cores/c$a;)Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/c;->c(Z)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
