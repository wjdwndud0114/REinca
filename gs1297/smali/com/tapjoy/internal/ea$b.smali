.class final Lcom/tapjoy/internal/ea$b;
.super Lcom/tapjoy/internal/dn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/tapjoy/internal/dk;->c:Lcom/tapjoy/internal/dk;

    const-class v1, Lcom/tapjoy/internal/ea;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/dn;-><init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V

    .line 143
    return-void
.end method

.method private static b(Lcom/tapjoy/internal/do;)Lcom/tapjoy/internal/ea;
    .locals 8

    .prologue
    .line 163
    new-instance v1, Lcom/tapjoy/internal/ea$a;

    invoke-direct {v1}, Lcom/tapjoy/internal/ea$a;-><init>()V

    .line 164
    invoke-virtual {p0}, Lcom/tapjoy/internal/do;->a()J

    move-result-wide v2

    .line 165
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/do;->b()I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    .line 166
    packed-switch v4, :pswitch_data_0

    .line 178
    invoke-virtual {p0}, Lcom/tapjoy/internal/do;->c()Lcom/tapjoy/internal/dk;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->a()Lcom/tapjoy/internal/dn;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v5

    .line 180
    invoke-virtual {v1, v4, v0, v5}, Lcom/tapjoy/internal/ea$a;->a(ILcom/tapjoy/internal/dk;Ljava/lang/Object;)Lcom/tapjoy/internal/dl$a;

    goto :goto_0

    .line 169
    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/eb;->ADAPTER:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/eb;

    .line 1115
    iput-object v0, v1, Lcom/tapjoy/internal/ea$a;->c:Lcom/tapjoy/internal/eb;
    :try_end_0
    .catch Lcom/tapjoy/internal/dn$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    sget-object v5, Lcom/tapjoy/internal/dk;->a:Lcom/tapjoy/internal/dk;

    iget v0, v0, Lcom/tapjoy/internal/dn$a;->a:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lcom/tapjoy/internal/ea$a;->a(ILcom/tapjoy/internal/dk;Ljava/lang/Object;)Lcom/tapjoy/internal/dl$a;

    goto :goto_0

    .line 175
    :pswitch_1
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1120
    iput-object v0, v1, Lcom/tapjoy/internal/ea$a;->d:Ljava/lang/String;

    goto :goto_0

    .line 176
    :pswitch_2
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1125
    iput-object v0, v1, Lcom/tapjoy/internal/ea$a;->e:Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/tapjoy/internal/do;->a(J)V

    .line 185
    invoke-virtual {v1}, Lcom/tapjoy/internal/ea$a;->b()Lcom/tapjoy/internal/ea;

    move-result-object v0

    return-object v0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 140
    check-cast p1, Lcom/tapjoy/internal/ea;

    .line 2147
    sget-object v0, Lcom/tapjoy/internal/eb;->ADAPTER:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/tapjoy/internal/ea;->e:Lcom/tapjoy/internal/eb;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/tapjoy/internal/ea;->f:Ljava/lang/String;

    .line 2148
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p1, Lcom/tapjoy/internal/ea;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/tapjoy/internal/ea;->g:Ljava/lang/String;

    .line 2149
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 2150
    invoke-virtual {p1}, Lcom/tapjoy/internal/ea;->a()Lcom/tapjoy/internal/hu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/hu;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    return v0

    .line 2149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-static {p1}, Lcom/tapjoy/internal/ea$b;->b(Lcom/tapjoy/internal/do;)Lcom/tapjoy/internal/ea;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/dp;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 140
    check-cast p2, Lcom/tapjoy/internal/ea;

    .line 1155
    sget-object v0, Lcom/tapjoy/internal/eb;->ADAPTER:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/tapjoy/internal/ea;->e:Lcom/tapjoy/internal/eb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 1156
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/tapjoy/internal/ea;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 1157
    iget-object v0, p2, Lcom/tapjoy/internal/ea;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/tapjoy/internal/ea;->g:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 1158
    :cond_0
    invoke-virtual {p2}, Lcom/tapjoy/internal/ea;->a()Lcom/tapjoy/internal/hu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dp;->a(Lcom/tapjoy/internal/hu;)V

    .line 140
    return-void
.end method
