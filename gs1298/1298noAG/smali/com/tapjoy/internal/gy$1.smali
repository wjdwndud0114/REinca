.class final Lcom/tapjoy/internal/gy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 44
    .line 1049
    const/4 v1, 0x1

    .line 1052
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    move-object v2, v0

    move-object v3, v0

    .line 1054
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1055
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v4

    .line 1056
    const-string v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1057
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1058
    :cond_0
    const-string v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1059
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1060
    :cond_1
    const-string v5, "quantity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1061
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->r()I

    move-result v1

    goto :goto_0

    .line 1062
    :cond_2
    const-string v5, "token"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1063
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1065
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_0

    .line 1068
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    .line 1070
    new-instance v4, Lcom/tapjoy/internal/gy;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/tapjoy/internal/gy;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    return-object v4
.end method
