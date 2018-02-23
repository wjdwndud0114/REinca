.class Lcom/tnkfactory/ad/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private final c:Ljava/util/Map;

.field private final d:Landroid/os/Handler;

.field private e:Lcom/tnkfactory/ad/aa;

.field private f:Z

.field private g:Z

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/x;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/x;->c:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/x;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/x;->h:Landroid/content/Context;

    iput-object p1, p0, Lcom/tnkfactory/ad/x;->h:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/x;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/x;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/x;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tnkfactory/ad/x;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/x;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/x;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tnkfactory/ad/x;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tnkfactory/ad/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tnkfactory/ad/z;-><init>(Lcom/tnkfactory/ad/y;)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/tnkfactory/ad/z;->a:I

    if-eqz p2, :cond_1

    :try_start_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/tnkfactory/ad/z;->b:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/tnkfactory/ad/x;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tnkfactory/ad/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tnkfactory/ad/x;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tnkfactory/ad/z;

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/tnkfactory/ad/z;->a:I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    iput v3, v1, Lcom/tnkfactory/ad/z;->a:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/tnkfactory/ad/x;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/x;->h:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/x;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/z;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tnkfactory/ad/z;

    invoke-direct {v0, v5}, Lcom/tnkfactory/ad/z;-><init>(Lcom/tnkfactory/ad/y;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/x;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v3, v0, Lcom/tnkfactory/ad/z;->a:I

    move v0, v3

    :goto_1
    return v0

    :cond_1
    iget v1, v0, Lcom/tnkfactory/ad/z;->a:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-object v1, v0, Lcom/tnkfactory/ad/z;->b:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_2

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/tnkfactory/ad/z;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move v0, v2

    goto :goto_1

    :cond_3
    iput-object v5, v0, Lcom/tnkfactory/ad/z;->b:Ljava/lang/ref/SoftReference;

    goto :goto_0
.end method

.method static synthetic c(Lcom/tnkfactory/ad/x;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/x;->c:Ljava/util/Map;

    return-object v0
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/x;->f:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/tnkfactory/ad/x;->f:Z

    iget-object v0, p0, Lcom/tnkfactory/ad/x;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/tnkfactory/ad/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tnkfactory/ad/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tnkfactory/ad/x;->b(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/tnkfactory/ad/x;->c()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/x;->g:Z

    return-void
.end method

.method public a(Landroid/widget/ImageView;JJ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/x;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tnkfactory/ad/x;->b(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/tnkfactory/ad/x;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tnkfactory/ad/x;->c()V

    goto :goto_0
.end method

.method public a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tnkfactory/ad/x;->b(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/tnkfactory/ad/x;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tnkfactory/ad/x;->c()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/x;->g:Z

    iget-object v0, p0, Lcom/tnkfactory/ad/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tnkfactory/ad/x;->c()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iput-boolean v1, p0, Lcom/tnkfactory/ad/x;->f:Z

    iget-boolean v1, p0, Lcom/tnkfactory/ad/x;->g:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/x;->e:Lcom/tnkfactory/ad/aa;

    if-nez v1, :cond_1

    new-instance v1, Lcom/tnkfactory/ad/aa;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/aa;-><init>(Lcom/tnkfactory/ad/x;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/x;->e:Lcom/tnkfactory/ad/aa;

    iget-object v1, p0, Lcom/tnkfactory/ad/x;->e:Lcom/tnkfactory/ad/aa;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/aa;->start()V

    :cond_1
    iget-object v1, p0, Lcom/tnkfactory/ad/x;->e:Lcom/tnkfactory/ad/aa;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/aa;->a()V

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/tnkfactory/ad/x;->g:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/tnkfactory/ad/x;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
