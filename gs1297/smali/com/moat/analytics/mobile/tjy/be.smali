.class Lcom/moat/analytics/mobile/tjy/be;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/bc;


# static fields
.field private static final a:Lcom/moat/analytics/mobile/tjy/base/functional/a;

.field private static final b:Lcom/moat/analytics/mobile/tjy/base/functional/a;

.field private static final c:Lcom/moat/analytics/mobile/tjy/base/functional/a;

.field private static final d:Lcom/moat/analytics/mobile/tjy/base/functional/a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    invoke-static {}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a()Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v3

    invoke-static {}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a()Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v2

    invoke-static {}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a()Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v4

    invoke-static {}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a()Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v0

    :try_start_0
    const-class v1, Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;

    const-string v5, "setDebug"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "trackVideoAd"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/util/Map;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/view/View;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Landroid/view/View;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "changeTargetView"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/view/View;

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v8, "dispatchEvent"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-static {v5}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v3

    invoke-static {v6}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v2

    invoke-static {v7}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-static {v8}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    sput-object v3, Lcom/moat/analytics/mobile/tjy/be;->a:Lcom/moat/analytics/mobile/tjy/base/functional/a;

    sput-object v2, Lcom/moat/analytics/mobile/tjy/be;->b:Lcom/moat/analytics/mobile/tjy/base/functional/a;

    sput-object v1, Lcom/moat/analytics/mobile/tjy/be;->c:Lcom/moat/analytics/mobile/tjy/base/functional/a;

    sput-object v0, Lcom/moat/analytics/mobile/tjy/be;->d:Lcom/moat/analytics/mobile/tjy/base/functional/a;

    return-void

    :catch_0
    move-exception v1

    move-object v12, v1

    move-object v1, v4

    move-object v4, v12

    :goto_1
    invoke-static {v4}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;

    return-object v0
.end method
