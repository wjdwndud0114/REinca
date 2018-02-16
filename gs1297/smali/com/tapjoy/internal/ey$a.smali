.class final Lcom/tapjoy/internal/ey$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ey;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/tapjoy/internal/el;

.field private volatile d:Z

.field private e:Lcom/tapjoy/TJPlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ey;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Lcom/tapjoy/internal/el;

    const-wide/16 v2, 0x2710

    invoke-direct {v0, v2, v3}, Lcom/tapjoy/internal/el;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lcom/tapjoy/internal/ey$a;-><init>(Lcom/tapjoy/internal/ey;Ljava/lang/Object;Lcom/tapjoy/internal/el;)V

    .line 122
    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/ey;Ljava/lang/Object;Lcom/tapjoy/internal/el;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/tapjoy/internal/ey$a;->a:Lcom/tapjoy/internal/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/tapjoy/internal/ey$a;->b:Ljava/lang/Object;

    .line 126
    iput-object p3, p0, Lcom/tapjoy/internal/ey$a;->c:Lcom/tapjoy/internal/el;

    .line 127
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ey$a;->a:Lcom/tapjoy/internal/ey;

    iget-object v1, p0, Lcom/tapjoy/internal/ey$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ey;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 175
    if-nez p1, :cond_1

    .line 176
    const-string v1, "SystemPlacement"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is presented now"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/ey$a;->d:Z

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ey$a;->e:Lcom/tapjoy/TJPlacement;

    .line 183
    sget-object v0, Lcom/tapjoy/internal/et;->a:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/et$a;->deleteObserver(Ljava/util/Observer;)V

    .line 184
    sget-object v0, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/et$a;->deleteObserver(Ljava/util/Observer;)V

    .line 185
    sget-object v0, Lcom/tapjoy/internal/et;->c:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/et$a;->deleteObserver(Ljava/util/Observer;)V

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v1, p0, Lcom/tapjoy/internal/ey$a;->a:Lcom/tapjoy/internal/ey;

    .line 1104
    monitor-enter v1

    .line 1105
    :try_start_1
    iget-object v0, v1, Lcom/tapjoy/internal/ey;->b:Lcom/tapjoy/internal/ey$a;

    if-ne v0, p0, :cond_0

    .line 1106
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/tapjoy/internal/ey;->b:Lcom/tapjoy/internal/ey$a;

    .line 1108
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 179
    :cond_1
    :try_start_2
    const-string v1, "SystemPlacement"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot show placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " now ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1108
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/ey$a;->d:Z

    if-eqz v0, :cond_0

    .line 132
    monitor-exit p0

    .line 169
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ey$a;->c:Lcom/tapjoy/internal/el;

    invoke-virtual {v0}, Lcom/tapjoy/internal/el;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const-string v0, "Timed out"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ey$a;->a(Ljava/lang/String;)V

    .line 137
    monitor-exit p0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 140
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    sget-object v0, Lcom/tapjoy/internal/et;->a:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/et$a;->addObserver(Ljava/util/Observer;)V

    .line 142
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    monitor-exit p0

    goto :goto_0

    .line 145
    :cond_2
    sget-object v0, Lcom/tapjoy/internal/et;->a:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/et$a;->deleteObserver(Ljava/util/Observer;)V

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/ey$a;->e:Lcom/tapjoy/TJPlacement;

    if-nez v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/tapjoy/internal/ey$a;->a:Lcom/tapjoy/internal/ey;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ey;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 150
    const-string v0, "Cannot request"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ey$a;->a(Ljava/lang/String;)V

    .line 151
    monitor-exit p0

    goto :goto_0

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/ey$a;->a:Lcom/tapjoy/internal/ey;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ey$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/tapjoy/internal/ey;->a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ey$a;->e:Lcom/tapjoy/TJPlacement;

    .line 155
    iget-object v0, p0, Lcom/tapjoy/internal/ey$a;->e:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    .line 156
    monitor-exit p0

    goto :goto_0

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/ey$a;->e:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->isContentReady()Z

    move-result v0

    if-nez v0, :cond_6

    .line 160
    monitor-exit p0

    goto :goto_0

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/tapjoy/internal/ey$a;->a:Lcom/tapjoy/internal/ey;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ey;->a(Ljava/util/Observer;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 164
    monitor-exit p0

    goto :goto_0

    .line 167
    :cond_7
    iget-object v0, p0, Lcom/tapjoy/internal/ey$a;->e:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->showContent()V

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ey$a;->a(Ljava/lang/String;)V

    .line 169
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 218
    .local p0, "this":Lcom/tapjoy/internal/ey$a;, "Lcom/tapjoy/internal/ey<TR;>.a;"
    return-void
.end method

.method public final onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 207
    .local p0, "this":Lcom/tapjoy/internal/ey$a;, "Lcom/tapjoy/internal/ey<TR;>.a;"
    invoke-virtual {p0}, Lcom/tapjoy/internal/ey$a;->a()V

    .line 208
    return-void
.end method

.method public final onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 213
    .local p0, "this":Lcom/tapjoy/internal/ey$a;, "Lcom/tapjoy/internal/ey<TR;>.a;"
    return-void
.end method

.method public final onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "request"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "productId"    # Ljava/lang/String;

    .prologue
    .line 224
    .local p0, "this":Lcom/tapjoy/internal/ey$a;, "Lcom/tapjoy/internal/ey<TR;>.a;"
    return-void
.end method

.method public final onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 1
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "error"    # Lcom/tapjoy/TJError;

    .prologue
    .line 202
    .local p0, "this":Lcom/tapjoy/internal/ey$a;, "Lcom/tapjoy/internal/ey<TR;>.a;"
    iget-object v0, p2, Lcom/tapjoy/TJError;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ey$a;->a(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public final onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 198
    .local p0, "this":Lcom/tapjoy/internal/ey$a;, "Lcom/tapjoy/internal/ey<TR;>.a;"
    return-void
.end method

.method public final onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .locals 0
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "request"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "quantity"    # I

    .prologue
    .line 230
    .local p0, "this":Lcom/tapjoy/internal/ey$a;, "Lcom/tapjoy/internal/ey<TR;>.a;"
    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 192
    .local p0, "this":Lcom/tapjoy/internal/ey$a;, "Lcom/tapjoy/internal/ey<TR;>.a;"
    invoke-virtual {p0}, Lcom/tapjoy/internal/ey$a;->a()V

    .line 193
    return-void
.end method
