.class Lcom/igaworks/adpopcorn/cores/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/cores/c/a;->a(ILcom/igaworks/adpopcorn/cores/model/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/cores/c/a;

.field private final synthetic b:I

.field private final synthetic c:Lcom/igaworks/adpopcorn/cores/model/c;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/cores/c/a;ILcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    iput p2, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->b:I

    iput-object p3, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->c:Lcom/igaworks/adpopcorn/cores/model/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a;->b(Lcom/igaworks/adpopcorn/cores/c/a;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a;->b(Lcom/igaworks/adpopcorn/cores/c/a;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/c/a$c;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a;->b(Lcom/igaworks/adpopcorn/cores/c/a;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a;->b(Lcom/igaworks/adpopcorn/cores/c/a;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/c/a$c;

    iget v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->b:I

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->c:Lcom/igaworks/adpopcorn/cores/model/c;

    invoke-interface {v0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c/a$c;->onNetResponseListener(ILcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->b:I

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->c:Lcom/igaworks/adpopcorn/cores/model/c;

    invoke-interface {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/c/a$c;->onNetResponseListener(ILcom/igaworks/adpopcorn/cores/model/c;)V

    iget v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->b:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a;->b(Lcom/igaworks/adpopcorn/cores/c/a;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$1;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
