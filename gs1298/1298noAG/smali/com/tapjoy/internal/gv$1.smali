.class final Lcom/tapjoy/internal/gv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/tapjoy/internal/bs;)Landroid/graphics/Point;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/tapjoy/internal/bs;->h()V

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    invoke-virtual {p0}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v3, "offset"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/tapjoy/internal/bs;->h()V

    move v1, v2

    move v3, v2

    .line 52
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v4, "x"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/tapjoy/internal/bs;->r()I

    move-result v0

    move v3, v0

    goto :goto_1

    .line 56
    :cond_0
    const-string v4, "y"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/tapjoy/internal/bs;->r()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/bs;->i()V

    .line 63
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/bs;->i()V

    .line 69
    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 42
    .line 1078
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    move-object v1, v0

    move-object v2, v0

    .line 1080
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1081
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v3

    .line 1082
    const-string v4, "image"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1083
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v3

    .line 1084
    invoke-static {v3}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1085
    new-instance v0, Lcom/tapjoy/internal/gx;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/tapjoy/internal/gx;-><init>(Ljava/net/URL;)V

    goto :goto_0

    .line 1087
    :cond_1
    const-string v4, "landscape"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1088
    invoke-static {p1}, Lcom/tapjoy/internal/gv$1;->b(Lcom/tapjoy/internal/bs;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_0

    .line 1089
    :cond_2
    const-string v4, "portrait"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1090
    invoke-static {p1}, Lcom/tapjoy/internal/gv$1;->b(Lcom/tapjoy/internal/bs;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_0

    .line 1092
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_0

    .line 1095
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    .line 1097
    new-instance v3, Lcom/tapjoy/internal/gv;

    invoke-direct {v3, v0, v2, v1}, Lcom/tapjoy/internal/gv;-><init>(Lcom/tapjoy/internal/gx;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 42
    return-object v3
.end method
