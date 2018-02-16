.class public Lcom/moat/analytics/mobile/tjy/u;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/tjy/u;->a:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/tjy/u;->b:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/tjy/u;->c:I

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/tjy/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "ob"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ob"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "sa"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8ace5ca5da6b9adb3c0f055aad4a98c2aedf4bd7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/tjy/u;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/tjy/u;->a:Z

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/tjy/u;->b:Z

    :cond_1
    const-string v1, "in"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "in"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_2

    iput v0, p0, Lcom/moat/analytics/mobile/tjy/u;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/moat/analytics/mobile/tjy/u;->a:Z

    iput-boolean v4, p0, Lcom/moat/analytics/mobile/tjy/u;->b:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/tjy/u;->c:I

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/tjy/u;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/tjy/u;->a:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/moat/analytics/mobile/tjy/u;->c:I

    return v0
.end method
