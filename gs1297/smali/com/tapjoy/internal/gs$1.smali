.class final Lcom/tapjoy/internal/gs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 34
    .line 1039
    const/4 v3, 0x0

    .line 1040
    const-string v4, ""

    .line 1045
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    move-object v6, v7

    move-object v5, v7

    move-object v2, v7

    move-object v1, v7

    .line 1047
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1048
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v0

    .line 1049
    const-string v8, "region"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1050
    sget-object v0, Lcom/tapjoy/internal/bo;->b:Lcom/tapjoy/internal/bn;

    .line 1213
    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;

    move-result-object v0

    .line 1050
    check-cast v0, Landroid/graphics/Rect;

    move-object v1, v0

    goto :goto_0

    .line 1051
    :cond_0
    const-string v8, "value"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1052
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1053
    :cond_1
    const-string v8, "dismiss"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1054
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->n()Z

    move-result v3

    goto :goto_0

    .line 1055
    :cond_2
    const-string v8, "url"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1056
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1057
    :cond_3
    const-string v8, "redirect_url"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1058
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->b()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1059
    :cond_4
    const-string v8, "ad_content"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1060
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->b()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1061
    :cond_5
    invoke-static {v0}, Lcom/tapjoy/internal/go;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1062
    invoke-static {v0, p1}, Lcom/tapjoy/internal/go;->a(Ljava/lang/String;Lcom/tapjoy/internal/bs;)Lcom/tapjoy/internal/go;

    move-result-object v7

    goto :goto_0

    .line 1064
    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_0

    .line 1067
    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    .line 1069
    new-instance v0, Lcom/tapjoy/internal/gs;

    invoke-direct/range {v0 .. v7}, Lcom/tapjoy/internal/gs;-><init>(Landroid/graphics/Rect;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fl;)V

    .line 34
    return-object v0
.end method
