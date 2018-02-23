.class Lcom/moat/analytics/mobile/tjy/v;
.super Lcom/moat/analytics/mobile/tjy/MoatFactory;


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final a:Lcom/moat/analytics/mobile/tjy/bl;

.field private final b:Lcom/moat/analytics/mobile/tjy/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Lcom/moat/analytics/mobile/tjy/MoatFactory;-><init>()V

    new-instance v0, Lcom/moat/analytics/mobile/tjy/bm;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/tjy/bm;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/v;->a:Lcom/moat/analytics/mobile/tjy/bl;

    sget-object v0, Lcom/moat/analytics/mobile/tjy/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/moat/analytics/mobile/tjy/an;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/tjy/an;-><init>()V

    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/tjy/as;

    sget-object v2, Lcom/moat/analytics/mobile/tjy/ab;->a:Lcom/moat/analytics/mobile/tjy/ab;

    invoke-direct {v0, v2}, Lcom/moat/analytics/mobile/tjy/as;-><init>(Lcom/moat/analytics/mobile/tjy/aa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/moat/analytics/mobile/tjy/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/moat/analytics/mobile/tjy/c;

    sget-object v0, Lcom/moat/analytics/mobile/tjy/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/ap;

    invoke-direct {v1, p1, v0}, Lcom/moat/analytics/mobile/tjy/c;-><init>(Landroid/app/Activity;Lcom/moat/analytics/mobile/tjy/ap;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/tjy/v;->b:Lcom/moat/analytics/mobile/tjy/a;

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/v;->b:Lcom/moat/analytics/mobile/tjy/a;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/a;->b()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/tjy/NativeDisplayTracker;
    .locals 3

    invoke-static {p1}, Lcom/moat/analytics/mobile/tjy/base/asserts/a;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/moat/analytics/mobile/tjy/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/ap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/moat/analytics/mobile/tjy/y;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/moat/analytics/mobile/tjy/y;-><init>(Lcom/moat/analytics/mobile/tjy/v;Ljava/lang/ref/WeakReference;Lcom/moat/analytics/mobile/tjy/ap;Ljava/lang/String;)V

    new-instance v1, Lcom/moat/analytics/mobile/tjy/ag;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/tjy/ag;-><init>()V

    invoke-static {v0, v2, v1}, Lcom/moat/analytics/mobile/tjy/ay;->a(Lcom/moat/analytics/mobile/tjy/ap;Lcom/moat/analytics/mobile/tjy/ba;Lcom/moat/analytics/mobile/tjy/bc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/NativeDisplayTracker;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/moat/analytics/mobile/tjy/NativeVideoTracker;
    .locals 3

    sget-object v0, Lcom/moat/analytics/mobile/tjy/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/ap;

    new-instance v1, Lcom/moat/analytics/mobile/tjy/z;

    invoke-direct {v1, p0, v0, p1}, Lcom/moat/analytics/mobile/tjy/z;-><init>(Lcom/moat/analytics/mobile/tjy/v;Lcom/moat/analytics/mobile/tjy/ap;Ljava/lang/String;)V

    new-instance v2, Lcom/moat/analytics/mobile/tjy/ai;

    invoke-direct {v2}, Lcom/moat/analytics/mobile/tjy/ai;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/moat/analytics/mobile/tjy/ay;->a(Lcom/moat/analytics/mobile/tjy/ap;Lcom/moat/analytics/mobile/tjy/ba;Lcom/moat/analytics/mobile/tjy/bc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/NativeVideoTracker;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;
    .locals 3

    invoke-static {p1}, Lcom/moat/analytics/mobile/tjy/base/asserts/a;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/moat/analytics/mobile/tjy/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/ap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/moat/analytics/mobile/tjy/x;

    invoke-direct {v2, p0, v1, v0}, Lcom/moat/analytics/mobile/tjy/x;-><init>(Lcom/moat/analytics/mobile/tjy/v;Ljava/lang/ref/WeakReference;Lcom/moat/analytics/mobile/tjy/ap;)V

    new-instance v1, Lcom/moat/analytics/mobile/tjy/bk;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/tjy/bk;-><init>()V

    invoke-static {v0, v2, v1}, Lcom/moat/analytics/mobile/tjy/ay;->a(Lcom/moat/analytics/mobile/tjy/ap;Lcom/moat/analytics/mobile/tjy/ba;Lcom/moat/analytics/mobile/tjy/bc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/WebAdTracker;

    return-object v0
.end method

.method private a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;
    .locals 3

    invoke-static {p1}, Lcom/moat/analytics/mobile/tjy/base/asserts/a;->a(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lcom/moat/analytics/mobile/tjy/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/ap;

    new-instance v2, Lcom/moat/analytics/mobile/tjy/w;

    invoke-direct {v2, p0, v1, v0}, Lcom/moat/analytics/mobile/tjy/w;-><init>(Lcom/moat/analytics/mobile/tjy/v;Ljava/lang/ref/WeakReference;Lcom/moat/analytics/mobile/tjy/ap;)V

    new-instance v1, Lcom/moat/analytics/mobile/tjy/bk;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/tjy/bk;-><init>()V

    invoke-static {v0, v2, v1}, Lcom/moat/analytics/mobile/tjy/ay;->a(Lcom/moat/analytics/mobile/tjy/ap;Lcom/moat/analytics/mobile/tjy/ba;Lcom/moat/analytics/mobile/tjy/bc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/WebAdTracker;

    return-object v0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/tjy/v;)Lcom/moat/analytics/mobile/tjy/a;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/v;->b:Lcom/moat/analytics/mobile/tjy/a;

    return-object v0
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/tjy/v;)Lcom/moat/analytics/mobile/tjy/bl;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/v;->a:Lcom/moat/analytics/mobile/tjy/bl;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/moat/analytics/mobile/tjy/ac;)Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lcom/moat/analytics/mobile/tjy/v;->b:Lcom/moat/analytics/mobile/tjy/a;

    sget-object v0, Lcom/moat/analytics/mobile/tjy/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/ap;

    invoke-interface {p1, v1, v0}, Lcom/moat/analytics/mobile/tjy/ac;->a(Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createCustomTracker(Lcom/moat/analytics/mobile/tjy/ac;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/tjy/v;->a(Lcom/moat/analytics/mobile/tjy/ac;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    invoke-interface {p1}, Lcom/moat/analytics/mobile/tjy/ac;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/tjy/NativeDisplayTracker;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/tjy/v;->a(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/tjy/NativeDisplayTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/tjy/al;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/tjy/al;-><init>()V

    goto :goto_0
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/tjy/NativeVideoTracker;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/tjy/v;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/tjy/NativeVideoTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/tjy/am;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/tjy/am;-><init>()V

    goto :goto_0
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/tjy/v;->a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/tjy/ao;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/tjy/ao;-><init>()V

    goto :goto_0
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/tjy/v;->a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/tjy/ao;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/tjy/ao;-><init>()V

    goto :goto_0
.end method

.method public createWebDisplayTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/tjy/v;->createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;

    move-result-object v0

    return-object v0
.end method

.method public createWebDisplayTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/tjy/v;->createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;

    move-result-object v0

    return-object v0
.end method
