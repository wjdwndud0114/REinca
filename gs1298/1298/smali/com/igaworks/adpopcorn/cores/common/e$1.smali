.class Lcom/igaworks/adpopcorn/cores/common/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/cores/common/e;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/cores/common/e;

.field private final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/cores/common/e;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Lcom/igaworks/adpopcorn/cores/common/e;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/e;->b(Lcom/igaworks/adpopcorn/cores/common/e;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/e;->c(Lcom/igaworks/adpopcorn/cores/common/e;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/e;->c(Lcom/igaworks/adpopcorn/cores/common/e;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    invoke-static {v1, v0}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Lcom/igaworks/adpopcorn/cores/common/e;Landroid/widget/ImageView;)Lcom/igaworks/adpopcorn/cores/common/e;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/common/e;->d(Lcom/igaworks/adpopcorn/cores/common/e;)Lcom/igaworks/adpopcorn/cores/common/e;

    move-result-object v2

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/common/e;->e(Lcom/igaworks/adpopcorn/cores/common/e;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/e;->e(Lcom/igaworks/adpopcorn/cores/common/e;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/e;->e(Lcom/igaworks/adpopcorn/cores/common/e;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/e;->f(Lcom/igaworks/adpopcorn/cores/common/e;)Lcom/igaworks/adpopcorn/cores/common/d$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->a:Lcom/igaworks/adpopcorn/cores/common/e;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/e;->f(Lcom/igaworks/adpopcorn/cores/common/e;)Lcom/igaworks/adpopcorn/cores/common/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e$1;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/igaworks/adpopcorn/cores/common/d$a;->a(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_0
.end method
