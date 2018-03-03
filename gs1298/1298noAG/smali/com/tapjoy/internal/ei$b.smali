.class final Lcom/tapjoy/internal/ei$b;
.super Lcom/tapjoy/internal/dn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/tapjoy/internal/dk;->c:Lcom/tapjoy/internal/dk;

    const-class v1, Lcom/tapjoy/internal/ei;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/dn;-><init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V

    .line 98
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 95
    check-cast p1, Lcom/tapjoy/internal/ei;

    .line 3102
    sget-object v0, Lcom/tapjoy/internal/eh;->c:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dn;->a()Lcom/tapjoy/internal/dn;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/tapjoy/internal/ei;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    .line 3103
    invoke-virtual {p1}, Lcom/tapjoy/internal/ei;->a()Lcom/tapjoy/internal/hu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/hu;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 95
    .line 1114
    new-instance v0, Lcom/tapjoy/internal/ei$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/ei$a;-><init>()V

    .line 1115
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->a()J

    move-result-wide v2

    .line 1116
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->b()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 1117
    packed-switch v1, :pswitch_data_0

    .line 1120
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->c()Lcom/tapjoy/internal/dk;

    move-result-object v4

    .line 1121
    invoke-virtual {v4}, Lcom/tapjoy/internal/dk;->a()Lcom/tapjoy/internal/dn;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v5

    .line 1122
    invoke-virtual {v0, v1, v4, v5}, Lcom/tapjoy/internal/ei$a;->a(ILcom/tapjoy/internal/dk;Ljava/lang/Object;)Lcom/tapjoy/internal/dl$a;

    goto :goto_0

    .line 1118
    :pswitch_0
    iget-object v1, v0, Lcom/tapjoy/internal/ei$a;->c:Ljava/util/List;

    sget-object v4, Lcom/tapjoy/internal/eh;->c:Lcom/tapjoy/internal/dn;

    invoke-virtual {v4, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1126
    :cond_0
    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/do;->a(J)V

    .line 1127
    invoke-virtual {v0}, Lcom/tapjoy/internal/ei$a;->b()Lcom/tapjoy/internal/ei;

    move-result-object v0

    .line 95
    return-object v0

    .line 1117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/dp;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 95
    check-cast p2, Lcom/tapjoy/internal/ei;

    .line 2108
    sget-object v0, Lcom/tapjoy/internal/eh;->c:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dn;->a()Lcom/tapjoy/internal/dn;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/tapjoy/internal/ei;->d:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2109
    invoke-virtual {p2}, Lcom/tapjoy/internal/ei;->a()Lcom/tapjoy/internal/hu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dp;->a(Lcom/tapjoy/internal/hu;)V

    .line 95
    return-void
.end method
