.class final Lcom/tapjoy/internal/ef$b;
.super Lcom/tapjoy/internal/dn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/tapjoy/internal/dk;->c:Lcom/tapjoy/internal/dk;

    const-class v1, Lcom/tapjoy/internal/ef;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/dn;-><init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V

    .line 136
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 133
    check-cast p1, Lcom/tapjoy/internal/ef;

    .line 3140
    iget-object v0, p1, Lcom/tapjoy/internal/ef;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/tapjoy/internal/ef;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_0
    iget-object v2, p1, Lcom/tapjoy/internal/ef;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/tapjoy/internal/ef;->e:Ljava/lang/String;

    .line 3141
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/ef;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v1, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/tapjoy/internal/ef;->f:Ljava/lang/String;

    .line 3142
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 3143
    invoke-virtual {p1}, Lcom/tapjoy/internal/ef;->a()Lcom/tapjoy/internal/hu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/hu;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    return v0

    :cond_1
    move v0, v1

    .line 3140
    goto :goto_0

    :cond_2
    move v2, v1

    .line 3141
    goto :goto_1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 133
    .line 1156
    new-instance v1, Lcom/tapjoy/internal/ef$a;

    invoke-direct {v1}, Lcom/tapjoy/internal/ef$a;-><init>()V

    .line 1157
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->a()J

    move-result-wide v2

    .line 1158
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->b()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 1159
    packed-switch v0, :pswitch_data_0

    .line 1164
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->c()Lcom/tapjoy/internal/dk;

    move-result-object v4

    .line 1165
    invoke-virtual {v4}, Lcom/tapjoy/internal/dk;->a()Lcom/tapjoy/internal/dn;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v5

    .line 1166
    invoke-virtual {v1, v0, v4, v5}, Lcom/tapjoy/internal/ef$a;->a(ILcom/tapjoy/internal/dk;Ljava/lang/Object;)Lcom/tapjoy/internal/dl$a;

    goto :goto_0

    .line 1160
    :pswitch_0
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2113
    iput-object v0, v1, Lcom/tapjoy/internal/ef$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 1161
    :pswitch_1
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2118
    iput-object v0, v1, Lcom/tapjoy/internal/ef$a;->d:Ljava/lang/String;

    goto :goto_0

    .line 1162
    :pswitch_2
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2123
    iput-object v0, v1, Lcom/tapjoy/internal/ef$a;->e:Ljava/lang/String;

    goto :goto_0

    .line 1170
    :cond_0
    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/do;->a(J)V

    .line 1171
    invoke-virtual {v1}, Lcom/tapjoy/internal/ef$a;->b()Lcom/tapjoy/internal/ef;

    move-result-object v0

    .line 133
    return-object v0

    .line 1159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/dp;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 133
    check-cast p2, Lcom/tapjoy/internal/ef;

    .line 2148
    iget-object v0, p2, Lcom/tapjoy/internal/ef;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/tapjoy/internal/ef;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2149
    :cond_0
    iget-object v0, p2, Lcom/tapjoy/internal/ef;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/tapjoy/internal/ef;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2150
    :cond_1
    iget-object v0, p2, Lcom/tapjoy/internal/ef;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/tapjoy/internal/ef;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2151
    :cond_2
    invoke-virtual {p2}, Lcom/tapjoy/internal/ef;->a()Lcom/tapjoy/internal/hu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dp;->a(Lcom/tapjoy/internal/hu;)V

    .line 133
    return-void
.end method
