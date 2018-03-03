.class Lcom/tnkfactory/ad/aa;
.super Landroid/os/HandlerThread;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/x;

.field private final b:Ljava/util/ArrayList;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/x;)V
    .locals 1

    iput-object p1, p0, Lcom/tnkfactory/ad/aa;->a:Lcom/tnkfactory/ad/x;

    const-string v0, "TnkAdIconLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/aa;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private b()V
    .locals 11

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/aa;->a:Lcom/tnkfactory/ad/x;

    iget-object v1, p0, Lcom/tnkfactory/ad/aa;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/x;->a(Lcom/tnkfactory/ad/x;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/aa;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tnkfactory/ad/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v10, v6, v8

    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tnkfactory/ad/w;->a()Lcom/tnkfactory/ad/w;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/aa;->a:Lcom/tnkfactory/ad/x;

    invoke-static {v1}, Lcom/tnkfactory/ad/x;->b(Lcom/tnkfactory/ad/x;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/tnkfactory/ad/w;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tnkfactory/ad/w;->a()Lcom/tnkfactory/ad/w;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/aa;->a:Lcom/tnkfactory/ad/x;

    invoke-static {v1}, Lcom/tnkfactory/ad/x;->b(Lcom/tnkfactory/ad/x;)Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/tnkfactory/ad/w;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tnkfactory/ad/aa;->a:Lcom/tnkfactory/ad/x;

    invoke-static {v1, v10, v0}, Lcom/tnkfactory/ad/x;->a(Lcom/tnkfactory/ad/x;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_3
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lcom/tnkfactory/ad/w;->a()Lcom/tnkfactory/ad/w;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/aa;->a:Lcom/tnkfactory/ad/x;

    invoke-static {v1}, Lcom/tnkfactory/ad/x;->b(Lcom/tnkfactory/ad/x;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/tnkfactory/ad/aa;->a:Lcom/tnkfactory/ad/x;

    invoke-static {v4}, Lcom/tnkfactory/ad/x;->c(Lcom/tnkfactory/ad/x;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/tnkfactory/ad/w;->a(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tnkfactory/ad/w;->a()Lcom/tnkfactory/ad/w;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/aa;->a:Lcom/tnkfactory/ad/x;

    invoke-static {v1}, Lcom/tnkfactory/ad/x;->b(Lcom/tnkfactory/ad/x;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tnkfactory/ad/w;->a(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tnkfactory/ad/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v7

    :goto_2
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/tnkfactory/ad/aa;->a:Lcom/tnkfactory/ad/x;

    iget-object v0, p0, Lcom/tnkfactory/ad/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/tnkfactory/ad/x;->a(Lcom/tnkfactory/ad/x;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/aa;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/tnkfactory/ad/aa;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/aa;->c:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/aa;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    invoke-direct {p0}, Lcom/tnkfactory/ad/aa;->b()V

    iget-object v0, p0, Lcom/tnkfactory/ad/aa;->a:Lcom/tnkfactory/ad/x;

    invoke-static {v0}, Lcom/tnkfactory/ad/x;->a(Lcom/tnkfactory/ad/x;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    return v0
.end method
