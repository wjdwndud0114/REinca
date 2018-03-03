.class Lcom/moat/analytics/mobile/tjy/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/bc;


# static fields
.field private static final a:Lcom/moat/analytics/mobile/tjy/base/functional/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a()Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v0

    :try_start_0
    const-class v1, Lcom/moat/analytics/mobile/tjy/WebAdTracker;

    const-string v2, "track"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/moat/analytics/mobile/tjy/bk;->a:Lcom/moat/analytics/mobile/tjy/base/functional/a;

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/moat/analytics/mobile/tjy/WebAdTracker;

    return-object v0
.end method
