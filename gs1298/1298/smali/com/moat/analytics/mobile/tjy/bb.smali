.class Lcom/moat/analytics/mobile/tjy/bb;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/tjy/ay;

.field private final b:[Ljava/lang/ref/WeakReference;

.field private final c:Ljava/util/LinkedList;

.field private final d:Ljava/lang/reflect/Method;


# direct methods
.method private varargs constructor <init>(Lcom/moat/analytics/mobile/tjy/ay;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/bb;->a:Lcom/moat/analytics/mobile/tjy/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/moat/analytics/mobile/tjy/bb;->c:Ljava/util/LinkedList;

    if-nez p3, :cond_0

    invoke-static {}, Lcom/moat/analytics/mobile/tjy/ay;->a()[Ljava/lang/Object;

    move-result-object p3

    :cond_0
    array-length v1, p3

    new-array v3, v1, [Ljava/lang/ref/WeakReference;

    array-length v4, p3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_3

    aget-object v5, p3, v0

    instance-of v2, v5, Ljava/util/Map;

    if-nez v2, :cond_1

    instance-of v2, v5, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/moat/analytics/mobile/tjy/bb;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v1, 0x1

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v6, v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_3
    iput-object v3, p0, Lcom/moat/analytics/mobile/tjy/bb;->b:[Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/moat/analytics/mobile/tjy/bb;->d:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/tjy/ay;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/tjy/az;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/tjy/bb;-><init>(Lcom/moat/analytics/mobile/tjy/ay;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/tjy/bb;)[Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/bb;->b:[Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/tjy/bb;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/bb;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method
