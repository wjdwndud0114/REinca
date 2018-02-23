.class Lcom/igaworks/adpopcorn/cores/c/a$d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


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

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$1;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$1;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->e(Lcom/igaworks/adpopcorn/cores/c/a$d;)Lcom/igaworks/adpopcorn/cores/c/a;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PostHttpRequestThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResult, adInfo : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$1;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->a(Lcom/igaworks/adpopcorn/cores/c/a$d;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$1;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a$d;->a(Lcom/igaworks/adpopcorn/cores/c/a$d;Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$1;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->b(Lcom/igaworks/adpopcorn/cores/c/a$d;)Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$1;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c/a$d;->e(Lcom/igaworks/adpopcorn/cores/c/a$d;)Lcom/igaworks/adpopcorn/cores/c/a;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$1;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->c(Lcom/igaworks/adpopcorn/cores/c/a$d;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$1;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->b(Lcom/igaworks/adpopcorn/cores/c/a$d;)Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d$1;->a:Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c/a$d;->e(Lcom/igaworks/adpopcorn/cores/c/a$d;)Lcom/igaworks/adpopcorn/cores/c/a;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
