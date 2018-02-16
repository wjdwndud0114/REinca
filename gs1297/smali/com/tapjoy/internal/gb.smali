.class public final Lcom/tapjoy/internal/gb;
.super Lcom/tapjoy/internal/r;
.source "SourceFile"


# static fields
.field private static c:Lcom/tapjoy/internal/gb;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/tapjoy/internal/gb$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gb$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/r;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/t;)V

    .line 153
    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 446
    if-eqz p0, :cond_1

    .line 447
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 448
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 449
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 451
    :try_start_0
    const-string v3, "drawable"

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 458
    :cond_0
    if-eqz v1, :cond_1

    .line 459
    const-string v0, "meta-data of {} invalid"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 9055
    sget-boolean v3, Lcom/tapjoy/internal/fw;->a:Z

    if-eqz v3, :cond_1

    .line 9056
    const-string v3, "Tapjoy"

    .line 9157
    const/4 v4, 0x4

    invoke-static {v4, v3, v0, v1}, Lcom/tapjoy/internal/ac;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v2

    .line 462
    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 332
    .line 3422
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/tapjoy/TapjoyReceiver;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3423
    const-string v0, "com.tapjoy.PUSH_CLICK"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3424
    const-string v0, "com.tapjoy.PUSH_ID"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3425
    if-eqz p6, :cond_0

    .line 3426
    const-string v0, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {v2, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3428
    :cond_0
    if-eqz p7, :cond_1

    .line 3429
    const-string v0, "com.tapjoy.PUSH_PLACEMENT"

    invoke-virtual {v2, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3432
    :cond_1
    const/high16 v0, 0x8000000

    .line 3435
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ne v3, v4, :cond_2

    .line 3436
    const/high16 v0, 0x10000000

    .line 3440
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p8, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 334
    if-nez v2, :cond_3

    .line 370
    :goto_0
    return-object v1

    .line 339
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 343
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 350
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    .line 351
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 355
    :cond_4
    :goto_1
    if-eqz p4, :cond_5

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    .line 360
    :cond_5
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.tapjoy.notification.icon"

    invoke-static {v0, v4, p0}, Lcom/tapjoy/internal/gb;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 361
    if-nez v0, :cond_6

    .line 362
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v0, :cond_b

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 365
    :cond_6
    :goto_2
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.tapjoy.notification.icon.large"

    invoke-static {v3, v4, p0}, Lcom/tapjoy/internal/gb;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    .line 366
    if-eqz v3, :cond_7

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4393
    :cond_7
    new-instance v3, Lcom/tapjoy/internal/a$d;

    invoke-direct {v3, p0}, Lcom/tapjoy/internal/a$d;-><init>(Landroid/content/Context;)V

    .line 5276
    iget-object v4, v3, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    iput v0, v4, Landroid/app/Notification;->icon:I

    .line 5412
    iget-object v0, v3, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 6300
    iput-object p2, v3, Lcom/tapjoy/internal/a$d;->b:Ljava/lang/CharSequence;

    .line 6308
    iput-object p3, v3, Lcom/tapjoy/internal/a$d;->c:Ljava/lang/CharSequence;

    .line 6372
    iput-object v2, v3, Lcom/tapjoy/internal/a$d;->d:Landroid/app/PendingIntent;

    .line 6538
    iget-object v0, v3, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 4399
    new-instance v0, Lcom/tapjoy/internal/a$c;

    invoke-direct {v0}, Lcom/tapjoy/internal/a$c;-><init>()V

    .line 6752
    iput-object p2, v0, Lcom/tapjoy/internal/a$c;->e:Ljava/lang/CharSequence;

    .line 6770
    iput-object p3, v0, Lcom/tapjoy/internal/a$c;->a:Ljava/lang/CharSequence;

    .line 4400
    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/a$d;->a(Lcom/tapjoy/internal/a$l;)Lcom/tapjoy/internal/a$d;

    move-result-object v0

    .line 4403
    if-eqz p5, :cond_8

    .line 7529
    iget-object v2, v0, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    const/4 v3, 0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 4406
    :cond_8
    if-eqz v1, :cond_9

    .line 8431
    iput-object v1, v0, Lcom/tapjoy/internal/a$d;->g:Landroid/graphics/Bitmap;

    .line 8612
    :cond_9
    invoke-static {}, Lcom/tapjoy/internal/a;->a()Lcom/tapjoy/internal/a$f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/internal/a$f;->a(Lcom/tapjoy/internal/a$d;)Landroid/app/Notification;

    move-result-object v1

    goto :goto_0

    .line 353
    :cond_a
    if-eqz p4, :cond_4

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    goto :goto_1

    .line 362
    :cond_b
    const v0, 0x1080093

    goto :goto_2

    .line 346
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 234
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 238
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 239
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 247
    :goto_0
    return v0

    .line 240
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 242
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/tapjoy/internal/gb;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/tapjoy/internal/gb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/gb;->c:Lcom/tapjoy/internal/gb;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/tapjoy/internal/gb;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/internal/gb;->c:Lcom/tapjoy/internal/gb;

    .line 42
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/gb;->c:Lcom/tapjoy/internal/gb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 3

    .prologue
    .line 311
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 312
    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 176
    invoke-static {p1}, Lcom/tapjoy/internal/fz;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/fz;->a(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method protected final a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 13

    .prologue
    .line 187
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    .line 188
    const-string v0, "fiverocks"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_8

    .line 190
    invoke-static {p1}, Lcom/tapjoy/internal/gc;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gc;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {p1}, Lcom/tapjoy/internal/fz;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fz;

    move-result-object v0

    .line 1291
    iget-object v0, v0, Lcom/tapjoy/internal/fz;->g:Lcom/tapjoy/internal/fy;

    .line 2210
    sget-object v2, Lcom/tapjoy/internal/eb;->APP:Lcom/tapjoy/internal/eb;

    const-string v3, "push_ignore"

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;

    move-result-object v2

    .line 2211
    new-instance v3, Lcom/tapjoy/internal/ef;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v1}, Lcom/tapjoy/internal/ef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/tapjoy/internal/dy$a;->s:Lcom/tapjoy/internal/ef;

    .line 2212
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/dy$a;)V

    .line 192
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    .line 195
    :cond_0
    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    if-eqz v3, :cond_4

    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 199
    const-string v0, "rich"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 200
    const-string v0, "sound"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 201
    const-string v0, "important"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 202
    const-string v0, "payload"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 204
    const-string v0, "always"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    .line 207
    :goto_1
    const-string v2, "repeatable"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 208
    const-string v7, "true"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    const/4 v2, 0x1

    move v9, v2

    .line 210
    :goto_2
    const-string v2, "placement"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 212
    const-string v2, "nid"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/gb;->b(Ljava/lang/Object;)I

    move-result v8

    .line 214
    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/tapjoy/internal/fz;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fz;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 216
    :cond_3
    invoke-static {v4}, Lcom/tapjoy/internal/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v10}, Lcom/tapjoy/internal/gb;->a(Ljava/lang/Object;)Z

    move-result v4

    .line 218
    invoke-static {v11}, Lcom/tapjoy/internal/gb;->a(Ljava/lang/Object;)Z

    move-result v5

    .line 219
    invoke-static {v12}, Lcom/tapjoy/internal/gb;->a(Ljava/lang/Object;)Z

    move-object v0, p1

    .line 215
    invoke-static/range {v0 .. v8}, Lcom/tapjoy/internal/gb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v2

    .line 223
    invoke-static {p1}, Lcom/tapjoy/internal/fz;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fz;

    move-result-object v0

    .line 2298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2306
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fz;->b(Landroid/content/Context;)V

    .line 2307
    iget-object v3, v0, Lcom/tapjoy/internal/fz;->f:Lcom/tapjoy/internal/gc;

    invoke-virtual {v3, v1, v4, v5, v9}, Lcom/tapjoy/internal/gc;->a(Ljava/lang/String;JZ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2308
    iget-object v0, v0, Lcom/tapjoy/internal/fz;->g:Lcom/tapjoy/internal/fy;

    .line 3216
    sget-object v3, Lcom/tapjoy/internal/eb;->APP:Lcom/tapjoy/internal/eb;

    const-string v4, "push_show"

    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;

    move-result-object v3

    .line 3217
    new-instance v4, Lcom/tapjoy/internal/ef;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v1}, Lcom/tapjoy/internal/ef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/tapjoy/internal/dy$a;->s:Lcom/tapjoy/internal/ef;

    .line 3218
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/dy$a;)V

    .line 2309
    const/4 v0, 0x1

    .line 223
    :goto_3
    if-eqz v0, :cond_4

    .line 3413
    const-string v0, "notification"

    .line 3414
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3415
    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 228
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 205
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 208
    :cond_6
    const/4 v2, 0x0

    move v9, v2

    goto :goto_2

    .line 2311
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 230
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 181
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 182
    invoke-virtual {p0}, Lcom/tapjoy/internal/gb;->a()Z

    .line 183
    return-void
.end method

.method protected final c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 316
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 317
    return v2
.end method

.method protected final d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 322
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 323
    return v1
.end method

.method final e(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    .line 1129
    iget-object v1, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-super {p0, v1}, Lcom/tapjoy/internal/r;->a(Landroid/content/Context;)V

    .line 1267
    aget-object v0, v0, v2

    .line 1130
    invoke-super {p0, v0}, Lcom/tapjoy/internal/r;->a(Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method
