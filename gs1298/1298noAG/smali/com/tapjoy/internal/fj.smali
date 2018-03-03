.class public Lcom/tapjoy/internal/fj;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fj$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fj;->b:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 245
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 246
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 248
    :goto_0
    return-wide v0

    .line 247
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 248
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 250
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/tapjoy/internal/fj$a;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/tapjoy/internal/fj$a;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/fj$a;-><init>(Lcom/tapjoy/internal/fj;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/tapjoy/internal/fj;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tapjoy/internal/fj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/fj$a;

    .line 148
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fj$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 151
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 161
    :cond_1
    :goto_0
    return p2

    .line 152
    :cond_2
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 153
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    const/4 p2, 0x1

    goto :goto_0

    .line 155
    :cond_3
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/internal/fj;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/tapjoy/internal/fj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/fj$a;

    .line 223
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fj$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 226
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 236
    :goto_1
    return-wide v0

    .line 227
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 229
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_1

    .line 236
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Lcom/tapjoy/internal/fi;
    .locals 11

    .prologue
    .line 331
    iget-object v0, p0, Lcom/tapjoy/internal/fj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/fj$a;

    .line 332
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fj$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 333
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 334
    check-cast v0, Ljava/util/List;

    .line 336
    :try_start_0
    new-instance v1, Lcom/tapjoy/internal/fi;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/fj;->a(Ljava/lang/Object;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/tapjoy/internal/fj;->a(Ljava/lang/Object;)J

    move-result-wide v4

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/internal/fj;->a(Ljava/lang/Object;)J

    move-result-wide v6

    const/4 v8, 0x3

    .line 337
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1290
    instance-of v8, v0, Ljava/lang/Number;

    if-eqz v8, :cond_1

    .line 1291
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 337
    :goto_1
    invoke-direct/range {v1 .. v9}, Lcom/tapjoy/internal/fi;-><init>(JJJD)V

    .line 343
    :goto_2
    return-object v1

    .line 1292
    :cond_1
    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 1293
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    goto :goto_1

    .line 1295
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 343
    :cond_3
    sget-object v1, Lcom/tapjoy/internal/fi;->a:Lcom/tapjoy/internal/fi;

    goto :goto_2
.end method

.method protected setChanged()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 61
    invoke-virtual {p0}, Lcom/tapjoy/internal/fj;->notifyObservers()V

    .line 62
    return-void
.end method
