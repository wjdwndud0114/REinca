.class public Lcom/igaworks/adpopcorn/cores/d/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/igaworks/adpopcorn/cores/d/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/cores/d/b/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/igaworks/adpopcorn/cores/b/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/cores/d/b/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/cores/d/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/cores/d/b/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/igaworks/adpopcorn/cores/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "app_key"

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "usn"

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "adid"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "client_verify"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signature"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d/b/b;->c:Ljava/lang/String;

    return-object v0
.end method
