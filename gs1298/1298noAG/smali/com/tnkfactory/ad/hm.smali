.class Lcom/tnkfactory/ad/hm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/hw;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/hl;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/hl;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/hm;->a:Lcom/tnkfactory/ad/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    move v2, v1

    move v3, v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0

    :cond_1
    check-cast p2, Lcom/tnkfactory/framework/vo/ValueObject;

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    invoke-virtual {p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    const-string v4, "app_id"

    invoke-virtual {p2, v0, v4}, Lcom/tnkfactory/framework/vo/ValueObject;->getLong(ILjava/lang/String;)J

    move-result-wide v4

    const-string v6, "app_pkg"

    invoke-virtual {p2, v0, v6}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v4, v5}, Lcom/tnkfactory/ad/ia;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "pnt_amt"

    invoke-virtual {p2, v0, v8}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(ILjava/lang/String;)I

    move-result v8

    if-eqz v7, :cond_3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v8

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1, v6}, Lcom/tnkfactory/ad/in;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v1}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v8

    goto :goto_1
.end method
