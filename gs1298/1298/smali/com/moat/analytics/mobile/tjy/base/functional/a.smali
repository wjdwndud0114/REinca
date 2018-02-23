.class public final Lcom/moat/analytics/mobile/tjy/base/functional/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/moat/analytics/mobile/tjy/base/functional/a;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/tjy/base/functional/a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/tjy/base/functional/a;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a:Lcom/moat/analytics/mobile/tjy/base/functional/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Optional of null value."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/moat/analytics/mobile/tjy/base/functional/a;
    .locals 1

    sget-object v0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a:Lcom/moat/analytics/mobile/tjy/base/functional/a;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/tjy/base/functional/a;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/tjy/base/functional/a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a()Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/moat/analytics/mobile/tjy/base/functional/a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/moat/analytics/mobile/tjy/base/functional/a;

    iget-object v2, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    iget-object v1, p1, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "Optional[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Optional.empty"

    goto :goto_0
.end method
