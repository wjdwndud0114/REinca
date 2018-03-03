.class public Lcom/igaworks/adpopcorn/cores/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igaworks/adpopcorn/cores/c/a$c;
.implements Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;
.implements Lcom/igaworks/interfaces/ICommonAPCallbackListener;


# static fields
.field public static a:Z

.field private static o:Lcom/igaworks/adpopcorn/cores/d;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Lcom/igaworks/adpopcorn/cores/c;

.field private g:Lcom/igaworks/adpopcorn/interfaces/IAdPOPcornEventListener;

.field private h:Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;

.field private i:Lcom/igaworks/adpopcorn/cores/d/b/b;

.field private j:Lcom/igaworks/adpopcorn/cores/d/a/a;

.field private k:Lcom/igaworks/adpopcorn/cores/d/b/c;

.field private l:Z

.field private m:Z

.field private n:Lcom/igaworks/impl/CommonFrameworkImpl;

.field private p:Lcom/igaworks/adpopcorn/cores/common/f;

.field private q:Lcom/igaworks/adpopcorn/cores/c/a;

.field private r:Lcom/igaworks/adpopcorn/activity/b/d$b;

.field private s:I

.field private t:Ljava/util/List;

.field private u:I

.field private v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

.field private w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/igaworks/adpopcorn/cores/c;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IGAW_ADPOPCORN"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->b:Ljava/lang/String;

    const-string v0, "IGAW_ADPOPCORN_CLIENT_REWARD"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->c:Ljava/lang/String;

    const-string v0, "IGAW_VIDEO_AD"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->g:Lcom/igaworks/adpopcorn/interfaces/IAdPOPcornEventListener;

    iput-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->h:Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;

    new-instance v0, Lcom/igaworks/adpopcorn/cores/d/b/b;

    invoke-direct {v0}, Lcom/igaworks/adpopcorn/cores/d/b/b;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->i:Lcom/igaworks/adpopcorn/cores/d/b/b;

    new-instance v0, Lcom/igaworks/adpopcorn/cores/d/a/a;

    invoke-direct {v0}, Lcom/igaworks/adpopcorn/cores/d/a/a;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->j:Lcom/igaworks/adpopcorn/cores/d/a/a;

    new-instance v0, Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-direct {v0}, Lcom/igaworks/adpopcorn/cores/d/b/c;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/d;->l:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/d;->m:Z

    iput v1, p0, Lcom/igaworks/adpopcorn/cores/d;->s:I

    iput v1, p0, Lcom/igaworks/adpopcorn/cores/d;->u:I

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    sput-object p0, Lcom/igaworks/adpopcorn/cores/d;->o:Lcom/igaworks/adpopcorn/cores/d;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkFactory;->getCommonFramework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v0

    check-cast v0, Lcom/igaworks/impl/CommonFrameworkImpl;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->n:Lcom/igaworks/impl/CommonFrameworkImpl;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->n:Lcom/igaworks/impl/CommonFrameworkImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->n:Lcom/igaworks/impl/CommonFrameworkImpl;

    invoke-virtual {v0, p0}, Lcom/igaworks/impl/CommonFrameworkImpl;->setCommonAPCallbackListener(Lcom/igaworks/interfaces/ICommonAPCallbackListener;)V

    :cond_0
    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/common/f;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->p:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->p:Lcom/igaworks/adpopcorn/cores/common/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->p:Lcom/igaworks/adpopcorn/cores/common/f;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/common/f;->a()V

    :cond_1
    :try_start_0
    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->i:Lcom/igaworks/adpopcorn/cores/d/b/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/igaworks/adpopcorn/cores/d/b/b;

    invoke-direct {v0}, Lcom/igaworks/adpopcorn/cores/d/b/b;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->i:Lcom/igaworks/adpopcorn/cores/d/b/b;

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->i:Lcom/igaworks/adpopcorn/cores/d/b/b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/c;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->j:Lcom/igaworks/adpopcorn/cores/d/a/a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/igaworks/adpopcorn/cores/d/a/a;

    invoke-direct {v0}, Lcom/igaworks/adpopcorn/cores/d/a/a;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->j:Lcom/igaworks/adpopcorn/cores/d/a/a;

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->j:Lcom/igaworks/adpopcorn/cores/d/a/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adpopcorn sdk version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/igaworks/adpopcorn/cores/common/APUpdateLog;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " thirdparty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adpopcorn sdk app key : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/igaworks/adpopcorn/cores/d;->o:Lcom/igaworks/adpopcorn/cores/d;

    if-nez v0, :cond_8

    new-instance v4, Lcom/igaworks/adpopcorn/cores/c;

    invoke-direct {v4, p0}, Lcom/igaworks/adpopcorn/cores/c;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x80

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "igaworks_app_key"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "igaworks_app_key"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/igaworks/adpopcorn/cores/c;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "igaworks_hash_key"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "igaworks_hash_key"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/igaworks/adpopcorn/cores/c;->e(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "igaworks_market_info"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "igaworks_market_info"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/igaworks/adpopcorn/cores/c;->a(Ljava/lang/String;)V

    :cond_2
    const-string v0, ""

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "igaworks_reward_server_type"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "igaworks_reward_server_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_9

    const-string v3, "client"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_9

    :try_start_1
    const-string v0, "IGAW_QA"

    const-string v3, "adpopcron sdk reward type : sdk(client)"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move v0, v1

    :goto_0
    new-instance v3, Lcom/igaworks/adpopcorn/cores/d;

    invoke-direct {v3, p0, v4}, Lcom/igaworks/adpopcorn/cores/d;-><init>(Landroid/content/Context;Lcom/igaworks/adpopcorn/cores/c;)V

    sput-object v3, Lcom/igaworks/adpopcorn/cores/d;->o:Lcom/igaworks/adpopcorn/cores/d;

    if-eqz v0, :cond_4

    sget-object v3, Lcom/igaworks/adpopcorn/cores/d;->o:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v3, v0}, Lcom/igaworks/adpopcorn/cores/d;->b(Z)V

    :cond_4
    sget-object v0, Lcom/igaworks/adpopcorn/cores/d;->o:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v0, p0}, Lcom/igaworks/adpopcorn/cores/d;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/igaworks/adpopcorn/cores/d;->o:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v0, p0}, Lcom/igaworks/adpopcorn/cores/d;->c(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_2
    const-string v0, "com.skt.skaf.A000Z00040"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    :try_start_3
    const-string v0, "com.kt.olleh.storefront"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v1

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    :try_start_4
    const-string v0, "com.kt.olleh.istore"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move v0, v1

    :cond_6
    :goto_3
    if-nez v0, :cond_7

    :try_start_5
    const-string v0, "com.lguplus.appstore"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move v0, v1

    :cond_7
    :goto_4
    if-nez v0, :cond_a

    :try_start_6
    const-string v0, "android.lgt.appstore"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_5
    invoke-virtual {v4, v1}, Lcom/igaworks/adpopcorn/cores/c;->b(Z)V

    :cond_8
    sget-object v0, Lcom/igaworks/adpopcorn/cores/d;->o:Lcom/igaworks/adpopcorn/cores/d;

    return-object v0

    :cond_9
    :try_start_7
    const-string v0, "IGAW_QA"

    const-string v3, "reward server type : server"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v2

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_2

    :catch_3
    move-exception v0

    move v0, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move v0, v2

    goto :goto_4

    :catch_5
    move-exception v0

    move v1, v2

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v3, v0

    move v0, v1

    goto :goto_6

    :cond_a
    move v1, v0

    goto :goto_5
.end method

.method private a(Landroid/content/Context;Lcom/igaworks/adpopcorn/cores/model/e;)V
    .locals 24

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->b()D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->i()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->j()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->a()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->m()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->o()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->p()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->n()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->q()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->r()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->s()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v23}, Lcom/igaworks/adpopcorn/cores/d;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/d;->w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/d;->w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;

    invoke-interface {v2}, Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;->OnShowVideoAdSuccess()V

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/igaworks/adpopcorn/cores/d;->u:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/d;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/igaworks/adpopcorn/cores/d;->u:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/igaworks/adpopcorn/cores/common/APVideoError;

    const/16 v3, 0x138d

    const-string v4, "All loaded video shown"

    invoke-direct {v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/APVideoError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    invoke-interface {v3, v2}, Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;->OnLoadVideoAdFailure(Lcom/igaworks/adpopcorn/cores/common/APVideoError;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const-string v2, "show_video_ad"

    invoke-virtual/range {p2 .. p2}, Lcom/igaworks/adpopcorn/cores/model/e;->k()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/igaworks/adpopcorn/cores/d;->u:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/igaworks/adpopcorn/cores/d;->u:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    invoke-interface {v2}, Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;->OnLoadVideoAdSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/cores/d;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/cores/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/igaworks/adpopcorn/cores/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-class v3, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cKey"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ptid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "averageRating"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "landscapeImageURL"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "clickAction"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "campaignDescription"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "iconImageURL"

    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "campaignName"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "numberOfDownloads"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "redirectURL"

    move-object/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "videoURL"

    move-object/from16 v0, p12

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ADType"

    move/from16 v0, p13

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "AutoRedirect"

    move/from16 v0, p14

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromVideoAPI"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "rewardName"

    move-object/from16 v0, p15

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "skipAllowSeconds"

    move/from16 v0, p16

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "videoImpressionURL"

    move-object/from16 v0, p17

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "moreClickReportURL"

    move-object/from16 v0, p18

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PartiTypeCode"

    move/from16 v0, p19

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "campaignCondition"

    move-object/from16 v0, p20

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d/b/c;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d/b/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->j:Lcom/igaworks/adpopcorn/cores/d/a/a;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v1, 0x10

    const-string v2, "https://rpi.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/clientcompletereward"

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v2, "IGAW_ADPOPCORN_CLIENT_REWARD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendCompleteClientRewardRequestForUnity Exception - \n "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/cores/d;->k()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->p:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bc:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v2, ""

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v3, "IGAW_VIDEO_AD"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "callbackLoadVideoAd httpString : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v1, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Result"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Result"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_1
    :try_start_2
    const-string v4, "ResultCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "ResultCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    const-string v4, "ResultMsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "ResultMsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    move-object v6, v2

    move v2, v1

    move v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/b/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->t:Ljava/util/List;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->t:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    invoke-interface {v0}, Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;->OnLoadVideoAdSuccess()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;

    const/16 v1, 0x270f

    const-string v2, "Unknwon excepton"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/common/APVideoError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    invoke-interface {v1, v0}, Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;->OnLoadVideoAdFailure(Lcom/igaworks/adpopcorn/cores/common/APVideoError;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move v1, v0

    :goto_3
    move-object v6, v2

    move v2, v1

    move v1, v0

    move-object v0, v6

    goto :goto_2

    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/igaworks/adpopcorn/cores/common/APVideoError;

    invoke-direct {v2, v1, v0}, Lcom/igaworks/adpopcorn/cores/common/APVideoError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    invoke-interface {v0, v2}, Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;->OnLoadVideoAdFailure(Lcom/igaworks/adpopcorn/cores/common/APVideoError;)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/igaworks/adpopcorn/cores/common/APVideoError;

    invoke-direct {v2, v1, v0}, Lcom/igaworks/adpopcorn/cores/common/APVideoError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    invoke-interface {v0, v2}, Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;->OnLoadVideoAdFailure(Lcom/igaworks/adpopcorn/cores/common/APVideoError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v3

    goto :goto_3

    :cond_5
    move-object v6, v2

    move v2, v1

    move v1, v0

    move-object v0, v6

    goto :goto_2

    :cond_6
    move v1, v0

    goto/16 :goto_1
.end method

.method private d(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 14

    const/16 v12, 0x7d0

    const/16 v11, 0x3e7

    const/16 v10, 0x270f

    const/4 v3, 0x0

    const/4 v9, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/cores/d;->k()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->p:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bc:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/igaworks/adpopcorn/cores/d;->u:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_f

    iput v3, p0, Lcom/igaworks/adpopcorn/cores/d;->u:I

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;

    const/16 v1, 0x138d

    const-string v2, "All loaded video shown"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/common/APVideoError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    invoke-interface {v1, v0}, Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;->OnLoadVideoAdFailure(Lcom/igaworks/adpopcorn/cores/common/APVideoError;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz p1, :cond_e

    :try_start_1
    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v1, "IGAW_VIDEO_AD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "return string = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, ""

    const-string v2, ""

    const-string v1, ""

    const-string v7, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "Result"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "Result"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "Result"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    :goto_2
    :try_start_3
    const-string v5, "RedirectURL"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "RedirectURL"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "RedirectURL"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    move-object v5, v4

    :goto_3
    :try_start_4
    const-string v4, "Auth"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "Auth"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "Auth"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v2

    move-object v4, v2

    :goto_4
    :try_start_5
    const-string v2, "ResultCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "ResultCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "ResultCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v2

    :goto_5
    :try_start_6
    const-string v8, "VideoImpressionURL"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "VideoImpressionURL"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "VideoImpressionURL"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v8, "MoreClickReportURL"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "MoreClickReportURL"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "MoreClickReportURL"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v0

    move-object v13, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v13

    :goto_6
    if-eqz v6, :cond_a

    :try_start_7
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->t:Ljava/util/List;

    iget v6, p0, Lcom/igaworks/adpopcorn/cores/d;->u:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/model/e;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v0, v5}, Lcom/igaworks/adpopcorn/cores/model/e;->h(Ljava/lang/String;)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v0, v4}, Lcom/igaworks/adpopcorn/cores/model/e;->k(Ljava/lang/String;)V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v0, v2}, Lcom/igaworks/adpopcorn/cores/model/e;->l(Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->n(Ljava/lang/String;)V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->n(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;Lcom/igaworks/adpopcorn/cores/model/e;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->p:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bc:Ljava/lang/String;

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;

    const-string v1, "Unknwon excepton"

    invoke-direct {v0, v10, v1}, Lcom/igaworks/adpopcorn/cores/common/APVideoError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;

    invoke-interface {v1, v0}, Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;->OnShowVideoAdFailure(Lcom/igaworks/adpopcorn/cores/common/APVideoError;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v5, v4

    move v6, v3

    move-object v4, v2

    move v2, v3

    :goto_7
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    move v0, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->p:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/f;->bc:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;

    if-eqz v1, :cond_0

    const/16 v1, 0x3d4

    if-eq v0, v1, :cond_b

    if-ne v0, v11, :cond_c

    :cond_b
    new-instance v0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;

    const/16 v1, 0x3e7

    const-string v2, "Terminated or invalid campaign"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/common/APVideoError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;

    invoke-interface {v1, v0}, Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;->OnShowVideoAdFailure(Lcom/igaworks/adpopcorn/cores/common/APVideoError;)V

    goto/16 :goto_0

    :cond_c
    if-ne v0, v12, :cond_d

    new-instance v0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;

    const/16 v1, 0x7d0

    const-string v2, "Already completed campaign"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/common/APVideoError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;

    invoke-interface {v1, v0}, Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;->OnShowVideoAdFailure(Lcom/igaworks/adpopcorn/cores/common/APVideoError;)V

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;

    const/16 v1, 0x270f

    const-string v2, "Unknwon excepton"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/common/APVideoError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;

    invoke-interface {v1, v0}, Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;->OnShowVideoAdFailure(Lcom/igaworks/adpopcorn/cores/common/APVideoError;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->p:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bc:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;

    const/16 v1, 0x270f

    const-string v2, "Unknwon excepton"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/common/APVideoError;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;

    invoke-interface {v1, v0}, Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;->OnShowVideoAdFailure(Lcom/igaworks/adpopcorn/cores/common/APVideoError;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :cond_f
    iget v0, p0, Lcom/igaworks/adpopcorn/cores/d;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/cores/d;->u:I

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    invoke-interface {v0}, Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;->OnLoadVideoAdSuccess()V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v5, v4

    move-object v4, v2

    move v2, v3

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object v4, v2

    move v2, v3

    goto/16 :goto_7

    :catch_4
    move-exception v0

    move v2, v3

    goto/16 :goto_7

    :catch_5
    move-exception v0

    goto/16 :goto_7

    :cond_10
    move v2, v3

    goto/16 :goto_5

    :cond_11
    move-object v4, v2

    goto/16 :goto_4

    :cond_12
    move-object v5, v4

    goto/16 :goto_3

    :cond_13
    move v6, v3

    goto/16 :goto_2
.end method

.method private e(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/cores/d;->k()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v1, "IGAW_ADPOPCORN"

    const-string v2, "callbackCollectAdPopcornAction timeout"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v1, "IGAW_ADPOPCORN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackCollectAdPopcornAction return string = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "Result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v1, "IGAW_ADPOPCORN"

    const-string v2, "callbackCollectAdPopcornAction success"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v2, "adpopcorn_action"

    const-string v3, "collected_action_list"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d/b/c;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d/b/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d/b/c;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->j:Lcom/igaworks/adpopcorn/cores/d/a/a;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v1, 0x10

    const-string v2, "https://rpi.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/clientcompletereward"

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v2, "IGAW_ADPOPCORN_CLIENT_REWARD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendCompleteClientRewardRequest Exception - \n "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->i:Lcom/igaworks/adpopcorn/cores/d/b/b;

    invoke-virtual {v0, p1}, Lcom/igaworks/adpopcorn/cores/d/b/b;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v1, "IGAW_ADPOPCORN_CLIENT_REWARD"

    const-string v2, "sendPendingClientRewardRequest"

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v1, 0xf

    const-string v2, "https://rpi.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/clientpendingreward"

    const-string v4, ""

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->r:Lcom/igaworks/adpopcorn/activity/b/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->r:Lcom/igaworks/adpopcorn/activity/b/d$b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$b;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->r:Lcom/igaworks/adpopcorn/activity/b/d$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public OnCommonSetUsn(Ljava/lang/String;)V
    .locals 3

    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdPopcorn OnCommonSetUsn :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/igaworks/adpopcorn/cores/d;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "IGAW_QA"

    const-string v1, "OnCommonSetUsn : usn empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->g:Lcom/igaworks/adpopcorn/interfaces/IAdPOPcornEventListener;

    if-eqz v0, :cond_0

    const-string v0, "IGAW_QA"

    const-string v1, "called onClosedOfferWallPage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->g:Lcom/igaworks/adpopcorn/interfaces/IAdPOPcornEventListener;

    invoke-interface {v0}, Lcom/igaworks/adpopcorn/interfaces/IAdPOPcornEventListener;->OnClosedOfferWallPage()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v2, "adpopcorn_sdk_flag"

    const-string v3, "exceptionPermissionList"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput p1, p0, Lcom/igaworks/adpopcorn/cores/d;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 12

    const/4 v4, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v6

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v8

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/common/f;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igaworks/adpopcorn/cores/common/f;->a()V

    invoke-static {p1}, Lcom/igaworks/adpopcorn/activity/b/d;->a(Landroid/content/Context;)I

    move-result v3

    const v1, 0x1030011

    if-ne v3, v1, :cond_1

    move v10, v4

    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_1
    new-instance v1, Lcom/igaworks/adpopcorn/activity/b/c;

    move-object v2, p1

    move-object v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/igaworks/adpopcorn/activity/b/c;-><init>(Landroid/content/Context;IZLcom/igaworks/adpopcorn/cores/common/f;DDZLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/activity/b/c;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_0
    move v4, v0

    goto :goto_1

    :cond_1
    move v10, v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;)V
    .locals 6

    :try_start_0
    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/d;->v:Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/igaworks/adpopcorn/cores/d;->u:I

    const-string v0, ""

    const-string v0, "load_video_ad"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "https://rpi-staging.adpopcorn.com/ap/v3/sdk/video/videoservice.svc/videolist"

    :goto_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-direct {v1, p1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v3, p1, v4, v5}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->b(ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "https://rpi.adpopcorn.com/ap/v3/sdk/video/videoservice.svc/videolist"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;)V
    .locals 4

    :try_start_0
    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/d;->w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/common/f;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->p:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->p:Lcom/igaworks/adpopcorn/cores/common/f;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/common/f;->a()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->t:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->t:Ljava/util/List;

    iget v1, p0, Lcom/igaworks/adpopcorn/cores/d;->u:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/model/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/e;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/cores/d;->e()V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-direct {v1, p1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "auth"

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network"

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-boolean v0, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v2, 0x12

    const-string v3, "https://rpi-staging.adpopcorn.com/ap/v3/sdk/video/videoservice.svc/joinvideocampaign"

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v2, 0x12

    const-string v3, "https://rpi.adpopcorn.com/ap/v3/sdk/video/videoservice.svc/joinvideocampaign"

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/cores/d;->k()V

    if-eqz p2, :cond_1

    new-instance v0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;

    const/16 v1, 0x270f

    const-string v2, "Unknwon excepton"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/common/APVideoError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;->OnShowVideoAdFailure(Lcom/igaworks/adpopcorn/cores/common/APVideoError;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;Lcom/igaworks/adpopcorn/cores/model/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/cores/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v2, "IGAW_ADPOPCORN_CLIENT_REWARD"

    const-string v3, "rewardItem null"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/d/b/c;->a()Z

    move-result v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/d/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/igaworks/adpopcorn/cores/d;->onGetRewardInfo(ZLjava/lang/String;[Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v1, "IGAW_ADPOPCORN_CLIENT_REWARD"

    const-string v2, "callbackGetPendingRewardItems response Null"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v2, "IGAW_ADPOPCORN_CLIENT_REWARD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "callbackGetPendingRewardItems = \n "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/d;->h:Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;

    return-void
.end method

.method public a(Lcom/igaworks/adpopcorn/interfaces/IAdPOPcornEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/d;->g:Lcom/igaworks/adpopcorn/interfaces/IAdPOPcornEventListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v0, p1}, Lcom/igaworks/adpopcorn/cores/c;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->i:Lcom/igaworks/adpopcorn/cores/d/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->i:Lcom/igaworks/adpopcorn/cores/d/b/b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/c;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v0, p1, p2}, Lcom/igaworks/adpopcorn/cores/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "igaworks_app_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->i:Lcom/igaworks/adpopcorn/cores/d/b/b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/c;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->j:Lcom/igaworks/adpopcorn/cores/d/a/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "igaworks_hash_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->i:Lcom/igaworks/adpopcorn/cores/d/b/b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/c;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->j:Lcom/igaworks/adpopcorn/cores/d/a/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v1, "IGAW_ADPOPCORN"

    const-string v2, "adbrix_start_session"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->n:Lcom/igaworks/impl/CommonFrameworkImpl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->n:Lcom/igaworks/impl/CommonFrameworkImpl;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igaworks/impl/CommonFrameworkImpl;->startSession(Landroid/content/Context;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v1, "IGAW_ADPOPCORN"

    const-string v2, "adbrix_end_session"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->n:Lcom/igaworks/impl/CommonFrameworkImpl;

    invoke-virtual {v0}, Lcom/igaworks/impl/CommonFrameworkImpl;->endSession()V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/cores/d;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;)Z
    .locals 12

    const/4 v11, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/16 v4, 0x9

    :try_start_0
    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "activity.getRequestedOrientation() : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v5, v6, v7, v8}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v5

    :cond_0
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v5

    iget-object v6, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v7, "adpopcorn_sdk_flag"

    const-string v8, "allScreenOrientation"

    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v7, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v8, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isSupportAllScreenOrientation : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", config.orientation : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9, v11}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-nez v5, :cond_5

    iget v5, v6, Landroid/content/res/Configuration;->orientation:I

    packed-switch v5, :pswitch_data_1

    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v3

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v6, "adpopcorn_sdk_flag"

    const-string v7, "landscape_sensor"

    invoke-virtual {v3, v5, v6, v7, v0}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v2

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v6, "adpopcorn_sdk_flag"

    const-string v7, "portrait_sensor"

    invoke-virtual {v2, v5, v6, v7, v1}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_3

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_5
    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_2

    goto :goto_1

    :pswitch_4
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public b()Lcom/igaworks/adpopcorn/cores/c;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string v0, "adpopcorn_parameter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "adpopcorn_sdk_usn"

    const-string v2, "__UNDEFINED__USN__"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__UNDEFINED__USN__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restoreUsn : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v1, "IGAW_ADPOPCORN_CLIENT_REWARD"

    const-string v2, "callbackOnRewardCompleted"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/cores/d;->e(Ljava/lang/String;)Lcom/igaworks/adpopcorn/cores/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/b/a;->b()Z

    move-result v1

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/b/a;->c()I

    move-result v2

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/b/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v5, "IGAW_ADPOPCORN_CLIENT_REWARD"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "callback On Reward Completed "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v4, v5, v6, v7}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/igaworks/adpopcorn/cores/d;->onDidGiveRewardItemResult(ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v2, "IGAW_ADPOPCORN_CLIENT_REWARD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "callbackOnRewardCompleted Exception - \n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v0, p1}, Lcom/igaworks/adpopcorn/cores/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/adpopcorn/cores/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v0, "impression_special_campaign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "click_special_campaign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "impression_adpopcorn_choice_campaign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "click_adpopcorn_choice_campaign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "adpopcorn"

    const-string v1, ""

    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/APUpdateLog;->SDK_VERSION:Ljava/lang/String;

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->n:Lcom/igaworks/impl/CommonFrameworkImpl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->n:Lcom/igaworks/impl/CommonFrameworkImpl;

    invoke-virtual {v2, v0, p1, v1}, Lcom/igaworks/impl/CommonFrameworkImpl;->custom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/cores/d;->l:Z

    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v0, Lcom/igaworks/adpopcorn/cores/b/b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/igaworks/adpopcorn/cores/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/b/b;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/b/b;->b()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/cores/d/b/c;->a(Z)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/b/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/cores/d/b/c;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/b/b;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/cores/d/b/c;->a(I)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/b/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/cores/d/b/c;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/b/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/cores/d/b/c;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->k:Lcom/igaworks/adpopcorn/cores/d/b/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/b/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/igaworks/adpopcorn/cores/d/b/c;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method public c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->n:Lcom/igaworks/impl/CommonFrameworkImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->n:Lcom/igaworks/impl/CommonFrameworkImpl;

    invoke-virtual {v0}, Lcom/igaworks/impl/CommonFrameworkImpl;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "adpopcorn_parameter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "adpopcorn_sdk_market"

    const-string v2, "__UNDEFINED__MARKET__"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__UNDEFINED__MARKET__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v1, "IGAW_ADPOPCORN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "collectAdpopcornAction : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", params : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "action_type"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "additional_data"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "action_timestamp"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "open_offerwall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/cores/d;->d()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, ""

    sget-boolean v0, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "https://rpi-staging.adpopcorn.com/ap/v3/sdk/behavior/behaviorservice.svc/action"

    :goto_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v3, 0x14

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v6, "action"

    invoke-virtual {v4, v5, v6, v2}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->b(ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :goto_1
    return-void

    :cond_2
    const-string v0, "https://rpi.adpopcorn.com/ap/v3/sdk/behavior/behaviorservice.svc/action"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v3, "adpopcorn_action"

    const-string v4, "collected_action_list"

    const-string v5, ""

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v3, "adpopcorn_action"

    const-string v4, "collected_action_list"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/igaworks/adpopcorn/cores/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/cores/d;->m:Z

    return-void
.end method

.method public d()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v2, "adpopcorn_action"

    const-string v3, "collected_action_list"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v2, "IGAW_ADPOPCORN"

    const-string v3, "flushAdPopcornAction activity exists"

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_0
    const-string v0, ""

    sget-boolean v0, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "https://rpi-staging.adpopcorn.com/ap/v3/sdk/behavior/behaviorservice.svc/action"

    :goto_0
    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->q:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v3, 0x14

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v6, "action"

    invoke-virtual {v4, v5, v6, v1}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->b(ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "https://rpi.adpopcorn.com/ap/v3/sdk/behavior/behaviorservice.svc/action"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public d(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const-string v0, ""

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "igaworks_reward_server_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "igaworks_reward_server_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->f()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "you should set IAdPOPcornRewardItemCallbackListener. Because \'igaworks_reward_server_type\' property is set \'client\' in your \'AndroidManifest.xml\'"

    const-string v2, "Environment setting fail"

    invoke-static {p1, v2, v0, v1, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    invoke-static {v1, p1}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v1, "IGAW_ADPOPCORN_CLIENT_REWARD"

    const-string v2, "didGiveRewardItem"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/igaworks/adpopcorn/cores/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    new-instance v2, Lcom/igaworks/adpopcorn/cores/d$1;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/adpopcorn/cores/d$1;-><init>(Lcom/igaworks/adpopcorn/cores/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v2, "IGAW_ADPOPCORN_CLIENT_REWARD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "didGiveRewardItem Exception - \n "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v1, "IGAW_ADPOPCORN_CLIENT_REWARD"

    const-string v2, "didGiveRewardItemForUnity"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    new-instance v2, Lcom/igaworks/adpopcorn/cores/d$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/igaworks/adpopcorn/cores/d$2;-><init>(Lcom/igaworks/adpopcorn/cores/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v2, "IGAW_ADPOPCORN_CLIENT_REWARD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "didGiveRewardItemForUnity Exception - \n "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;)Lcom/igaworks/adpopcorn/cores/b/a;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP JSON Response = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v3, "IGAW_ADPOPCORN_CLIENT_REWARD"

    const/4 v4, 0x2

    invoke-static {v2, v3, v1, v0, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;I)V

    new-instance v0, Lcom/igaworks/adpopcorn/cores/b/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/igaworks/adpopcorn/cores/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/b/a;->a()I

    return-object v0
.end method

.method public e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/b/d$b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->r:Lcom/igaworks/adpopcorn/activity/b/d$b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->r:Lcom/igaworks/adpopcorn/activity/b/d$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$b;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->r:Lcom/igaworks/adpopcorn/activity/b/d$b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$b;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->h:Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/d;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/cores/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->f:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/cores/d;->f(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    new-instance v2, Lcom/igaworks/adpopcorn/cores/d$3;

    invoke-direct {v2, p0}, Lcom/igaworks/adpopcorn/cores/d$3;-><init>(Lcom/igaworks/adpopcorn/cores/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public h()I
    .locals 5

    iget v0, p0, Lcom/igaworks/adpopcorn/cores/d;->s:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d;->e:Landroid/content/Context;

    const-string v2, "adpopcorn_sdk_flag"

    const-string v3, "exceptionPermissionList"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/igaworks/adpopcorn/cores/d;->s:I

    goto :goto_0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->w:Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;

    invoke-interface {v0}, Lcom/igaworks/adpopcorn/interfaces/IAPShowVideoAdEventListener;->OnVideoAdClose()V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/d;->m:Z

    return v0
.end method

.method public onDidGiveRewardItemResult(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->h:Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->h:Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;->onDidGiveRewardItemResult(ZLjava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetRewardInfo(ZLjava/lang/String;[Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;)V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->h:Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d;->h:Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/igaworks/adpopcorn/interfaces/IAPClientRewardCallbackListener;->onGetRewardInfo(ZLjava/lang/String;[Lcom/igaworks/adpopcorn/cores/model/APClientRewardItem;)V

    :cond_0
    return-void
.end method

.method public onNetResponseListener(ILcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/cores/d;->c(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/cores/d;->d(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/cores/d;->e(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/igaworks/adpopcorn/cores/d;->a(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/igaworks/adpopcorn/cores/d;->b(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
