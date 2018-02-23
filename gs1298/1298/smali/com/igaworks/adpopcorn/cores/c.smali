.class public Lcom/igaworks/adpopcorn/cores/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/adpopcorn/cores/c$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:J

.field private final C:Ljava/lang/String;

.field private final D:Ljava/lang/String;

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private final J:Ljava/lang/String;

.field private final K:Ljava/lang/String;

.field private final L:Ljava/lang/String;

.field private final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field private final O:Ljava/lang/String;

.field private final P:Ljava/lang/String;

.field private final Q:Ljava/lang/String;

.field private final R:Ljava/lang/String;

.field private final S:Ljava/lang/String;

.field private final T:Ljava/lang/String;

.field private final U:Ljava/lang/String;

.field private final V:Ljava/lang/String;

.field private final W:Ljava/lang/String;

.field private final X:Ljava/lang/String;

.field private final Y:Ljava/lang/String;

.field private final Z:Ljava/lang/String;

.field private a:Ljava/util/Map;

.field private final aA:Ljava/lang/String;

.field private final aB:Ljava/lang/String;

.field private final aC:Ljava/lang/String;

.field private final aD:Ljava/lang/String;

.field private final aE:Ljava/lang/String;

.field private final aF:Ljava/lang/String;

.field private final aG:Ljava/lang/String;

.field private final aH:Ljava/lang/String;

.field private final aI:I

.field private final aa:Ljava/lang/String;

.field private final ab:Ljava/lang/String;

.field private final ac:Ljava/lang/String;

.field private final ad:Ljava/lang/String;

.field private final ae:Ljava/lang/String;

.field private final af:Ljava/lang/String;

.field private final ag:Ljava/lang/String;

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private final ak:Ljava/lang/String;

.field private final al:Ljava/lang/String;

.field private final am:Ljava/lang/String;

.field private final an:Ljava/lang/String;

.field private final ao:Ljava/lang/String;

.field private final ap:Ljava/lang/String;

.field private final aq:Ljava/lang/String;

.field private final ar:Ljava/lang/String;

.field private final as:Ljava/lang/String;

.field private final at:Ljava/lang/String;

.field private final au:Ljava/lang/String;

.field private final av:Ljava/lang/String;

.field private final aw:Ljava/lang/String;

.field private final ax:Ljava/lang/String;

.field private final ay:Ljava/lang/String;

.field private final az:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Lorg/json/JSONArray;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Lorg/json/JSONArray;

.field private r:F

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->a:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->i:Ljava/lang/String;

    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/APUpdateLog;->SDK_VERSION:Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->k:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->m:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c;->o:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->u:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c;->v:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->x:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c;->y:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c;->z:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c;->A:Z

    const-string v0, "app_key"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->C:Ljava/lang/String;

    const-string v0, "usn"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->D:Ljava/lang/String;

    const-string v0, "adid"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->E:Ljava/lang/String;

    const-string v0, "network"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->F:Ljava/lang/String;

    const-string v0, "carrier"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->G:Ljava/lang/String;

    const-string v0, "model"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->H:Ljava/lang/String;

    const-string v0, "manufacturer"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->I:Ljava/lang/String;

    const-string v0, "os_version"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->J:Ljava/lang/String;

    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->K:Ljava/lang/String;

    const-string v0, "width"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->L:Ljava/lang/String;

    const-string v0, "height"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->M:Ljava/lang/String;

    const-string v0, "country"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->N:Ljava/lang/String;

    const-string v0, "language"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->O:Ljava/lang/String;

    const-string v0, "use_google_account"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->P:Ljava/lang/String;

    const-string v0, "google_account_list"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->Q:Ljava/lang/String;

    const-string v0, "has_one_store"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->R:Ljava/lang/String;

    const-string v0, "one_store_account_list"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->S:Ljava/lang/String;

    const-string v0, "utc_offset"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->T:Ljava/lang/String;

    const-string v0, "page_idx"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->U:Ljava/lang/String;

    const-string v0, "participated_ckey"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->V:Ljava/lang/String;

    const-string v0, "platform"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->W:Ljava/lang/String;

    const-string v0, "market"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->X:Ljava/lang/String;

    const-string v0, "android_opt_out_enabled"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->Y:Ljava/lang/String;

    const-string v0, "age"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->Z:Ljava/lang/String;

    const-string v0, "gender"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->aa:Ljava/lang/String;

    const-string v0, "sign_1"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->ab:Ljava/lang/String;

    const-string v0, "sign_2"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->ac:Ljava/lang/String;

    const-string v0, "sign_3"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->ad:Ljava/lang/String;

    const-string v0, "timestamp"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->ae:Ljava/lang/String;

    const-string v0, "imei_sha1"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->af:Ljava/lang/String;

    const-string v0, "installer"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->ag:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c;->ah:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c;->ai:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c;->aj:Z

    const-string v0, "com.androVM.vmconfig"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->ak:Ljava/lang/String;

    const-string v0, "com.cyanogenmod.filemanager"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->al:Ljava/lang/String;

    const-string v0, "com.google.android.launcher.layouts.genymotion"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->am:Ljava/lang/String;

    const-string v0, "me.onemobile.android"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->an:Ljava/lang/String;

    const-string v0, "com.pop.store"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->ao:Ljava/lang/String;

    const-string v0, "com.bluestacks.setup"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->ap:Ljava/lang/String;

    const-string v0, "com.bluestacks.bstfolder"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->aq:Ljava/lang/String;

    const-string v0, "com.bluestacks.BstCommandProcessor"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->ar:Ljava/lang/String;

    const-string v0, "com.bluestacks.home"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->as:Ljava/lang/String;

    const-string v0, "org.greatfruit.andy"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->at:Ljava/lang/String;

    const-string v0, "org.greatfruit.andy.ime"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->au:Ljava/lang/String;

    const-string v0, "org.greatfruit.andy.appmonitor"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->av:Ljava/lang/String;

    const-string v0, "com.bignox.app.noxservice"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->aw:Ljava/lang/String;

    const-string v0, "/system/app"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->ax:Ljava/lang/String;

    const-string v0, "/system/priv-app"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->ay:Ljava/lang/String;

    const-string v0, "/BstFolder.apk"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->az:Ljava/lang/String;

    const-string v0, "/com.bluestacks.bstfolder.apk"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->aA:Ljava/lang/String;

    const-string v0, "/BstCommandProcessor.apk"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->aB:Ljava/lang/String;

    const-string v0, "/com.bluestacks.BstCommandProcessor.apk"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->aC:Ljava/lang/String;

    const-string v0, "/com.bluestacks.settings.apk"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->aD:Ljava/lang/String;

    const-string v0, "/system/app/ime.apk"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->aE:Ljava/lang/String;

    const-string v0, "/system/app/appmonitor.apk"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->aF:Ljava/lang/String;

    const-string v0, "/system/app/1clicksync.apk"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->aG:Ljava/lang/String;

    const-string v0, "/system/app/NoxService.apk"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->aH:Ljava/lang/String;

    const v0, 0x36ee80

    iput v0, p0, Lcom/igaworks/adpopcorn/cores/c;->aI:I

    invoke-virtual {p0, v1}, Lcom/igaworks/adpopcorn/cores/c;->c(Z)V

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c$a;

    invoke-direct {v0, p0, p1}, Lcom/igaworks/adpopcorn/cores/c$a;-><init>(Lcom/igaworks/adpopcorn/cores/c;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c$a;->start()V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/cores/c;->v:Z

    return-void
.end method

.method private a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/cores/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c;->v:Z

    return v0
.end method

.method private e(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/c;->n:Lorg/json/JSONArray;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c;->l:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-nez v1, :cond_3

    const-string v1, "IGAW_QA"

    const-string v2, "GET_ACCOUNTS PERMISSION_GRANTED"

    const/4 v3, 0x3

    invoke-static {p1, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-lt v0, v2, :cond_2

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->n:Lorg/json/JSONArray;

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/c;->n:Lorg/json/JSONArray;

    aget-object v4, v1, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/cores/common/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "IGAW_QA"

    const-string v1, "GET_ACCOUNTS PERMISSION_DENIED"

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->h()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lt v0, v4, :cond_0

    const-string v0, "IGAW_QA"

    const-string v1, "exceptionPermissionList has GET_ACCOUNT"

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c;->l:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private f(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->q:Lorg/json/JSONArray;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.one.onestore.android"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->q:Lorg/json/JSONArray;

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/c;->q:Lorg/json/JSONArray;

    aget-object v4, v1, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/cores/common/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private g(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    const-string v3, "com.androVM.vmconfig"

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.cyanogenmod.filemanager"

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.google.android.launcher.layouts.genymotion"

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "me.onemobile.android"

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.pop.store"

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "com.bluestacks.setup"

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.bluestacks.bstfolder"

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.bluestacks.BstCommandProcessor"

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.bluestacks.home"

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "org.greatfruit.andy"

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "org.greatfruit.andy.ime"

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "org.greatfruit.andy.appmonitor"

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.bignox.app.noxservice"

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xe

    new-array v3, v2, [Ljava/io/File;

    const/4 v2, 0x0

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/app"

    const-string v6, "/BstFolder.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x1

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/app"

    const-string v6, "/com.bluestacks.bstfolder.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x2

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/app"

    const-string v6, "/BstCommandProcessor.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x3

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/app"

    const-string v6, "/com.bluestacks.BstCommandProcessor.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x4

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/app"

    const-string v6, "/com.bluestacks.settings.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x5

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/priv-app"

    const-string v6, "/BstFolder.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x6

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/priv-app"

    const-string v6, "/com.bluestacks.bstfolder.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x7

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/priv-app"

    const-string v6, "/BstCommandProcessor.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v2, 0x8

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/priv-app"

    const-string v6, "/com.bluestacks.BstCommandProcessor.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v2, 0x9

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/priv-app"

    const-string v6, "/com.bluestacks.settings.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v2, 0xa

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/app/ime.apk"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v2, 0xb

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/app/appmonitor.apk"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v2, 0xc

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/app/1clicksync.apk"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v2, 0xd

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/app/NoxService.apk"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_3

    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/priv-app"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    move v2, v1

    :goto_2
    array-length v4, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v2, v4, :cond_5

    :cond_2
    :goto_3
    move v0, v1

    goto/16 :goto_0

    :cond_3
    :try_start_2
    aget-object v5, v3, v2

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-nez v5, :cond_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :try_start_3
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v5, "/BstFolder.apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "/com.bluestacks.bstfolder.apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "/BstCommandProcessor.apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "/com.bluestacks.BstCommandProcessor.apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "/com.bluestacks.settings.apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    if-nez v4, :cond_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method private j()F
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/igaworks/adpopcorn/cores/c;->r:F

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x4a5bba00    # 3600000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/igaworks/adpopcorn/cores/c;->r:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/igaworks/adpopcorn/cores/c;->r:F

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    const-string v1, "adpopcorn_parameter"

    const-string v2, "adpopcorn_sdk_age"

    const-string v3, ""

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->t:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/igaworks/adpopcorn/cores/c;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    :try_start_0
    const-string v1, "page_idx"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "participated_ckey"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/igaworks/adpopcorn/cores/c;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/igaworks/adpopcorn/cores/c;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c;->aj:Z

    if-nez v2, :cond_3

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c;->aj:Z

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c;->y:Z

    if-eqz p2, :cond_4

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/igaworks/adpopcorn/cores/d;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/cores/c;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/cores/c;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/igaworks/adpopcorn/cores/d;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1, p2}, Lcom/igaworks/adpopcorn/cores/common/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c;->y:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/cores/c;->g(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c;->z:Z

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c;->A:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/igaworks/adpopcorn/cores/c;->B:J

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c;->aj:Z

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c;->y:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "unknown"

    :cond_0
    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c;->s:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "igaworks_app_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/c;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "igaworks_hash_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/c;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "igaworks_test_country"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/c;->k:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/cores/c;->ah:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c;->ah:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    const-string v1, "adpopcorn_parameter"

    const-string v2, "adpopcorn_sdk_gender"

    const-string v3, ""

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->u:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/cores/c;->o:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "app_key"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "usn"

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/cores/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "adid"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/cores/c;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    const-string v0, "network"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->f:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_2
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->f:Ljava/lang/String;

    const-string v0, "carrier"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->g:Ljava/lang/String;

    :cond_3
    const-string v0, "model"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->h:Ljava/lang/String;

    :cond_4
    const-string v0, "manufacturer"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->i:Ljava/lang/String;

    :cond_5
    const-string v0, "os_version"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_version"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/common/a;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    const-string v2, "width"

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c;->k:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    const-string v2, "country"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    const-string v2, "language"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "use_google_account"

    iget-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c;->l:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "google_account_list"

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/cores/c;->e(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "has_one_store"

    iget-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c;->o:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "one_store_account_list"

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/cores/c;->f(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "utc_offset"

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/cores/c;->j()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "market"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c;->s:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "android_opt_out_enabled"

    iget-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c;->v:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "platform"

    const-string v2, "android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->t:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "age"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c;->t:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/igaworks/adpopcorn/cores/c;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->u:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "gender"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c;->u:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v0, "sign_1"

    iget-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c;->y:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "sign_2"

    iget-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c;->z:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "sign_3"

    iget-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c;->A:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "timestamp"

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/cores/c;->B:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "installer"

    invoke-virtual {p0, p1}, Lcom/igaworks/adpopcorn/cores/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/igaworks/adpopcorn/IgawAdpopcornAddOn;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    const-string v2, "imei_sha1"

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_5
    move-object v0, v1

    :goto_6
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    :try_start_6
    const-string v0, "usn"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_b
    :try_start_7
    const-string v0, "adpopcorn_parameter"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "google_ad_id"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    const-string v2, "adid"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "adid"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :cond_c
    :try_start_9
    const-string v0, "adid"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    :cond_d
    :try_start_a
    const-string v2, "country"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_4

    :cond_e
    :try_start_b
    const-string v0, "imei_sha1"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v0

    goto/16 :goto_2
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/cores/c;->ai:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->x:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->w:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c;->x:Ljava/lang/String;

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c;->ai:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c;->y:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c;->z:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c;->A:Z

    return v0
.end method
