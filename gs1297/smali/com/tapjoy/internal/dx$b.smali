.class final Lcom/tapjoy/internal/dx$b;
.super Lcom/tapjoy/internal/dn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/tapjoy/internal/dk;->c:Lcom/tapjoy/internal/dk;

    const-class v1, Lcom/tapjoy/internal/dx;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/dn;-><init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V

    .line 177
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 174
    check-cast p1, Lcom/tapjoy/internal/dx;

    .line 3181
    iget-object v0, p1, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_0
    iget-object v2, p1, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/tapjoy/internal/dn;->d:Lcom/tapjoy/internal/dn;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    .line 3182
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v2

    :goto_1
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    .line 3183
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    .line 3184
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v1, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    .line 3185
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 3186
    invoke-virtual {p1}, Lcom/tapjoy/internal/dx;->a()Lcom/tapjoy/internal/hu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/hu;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    return v0

    :cond_1
    move v0, v1

    .line 3181
    goto :goto_0

    :cond_2
    move v2, v1

    .line 3182
    goto :goto_1

    :cond_3
    move v0, v1

    .line 3183
    goto :goto_2

    :cond_4
    move v0, v1

    .line 3184
    goto :goto_3
.end method

.method public final synthetic a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 174
    .line 1201
    new-instance v1, Lcom/tapjoy/internal/dx$a;

    invoke-direct {v1}, Lcom/tapjoy/internal/dx$a;-><init>()V

    .line 1202
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->a()J

    move-result-wide v2

    .line 1203
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->b()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 1204
    packed-switch v0, :pswitch_data_0

    .line 1211
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->c()Lcom/tapjoy/internal/dk;

    move-result-object v4

    .line 1212
    invoke-virtual {v4}, Lcom/tapjoy/internal/dk;->a()Lcom/tapjoy/internal/dn;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v5

    .line 1213
    invoke-virtual {v1, v0, v4, v5}, Lcom/tapjoy/internal/dx$a;->a(ILcom/tapjoy/internal/dk;Ljava/lang/Object;)Lcom/tapjoy/internal/dl$a;

    goto :goto_0

    .line 1205
    :pswitch_0
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2144
    iput-object v0, v1, Lcom/tapjoy/internal/dx$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 1206
    :pswitch_1
    sget-object v0, Lcom/tapjoy/internal/dn;->d:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2149
    iput-object v0, v1, Lcom/tapjoy/internal/dx$a;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 1207
    :pswitch_2
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2154
    iput-object v0, v1, Lcom/tapjoy/internal/dx$a;->e:Ljava/lang/String;

    goto :goto_0

    .line 1208
    :pswitch_3
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2159
    iput-object v0, v1, Lcom/tapjoy/internal/dx$a;->f:Ljava/lang/String;

    goto :goto_0

    .line 1209
    :pswitch_4
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2164
    iput-object v0, v1, Lcom/tapjoy/internal/dx$a;->g:Ljava/lang/String;

    goto :goto_0

    .line 1217
    :cond_0
    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/do;->a(J)V

    .line 1218
    invoke-virtual {v1}, Lcom/tapjoy/internal/dx$a;->b()Lcom/tapjoy/internal/dx;

    move-result-object v0

    .line 174
    return-object v0

    .line 1204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/dp;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 174
    check-cast p2, Lcom/tapjoy/internal/dx;

    .line 2191
    iget-object v0, p2, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2192
    :cond_0
    iget-object v0, p2, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/internal/dn;->d:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2193
    :cond_1
    iget-object v0, p2, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2194
    :cond_2
    iget-object v0, p2, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2195
    :cond_3
    iget-object v0, p2, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2196
    :cond_4
    invoke-virtual {p2}, Lcom/tapjoy/internal/dx;->a()Lcom/tapjoy/internal/hu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dp;->a(Lcom/tapjoy/internal/hu;)V

    .line 174
    return-void
.end method
