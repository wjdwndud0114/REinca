.class public abstract Lcom/tapjoy/internal/fa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fa$b;,
        Lcom/tapjoy/internal/fa$a;,
        Lcom/tapjoy/internal/fa$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field volatile b:I

.field c:Lcom/tapjoy/internal/fa$b;

.field d:J

.field e:Lcom/tapjoy/internal/fa$a;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private final g:Ljava/util/LinkedList;

.field private h:Lcom/tapjoy/internal/fa$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fa;->f:Ljava/util/concurrent/locks/Condition;

    .line 50
    sget v0, Lcom/tapjoy/internal/fa$c;->a:I

    iput v0, p0, Lcom/tapjoy/internal/fa;->b:I

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fa;->g:Ljava/util/LinkedList;

    .line 55
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/tapjoy/internal/fa;->d:J

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/fa;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/fa;->a(Z)V

    return-void
.end method


# virtual methods
.method final a()Lcom/tapjoy/internal/fa$a;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->h:Lcom/tapjoy/internal/fa$a;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->h:Lcom/tapjoy/internal/fa$a;

    iput-object v0, p0, Lcom/tapjoy/internal/fa;->e:Lcom/tapjoy/internal/fa$a;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/fa;->h:Lcom/tapjoy/internal/fa$a;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->e:Lcom/tapjoy/internal/fa$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v1, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method final a(I)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 121
    :try_start_0
    iget v0, p0, Lcom/tapjoy/internal/fa;->b:I

    .line 122
    iput p1, p0, Lcom/tapjoy/internal/fa;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method final a(Z)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 205
    :cond_0
    return-void

    .line 191
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->g:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 192
    iget-object v1, p0, Lcom/tapjoy/internal/fa;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    iget-object v1, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJConnectListener;

    .line 198
    if-eqz p1, :cond_2

    .line 199
    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 201
    :cond_2
    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    goto :goto_0
.end method

.method final a(J)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 229
    :try_start_0
    sget v0, Lcom/tapjoy/internal/fa$c;->d:I

    sget v1, Lcom/tapjoy/internal/fa$c;->c:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fa;->a(I)V

    .line 230
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->f:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/tapjoy/internal/fa;->d:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_0
    sget v0, Lcom/tapjoy/internal/fa$c;->c:I

    sget v1, Lcom/tapjoy/internal/fa$c;->d:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fa;->a(I)V

    .line 239
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v2

    .line 238
    :catch_0
    move-exception v0

    sget v0, Lcom/tapjoy/internal/fa$c;->c:I

    sget v1, Lcom/tapjoy/internal/fa$c;->d:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fa;->a(I)V

    .line 239
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    sget v1, Lcom/tapjoy/internal/fa$c;->c:I

    sget v2, Lcom/tapjoy/internal/fa$c;->d:I

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/fa;->a(I)V

    .line 239
    iget-object v1, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
.end method

.method final b()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 218
    const-wide/16 v0, 0x3e8

    :try_start_0
    iput-wide v0, p0, Lcom/tapjoy/internal/fa;->d:J

    .line 219
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 66
    iget-object v2, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 68
    if-eqz p4, :cond_0

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/internal/fa;->g:Ljava/util/LinkedList;

    const-class v3, Lcom/tapjoy/TJConnectListener;

    invoke-static {p4, v3}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 72
    :cond_0
    new-instance v2, Lcom/tapjoy/internal/fa$a;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tapjoy/internal/fa$a;-><init>(Lcom/tapjoy/internal/fa;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 75
    sget-object v3, Lcom/tapjoy/internal/fa$3;->a:[I

    iget v4, p0, Lcom/tapjoy/internal/fa;->b:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 98
    sget v0, Lcom/tapjoy/internal/fa$c;->a:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fa;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    :goto_0
    return v0

    .line 77
    :pswitch_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/fa;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    iget-object v1, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1141
    :pswitch_1
    :try_start_2
    iput-object v2, p0, Lcom/tapjoy/internal/fa;->e:Lcom/tapjoy/internal/fa$a;

    .line 1143
    sget-object v3, Lcom/tapjoy/internal/et;->b:Lcom/tapjoy/internal/et$a;

    new-instance v4, Lcom/tapjoy/internal/fa$1;

    invoke-direct {v4, p0}, Lcom/tapjoy/internal/fa$1;-><init>(Lcom/tapjoy/internal/fa;)V

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/et$a;->addObserver(Ljava/util/Observer;)V

    .line 1155
    iget-object v3, v2, Lcom/tapjoy/internal/fa$a;->a:Landroid/content/Context;

    iget-object v4, v2, Lcom/tapjoy/internal/fa$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/tapjoy/internal/fa$a;->c:Ljava/util/Hashtable;

    new-instance v5, Lcom/tapjoy/internal/fa$2;

    invoke-direct {v5, p0}, Lcom/tapjoy/internal/fa$2;-><init>(Lcom/tapjoy/internal/fa;)V

    .line 1156
    invoke-virtual {p0, v3, v4, v2, v5}, Lcom/tapjoy/internal/fa;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    sget v1, Lcom/tapjoy/internal/fa$c;->b:I

    sget v2, Lcom/tapjoy/internal/fa$c;->a:I

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/fa;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    iget-object v1, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 84
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    .line 88
    :pswitch_2
    :try_start_4
    iput-object v2, p0, Lcom/tapjoy/internal/fa;->h:Lcom/tapjoy/internal/fa$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
    iget-object v1, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 91
    :pswitch_3
    :try_start_5
    iput-object v2, p0, Lcom/tapjoy/internal/fa;->h:Lcom/tapjoy/internal/fa$a;

    .line 92
    invoke-virtual {p0}, Lcom/tapjoy/internal/fa;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 102
    iget-object v1, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
