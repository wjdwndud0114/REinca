.class public abstract Lcom/tapjoy/internal/r;
.super Lcom/tapjoy/internal/s;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/tapjoy/internal/t;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/t;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/tapjoy/internal/s;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/r;->c:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    .line 55
    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 278
    const-string v1, "app"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    return-void
.end method

.method private b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v2, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/tapjoy/internal/t;->e(Landroid/content/Context;)Z

    move-result v1

    .line 81
    if-eqz v1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v3, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/tapjoy/internal/t;->f(Landroid/content/Context;)J

    move-result-wide v2

    .line 84
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 86
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/sql/Timestamp;

    invoke-direct {v4, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    aput-object v4, v1, v0

    .line 90
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.gms"

    invoke-static {v2, v3}, Lcom/tapjoy/internal/ae;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v2

    .line 208
    const v3, 0x30345a

    if-lt v2, v3, :cond_1

    .line 209
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    .line 210
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-static {p0, v2}, Lcom/tapjoy/internal/r;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 213
    const-string v3, "sender"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 214
    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .line 221
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.gsf"

    invoke-static {v2, v3}, Lcom/tapjoy/internal/ae;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v2

    .line 227
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    .line 228
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    const-string v3, "com.google.android.gsf"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-static {p0, v2}, Lcom/tapjoy/internal/r;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 231
    const-string v3, "sender"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 235
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 232
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v1, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/tapjoy/internal/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v1, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/t;->a(Landroid/content/Context;Z)V

    .line 195
    iget-boolean v0, p0, Lcom/tapjoy/internal/r;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/r;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/r;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private declared-synchronized f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/r;->a(Landroid/content/Context;)V

    .line 382
    iget-object v0, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v1, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/t;->a(Landroid/content/Context;Z)V

    .line 383
    iget-object v0, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/ae;->a(Landroid/content/Context;)I

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v2, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/tapjoy/internal/t;->a(Landroid/content/Context;I)V

    .line 386
    iget-object v0, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v1, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/t;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 389
    iget-object v0, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v1, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/t;->b(Landroid/content/Context;Z)V

    .line 390
    iget-object v0, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v1, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/tapjoy/internal/t;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/r;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :goto_0
    monitor-exit p0

    return-void

    .line 392
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tapjoy/internal/r;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 394
    iget-object v0, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/r;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 396
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    const/16 v1, 0xbb8

    invoke-interface {v0, p1, v1}, Lcom/tapjoy/internal/t;->b(Landroid/content/Context;I)V

    .line 292
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    iget-object v0, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v1, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/t;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/r;->e(Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v2, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/tapjoy/internal/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object p1, v2, v5

    aput-object v0, v2, v6

    .line 158
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/r;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v2, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/tapjoy/internal/t;->d(Landroid/content/Context;)I

    move-result v1

    .line 165
    iget-object v2, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tapjoy/internal/ae;->a(Landroid/content/Context;)I

    move-result v2

    .line 166
    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_2

    .line 167
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    .line 169
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/r;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v2, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/tapjoy/internal/t;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 176
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/r;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_3
    invoke-direct {p0}, Lcom/tapjoy/internal/r;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 182
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object v0, v1, v5

    .line 183
    iget-object v1, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/internal/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_4
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object v0, v1, v5

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v1, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/r;->a(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 298
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 299
    const-string v3, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 300
    const-string v2, "registration_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    const-string v3, "unregistered"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    const-string v4, "error"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    if-eqz v2, :cond_3

    .line 305
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 309
    const-string v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3461
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/r;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_2
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    iget-boolean v2, p0, Lcom/tapjoy/internal/r;->c:Z

    if-nez v2, :cond_3

    .line 320
    iput-boolean v1, p0, Lcom/tapjoy/internal/r;->c:Z

    .line 321
    invoke-virtual {p0}, Lcom/tapjoy/internal/r;->a()Z

    move v0, v1

    .line 322
    goto :goto_0

    .line 327
    :cond_3
    if-eqz v3, :cond_4

    .line 1403
    iget-object v2, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v3, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/tapjoy/internal/t;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1406
    iget-object v3, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/r;->a(Landroid/content/Context;)V

    .line 1407
    iget-object v3, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v4, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v3, v4, v0}, Lcom/tapjoy/internal/t;->b(Landroid/content/Context;Z)V

    .line 1408
    iget-object v3, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v4, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Lcom/tapjoy/internal/t;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1409
    iget-object v3, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v4, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v3, v4, v1}, Lcom/tapjoy/internal/t;->a(Landroid/content/Context;Z)V

    .line 1410
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/r;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_4
    if-eqz v4, :cond_0

    .line 1417
    const-string v2, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1418
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/r;->c(Ljava/lang/String;)Z

    move-result v2

    .line 1432
    :goto_1
    if-eqz v2, :cond_5

    .line 1441
    iget-object v2, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v3, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/tapjoy/internal/t;->g(Landroid/content/Context;)I

    move-result v2

    .line 1442
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1443
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1444
    iget-object v4, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1445
    iget-object v4, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-static {v4, v0, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1446
    iget-object v0, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    .line 2048
    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1447
    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v2

    add-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1451
    const v0, 0x36ee80

    if-ge v2, v0, :cond_5

    .line 1452
    iget-object v0, p0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v3, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    mul-int/lit8 v2, v2, 0x2

    invoke-interface {v0, v3, v2}, Lcom/tapjoy/internal/t;->b(Landroid/content/Context;I)V

    :cond_5
    :goto_2
    move v0, v1

    .line 335
    goto/16 :goto_0

    .line 1419
    :cond_6
    iget-boolean v2, p0, Lcom/tapjoy/internal/r;->c:Z

    if-nez v2, :cond_7

    .line 1420
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/r;->c(Ljava/lang/String;)Z

    .line 1423
    iput-boolean v1, p0, Lcom/tapjoy/internal/r;->c:Z

    .line 1424
    invoke-virtual {p0}, Lcom/tapjoy/internal/r;->a()Z

    goto :goto_2

    .line 1429
    :cond_7
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/r;->d(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 340
    :cond_8
    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 341
    const-string v2, "message_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    if-eqz v2, :cond_a

    .line 2363
    const-string v3, "deleted_messages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2364
    const-string v2, "total_deleted"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2365
    if-eqz v2, :cond_0

    .line 2367
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2368
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2369
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/r;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2371
    :catch_0
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    goto/16 :goto_0

    .line 2375
    :cond_9
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    goto/16 :goto_0

    .line 3359
    :cond_a
    iget-object v0, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/r;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    goto/16 :goto_0

    .line 350
    :cond_b
    const-string v3, "com.google.android.gcm.intent.RETRY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3458
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 3459
    if-eqz v2, :cond_c

    iget-object v3, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 3460
    :cond_c
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    goto/16 :goto_0

    .line 3465
    :cond_d
    invoke-virtual {p0}, Lcom/tapjoy/internal/r;->a()Z

    move v0, v1

    .line 351
    goto/16 :goto_0

    .line 353
    :cond_e
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    goto/16 :goto_0
.end method
